namespace JassSyntaxAnalyzer
{
    public class Binder
    {
        private readonly DiagnosticBag _diagnostics = new();
        private readonly SymbolTable _globals = new();
        private readonly Dictionary<string, FunctionSymbol> _functions = new();
        private readonly Dictionary<string, Symbol> _nativeFunctions = new();
        private readonly Dictionary<string, TypeSymbol> _types = new();
        private readonly Dictionary<string, GlobalSymbol> _globalVars = new();

        public IReadOnlyList<Diagnostic> Diagnostics => _diagnostics.Diagnostics;

        public void Bind(CompilationUnitSyntax compilationUnit)
        {
            // Pass 1: collect declarations
            foreach (var decl in compilationUnit.Declarations)
            {
                switch (decl)
                {
                    case TypeDeclarationSyntax typeDecl:
                        BindTypeDeclaration(typeDecl);
                        break;
                    case NativeDeclarationSyntax nativeDecl:
                        BindNativeDeclaration(nativeDecl);
                        break;
                }
            }

            foreach (var decl in compilationUnit.Declarations)
            {
                switch (decl)
                {
                    case GlobalsDeclarationSyntax globalsDecl:
                        BindGlobalsDeclaration(globalsDecl);
                        break;
                    case FunctionDeclarationSyntax funcDecl:
                        BindFunctionDeclaration(funcDecl);
                        break;
                }
            }

            // Pass 2: check function bodies
            foreach (var decl in compilationUnit.Declarations)
            {
                if (decl is FunctionDeclarationSyntax funcDecl)
                    CheckFunctionBody(funcDecl);
            }
        }

        private void BindTypeDeclaration(TypeDeclarationSyntax decl)
        {
            var name = decl.Identifier.Text;
            if (_types.ContainsKey(name))
                _diagnostics.Add($"Duplicate type '{name}'", decl.Identifier.Line, decl.Identifier.Column);
            else
                _types[name] = new TypeSymbol(name, decl.ParentType.Text);
        }

        private void BindNativeDeclaration(NativeDeclarationSyntax decl)
        {
            var name = decl.Identifier.Text;
            if (_nativeFunctions.ContainsKey(name))
                _diagnostics.Add($"Duplicate native '{name}'", decl.Identifier.Line, decl.Identifier.Column);
            else
            {
                var @params = decl.Parameters.Items
                    .Select(p => new ParameterSymbol(p.Identifier.Text, p.TypeKeyword.Text))
                    .ToList();
                _nativeFunctions[name] = new NativeSymbol(name, decl.ReturnType.Text, @params);
            }
        }

        private void BindGlobalsDeclaration(GlobalsDeclarationSyntax decl)
        {
            foreach (var g in decl.Globals)
            {
                var name = g.Identifier.Text;
                if (_globalVars.ContainsKey(name))
                    _diagnostics.Add($"Duplicate global variable '{name}'", g.Identifier.Line, g.Identifier.Column);
                else
                    _globalVars[name] = new GlobalSymbol(name, g.TypeKeyword.Text, g.ConstantKeyword != null);
            }
        }

        private void BindFunctionDeclaration(FunctionDeclarationSyntax decl)
        {
            var name = decl.Identifier.Text;
            if (_functions.ContainsKey(name))
                _diagnostics.Add($"Duplicate function '{name}'", decl.Identifier.Line, decl.Identifier.Column);
            else
            {
                var @params = decl.Parameters.Items
                    .Select(p => new ParameterSymbol(p.Identifier.Text, p.TypeKeyword.Text))
                    .ToList();
                _functions[name] = new FunctionSymbol(name, decl.ReturnType.Text, @params, decl);
            }
        }

        private void CheckFunctionBody(FunctionDeclarationSyntax func)
        {
            var scope = new SymbolTable(null);

            // Add parameters to scope
            foreach (var p in func.Parameters.Items)
                scope.Add(new LocalSymbol(p.Identifier.Text, p.TypeKeyword.Text));

            CheckBlock(func.Body, scope, func.ReturnType.Text);
        }

        private void CheckBlock(BlockStatementSyntax block, SymbolTable scope, string expectedReturnType)
        {
            foreach (var stmt in block.Statements)
                CheckStatement(stmt, scope, expectedReturnType);
        }

        private void CheckStatement(StatementSyntax stmt, SymbolTable scope, string expectedReturnType)
        {
            switch (stmt)
            {
                case LocalDeclarationStatementSyntax localDecl:
                    var name = localDecl.Identifier.Text;
                    if (scope.LookupLocal(name) != null)
                        _diagnostics.Add($"Duplicate local variable '{name}'", localDecl.Identifier.Line, localDecl.Identifier.Column);
                    else
                        scope.Add(new LocalSymbol(name, localDecl.TypeKeyword.Text));
                    if (localDecl.Initializer != null)
                        CheckExpression(localDecl.Initializer, scope);
                    break;

                case SetStatementSyntax setStmt:
                    var targetName = setStmt.Identifier.Text;
                    if (scope.Lookup(targetName) == null && !_globalVars.ContainsKey(targetName))
                        _diagnostics.Add($"Undefined variable '{targetName}'", setStmt.Identifier.Line, setStmt.Identifier.Column);
                    if (setStmt.Index != null)
                        CheckExpression(setStmt.Index, scope);
                    CheckExpression(setStmt.Value, scope);
                    break;

                case CallStatementSyntax callStmt:
                    CheckCall(callStmt.Identifier, callStmt.Arguments, scope, callStmt.Identifier.Line, callStmt.Identifier.Column);
                    break;

                case IfStatementSyntax ifStmt:
                    CheckExpression(ifStmt.Condition, scope);
                    var innerScope = scope.CreateChild();
                    CheckStatement(ifStmt.ThenBody, innerScope, expectedReturnType);
                    if (ifStmt.ElseBody != null)
                        CheckStatement(ifStmt.ElseBody, innerScope, expectedReturnType);
                    break;

                case LoopStatementSyntax loopStmt:
                    var loopScope = scope.CreateChild();
                    foreach (var s in loopStmt.Body)
                        CheckStatement(s, loopScope, expectedReturnType);
                    foreach (var ew in loopStmt.ExitWhens)
                        CheckExpression(ew.Condition, loopScope);
                    break;

                case ReturnStatementSyntax retStmt:
                    if (retStmt.Expression != null)
                        CheckExpression(retStmt.Expression, scope);
                    break;

                case BlockStatementSyntax blockStmt:
                    CheckBlock(blockStmt, scope.CreateChild(), expectedReturnType);
                    break;

                default:
                    break;
            }
        }

        private void CheckExpression(ExpressionSyntax expr, SymbolTable scope)
        {
            switch (expr)
            {
                case LiteralExpressionSyntax:
                    break;

                case IdentifierExpressionSyntax idExpr:
                    var idName = idExpr.Identifier.Text;
                    if (scope.Lookup(idName) == null && !_globalVars.ContainsKey(idName) && !_functions.ContainsKey(idName))
                        _diagnostics.Add($"Undefined identifier '{idName}'", idExpr.Identifier.Line, idExpr.Identifier.Column);
                    break;

                case BinaryExpressionSyntax binExpr:
                    CheckExpression(binExpr.Left, scope);
                    CheckExpression(binExpr.Right, scope);
                    break;

                case UnaryExpressionSyntax unExpr:
                    CheckExpression(unExpr.Operand, scope);
                    break;

                case FunctionCallExpressionSyntax callExpr:
                    CheckCall(callExpr.Identifier, callExpr.Arguments, scope, callExpr.Identifier.Line, callExpr.Identifier.Column);
                    break;

                case ArrayAccessExpressionSyntax arrExpr:
                    CheckExpression(arrExpr.Array, scope);
                    CheckExpression(arrExpr.Index, scope);
                    break;

                case ParenthesizedExpressionSyntax parenExpr:
                    CheckExpression(parenExpr.Expression, scope);
                    break;
            }
        }

        private void CheckCall(SyntaxToken identifier, SeparatedList<ExpressionSyntax> args,
            SymbolTable scope, int line, int col)
        {
            var name = identifier.Text;
            var func = _functions.GetValueOrDefault(name);
            var native = _nativeFunctions.GetValueOrDefault(name) as NativeSymbol;

            if (func == null && native == null)
            {
                _diagnostics.Add($"Undefined function '{name}'", line, col);
                return;
            }

            var parameters = func?.Parameters ?? ((NativeSymbol)_nativeFunctions[name]!).Parameters;

            // Check argument count (if parameter has a name)
            var realParams = parameters.Where(p => p.Name != "").ToList();
            if (args.Count != realParams.Count)
                _diagnostics.Add($"Function '{name}' expects {realParams.Count} arguments, got {args.Count}", line, col);

            foreach (var arg in args.Items)
                CheckExpression(arg, scope);
        }
    }
}
