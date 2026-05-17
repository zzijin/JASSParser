namespace JassSyntaxAnalyzer
{
    public class Parser
    {
        private readonly SyntaxToken[] _tokens;
        private int _pos;
        private readonly List<Diagnostic> _diagnostics = new();

        private SyntaxToken Current => _pos < _tokens.Length ? _tokens[_pos] : _tokens[^1];
        private SyntaxToken Peek(int offset) =>
            _pos + offset < _tokens.Length ? _tokens[_pos + offset] : _tokens[^1];

        private SyntaxToken Next()
        {
            var t = Current;
            _pos++;
            return t;
        }

        private SyntaxToken Expect(SyntaxKind kind)
        {
            if (Current.Kind == kind)
                return Next();
            _diagnostics.Add(new Diagnostic($"Expected '{kind}', got '{Current.Kind}'", Current.Line, Current.Column));
            return Current;
        }

        public Parser(SyntaxToken[] tokens)
        {
            _tokens = tokens;
        }

        public CompilationUnitSyntax Parse()
        {
            var declarations = new List<DeclarationSyntax>();

            while (Current.Kind != SyntaxKind.EndOfFileToken)
            {
                var decl = ParseDeclaration();
                if (decl != null)
                    declarations.Add(decl);
                else
                    break;
            }

            return new CompilationUnitSyntax(declarations);
        }

        public IReadOnlyList<Diagnostic> Diagnostics => _diagnostics;

        // ---- Declarations ----

        private DeclarationSyntax? ParseDeclaration()
        {
            switch (Current.Kind)
            {
                case SyntaxKind.FunctionKeyword:
                    return ParseFunctionDeclaration();
                case SyntaxKind.GlobalsKeyword:
                    return ParseGlobalsDeclaration();
                case SyntaxKind.TypeKeyword:
                    return ParseTypeDeclaration();
                case SyntaxKind.ConstantKeyword:
                case SyntaxKind.NativeKeyword:
                    return ParseNativeDeclaration();
                default:
                    // Error recovery: skip to next declaration keyword
                    SkipToSync(
                        SyntaxKind.FunctionKeyword,
                        SyntaxKind.GlobalsKeyword,
                        SyntaxKind.TypeKeyword,
                        SyntaxKind.NativeKeyword,
                        SyntaxKind.ConstantKeyword,
                        SyntaxKind.EndOfFileToken);
                    return _pos < _tokens.Length && Current.Kind != SyntaxKind.EndOfFileToken ? ParseDeclaration() : null;
            }
        }

        private FunctionDeclarationSyntax ParseFunctionDeclaration()
        {
            var funcKw = Expect(SyntaxKind.FunctionKeyword);
            var name = Expect(SyntaxKind.IdentifierToken);
            var takesKw = Expect(SyntaxKind.TakesKeyword);
            var parameters = ParseParameterList();
            var returnsKw = Expect(SyntaxKind.ReturnsKeyword);
            var returnType = ParseType();
            var body = ParseBlock(SyntaxKind.EndFunctionKeyword);
            var endFuncKw = Expect(SyntaxKind.EndFunctionKeyword);
            return new FunctionDeclarationSyntax(funcKw, name, takesKw, parameters, returnsKw, returnType, body, endFuncKw);
        }

        private SeparatedList<ParameterSyntax> ParseParameterList()
        {
            var list = new SeparatedList<ParameterSyntax>();

            // 'takes nothing' or 'takes' with empty params
            if (Current.Kind == SyntaxKind.NothingKeyword)
            {
                list.Add(new ParameterSyntax(Next(), new SyntaxToken(SyntaxKind.IdentifierToken, "", null, Current.Line, Current.Column)), null);
                return list;
            }

            while (Current.Kind != SyntaxKind.ReturnsKeyword && Current.Kind != SyntaxKind.EndOfFileToken)
            {
                var type = ParseType();
                var name = Expect(SyntaxKind.IdentifierToken);
                list.Add(new ParameterSyntax(type, name), null);

                if (Current.Kind == SyntaxKind.CommaToken)
                    list.UpdateLastComma(Next());
                else
                    break;
            }

            return list;
        }

        private GlobalsDeclarationSyntax ParseGlobalsDeclaration()
        {
            var globalsKw = Expect(SyntaxKind.GlobalsKeyword);
            var globals = new List<GlobalDeclarationSyntax>();

            while (Current.Kind != SyntaxKind.EndGlobalsKeyword && Current.Kind != SyntaxKind.EndOfFileToken)
            {
                var g = ParseGlobalDeclaration();
                if (g != null)
                    globals.Add(g);
                else
                    break;
            }

            var endKw = Expect(SyntaxKind.EndGlobalsKeyword);
            return new GlobalsDeclarationSyntax(globalsKw, globals, endKw);
        }

        private GlobalDeclarationSyntax? ParseGlobalDeclaration()
        {
            SyntaxToken? constantKw = null;
            if (Current.Kind == SyntaxKind.ConstantKeyword)
                constantKw = Next();

            if (!IsTypeToken(Current.Kind))
            {
                SkipToSync(SyntaxKind.EndGlobalsKeyword, SyntaxKind.ConstantKeyword);
                return null;
            }

            var type = ParseType();
            var name = Expect(SyntaxKind.IdentifierToken);
            SyntaxToken? equals = null;
            ExpressionSyntax? init = null;

            if (Current.Kind == SyntaxKind.EqualsToken)
            {
                equals = Next();
                init = ParseExpression();
            }

            return new GlobalDeclarationSyntax(constantKw, type, name, equals, init);
        }

        private TypeDeclarationSyntax ParseTypeDeclaration()
        {
            var typeKw = Expect(SyntaxKind.TypeKeyword);
            var name = Expect(SyntaxKind.IdentifierToken);
            var extendsKw = Expect(SyntaxKind.ExtendsKeyword);
            var parent = Expect(SyntaxKind.IdentifierToken);
            return new TypeDeclarationSyntax(typeKw, name, extendsKw, parent);
        }

        private NativeDeclarationSyntax ParseNativeDeclaration()
        {
            SyntaxToken? constantKw = null;
            if (Current.Kind == SyntaxKind.ConstantKeyword)
                constantKw = Next();

            var nativeKw = Expect(SyntaxKind.NativeKeyword);
            var name = Expect(SyntaxKind.IdentifierToken);
            var takesKw = Expect(SyntaxKind.TakesKeyword);
            var parameters = ParseParameterList();
            var returnsKw = Expect(SyntaxKind.ReturnsKeyword);
            var returnType = ParseType();
            return new NativeDeclarationSyntax(constantKw, nativeKw, name, takesKw, parameters, returnsKw, returnType);
        }

        private SyntaxToken ParseType()
        {
            if (IsTypeToken(Current.Kind))
                return Next();

            _diagnostics.Add(new Diagnostic($"Expected type, got '{Current.Kind}'", Current.Line, Current.Column));
            return Current; // return current as error token
        }

        // ---- Block ----

        private BlockStatementSyntax ParseBlock(SyntaxKind terminator)
        {
            var statements = new List<StatementSyntax>();

            while (Current.Kind != terminator && Current.Kind != SyntaxKind.EndOfFileToken)
            {
                if (Current.Kind == SyntaxKind.EndFunctionKeyword ||
                    Current.Kind == SyntaxKind.EndIfKeyword ||
                    Current.Kind == SyntaxKind.EndLoopKeyword ||
                    Current.Kind == SyntaxKind.EndGlobalsKeyword)
                    break;

                var stmt = ParseStatement();
                if (stmt != null)
                    statements.Add(stmt);
                else
                    break;
            }

            return new BlockStatementSyntax(statements);
        }

        // ---- Statements ----

        private StatementSyntax? ParseStatement()
        {
            switch (Current.Kind)
            {
                case SyntaxKind.LocalKeyword:
                    return ParseLocalDeclaration();
                case SyntaxKind.SetKeyword:
                    return ParseSetStatement();
                case SyntaxKind.CallKeyword:
                    return ParseCallStatement();
                case SyntaxKind.IfKeyword:
                    return ParseIfStatement();
                case SyntaxKind.LoopKeyword:
                    return ParseLoopStatement();
                case SyntaxKind.ExitWhenKeyword:
                    return ParseExitWhenStatement();
                case SyntaxKind.ReturnKeyword:
                    return ParseReturnStatement();
                default:
                    SkipToSync(SyntaxKind.LocalKeyword, SyntaxKind.SetKeyword, SyntaxKind.CallKeyword,
                        SyntaxKind.IfKeyword, SyntaxKind.LoopKeyword, SyntaxKind.ExitWhenKeyword,
                        SyntaxKind.ReturnKeyword, SyntaxKind.EndFunctionKeyword, SyntaxKind.EndIfKeyword,
                        SyntaxKind.EndLoopKeyword, SyntaxKind.EndGlobalsKeyword,
                        SyntaxKind.FunctionKeyword, SyntaxKind.EndOfFileToken);
                    return null;
            }
        }

        private LocalDeclarationStatementSyntax ParseLocalDeclaration()
        {
            var localKw = Expect(SyntaxKind.LocalKeyword);
            var type = ParseType();
            var name = Expect(SyntaxKind.IdentifierToken);
            SyntaxToken? equals = null;
            ExpressionSyntax? init = null;

            if (Current.Kind == SyntaxKind.EqualsToken)
            {
                equals = Next();
                init = ParseExpression();
            }

            return new LocalDeclarationStatementSyntax(localKw, type, name, equals, init);
        }

        private SetStatementSyntax ParseSetStatement()
        {
            var setKw = Expect(SyntaxKind.SetKeyword);
            var name = Expect(SyntaxKind.IdentifierToken);

            SyntaxToken? openBr = null;
            ExpressionSyntax? index = null;
            SyntaxToken? closeBr = null;

            if (Current.Kind == SyntaxKind.OpenBracketToken)
            {
                openBr = Next();
                index = ParseExpression();
                closeBr = Expect(SyntaxKind.CloseBracketToken);
            }

            var eq = Expect(SyntaxKind.EqualsToken);
            var value = ParseExpression();
            return new SetStatementSyntax(setKw, name, openBr, index, closeBr, eq, value);
        }

        private CallStatementSyntax ParseCallStatement()
        {
            var callKw = Expect(SyntaxKind.CallKeyword);
            var name = Expect(SyntaxKind.IdentifierToken);
            var openP = Expect(SyntaxKind.OpenParenToken);
            var args = ParseArgumentList();
            var closeP = Expect(SyntaxKind.CloseParenToken);
            return new CallStatementSyntax(callKw, name, openP, args, closeP);
        }

        private IfStatementSyntax ParseIfStatement()
        {
            var ifKw = Expect(SyntaxKind.IfKeyword);
            var openP = Expect(SyntaxKind.OpenParenToken);
            var condition = ParseExpression();
            var closeP = Expect(SyntaxKind.CloseParenToken);
            var thenKw = Expect(SyntaxKind.ThenKeyword);

            // Parse then-body: single statement or multiple until else/elseif/endif
            var thenStmts = new List<StatementSyntax>();
            while (Current.Kind != SyntaxKind.ElseKeyword &&
                   Current.Kind != SyntaxKind.ElseIfKeyword &&
                   Current.Kind != SyntaxKind.EndIfKeyword &&
                   Current.Kind != SyntaxKind.EndOfFileToken)
            {
                var s = ParseStatement();
                if (s != null) thenStmts.Add(s);
                else break;
            }
            StatementSyntax thenBody = thenStmts.Count == 1
                ? thenStmts[0]
                : new BlockStatementSyntax(thenStmts);

            SyntaxToken? elseKw = null;
            StatementSyntax? elseBody = null;

            // Handle elseif
            if (Current.Kind == SyntaxKind.ElseIfKeyword)
            {
                // Desugar elseif into nested if in else branch
                elseKw = Expect(SyntaxKind.ElseKeyword); // placeholder
                elseBody = ParseIfStatement(); // parse as child if
            }
            else if (Current.Kind == SyntaxKind.ElseKeyword)
            {
                elseKw = Next();
                var elseStmts = new List<StatementSyntax>();
                while (Current.Kind != SyntaxKind.EndIfKeyword && Current.Kind != SyntaxKind.EndOfFileToken)
                {
                    var s = ParseStatement();
                    if (s != null) elseStmts.Add(s);
                    else break;
                }
                elseBody = elseStmts.Count == 1
                    ? elseStmts[0]
                    : new BlockStatementSyntax(elseStmts);
            }

            var endIfKw = Expect(SyntaxKind.EndIfKeyword);
            return new IfStatementSyntax(ifKw, openP, condition, closeP, thenKw, thenBody, elseKw, elseBody, endIfKw);
        }

        private LoopStatementSyntax ParseLoopStatement()
        {
            var loopKw = Expect(SyntaxKind.LoopKeyword);
            var body = new List<StatementSyntax>();
            var exitWhens = new List<ExitWhenStatementSyntax>();

            while (Current.Kind != SyntaxKind.EndLoopKeyword && Current.Kind != SyntaxKind.EndOfFileToken)
            {
                if (Current.Kind == SyntaxKind.ExitWhenKeyword)
                {
                    exitWhens.Add(ParseExitWhenStatement());
                }
                else
                {
                    var s = ParseStatement();
                    if (s != null) body.Add(s);
                    else break;
                }
            }

            var endKw = Expect(SyntaxKind.EndLoopKeyword);
            return new LoopStatementSyntax(loopKw, body, exitWhens, endKw);
        }

        private ExitWhenStatementSyntax ParseExitWhenStatement()
        {
            var ewKw = Expect(SyntaxKind.ExitWhenKeyword);
            var condition = ParseExpression();
            return new ExitWhenStatementSyntax(ewKw, condition);
        }

        private ReturnStatementSyntax ParseReturnStatement()
        {
            var retKw = Expect(SyntaxKind.ReturnKeyword);

            ExpressionSyntax? expr = null;
            if (Current.Kind != SyntaxKind.EndFunctionKeyword &&
                Current.Kind != SyntaxKind.EndLoopKeyword &&
                Current.Kind != SyntaxKind.EndIfKeyword &&
                Current.Kind != SyntaxKind.ElseKeyword &&
                Current.Kind != SyntaxKind.ElseIfKeyword &&
                Current.Kind != SyntaxKind.ExitWhenKeyword &&
                Current.Kind != SyntaxKind.EndOfFileToken)
            {
                expr = ParseExpression();
            }

            return new ReturnStatementSyntax(retKw, expr);
        }

        // ---- Expressions (Pratt parser) ----

        private ExpressionSyntax ParseExpression(int minPrecedence = 0)
        {
            var left = ParsePrefix();

            while (true)
            {
                var prec = GetInfixPrecedence(Current.Kind);
                if (prec == 0 || prec < minPrecedence) break;

                var op = Next();
                var right = ParseExpression(prec);
                left = new BinaryExpressionSyntax(left, op, right);
            }

            return left;
        }

        private ExpressionSyntax ParsePrefix()
        {
            switch (Current.Kind)
            {
                // Unary operators
                case SyntaxKind.MinusToken:
                case SyntaxKind.PlusToken:
                case SyntaxKind.NotKeyword:
                {
                    var op = Next();
                    var operand = ParseExpression(GetPrefixPrecedence());
                    return new UnaryExpressionSyntax(op, operand);
                }

                // Literals
                case SyntaxKind.IntegerLiteralToken:
                case SyntaxKind.RealLiteralToken:
                case SyntaxKind.StringLiteralToken:
                case SyntaxKind.FourCharCodeLiteralToken:
                case SyntaxKind.TrueKeyword:
                case SyntaxKind.FalseKeyword:
                case SyntaxKind.NullKeyword:
                    return new LiteralExpressionSyntax(Next());

                // Identifier — could be function call, array access, or plain identifier
                case SyntaxKind.IdentifierToken:
                    return ParseIdentifierExpression();

                // Parenthesized expression
                case SyntaxKind.OpenParenToken:
                {
                    var openP = Next();
                    var expr = ParseExpression();
                    var closeP = Expect(SyntaxKind.CloseParenToken);
                    return new ParenthesizedExpressionSyntax(openP, expr, closeP);
                }

                default:
                    _diagnostics.Add(new Diagnostic($"Unexpected token '{Current.Kind}' in expression", Current.Line, Current.Column));
                    return new LiteralExpressionSyntax(Next());
            }
        }

        private ExpressionSyntax ParseIdentifierExpression()
        {
            var id = Next();

            // Function call
            if (Current.Kind == SyntaxKind.OpenParenToken)
            {
                var openP = Next();
                var args = ParseArgumentList();
                var closeP = Expect(SyntaxKind.CloseParenToken);
                return new FunctionCallExpressionSyntax(id, openP, args, closeP);
            }

            // Array access
            if (Current.Kind == SyntaxKind.OpenBracketToken)
            {
                var openBr = Next();
                var index = ParseExpression();
                var closeBr = Expect(SyntaxKind.CloseBracketToken);
                return new ArrayAccessExpressionSyntax(new IdentifierExpressionSyntax(id), openBr, index, closeBr);
            }

            return new IdentifierExpressionSyntax(id);
        }

        private SeparatedList<ExpressionSyntax> ParseArgumentList()
        {
            var list = new SeparatedList<ExpressionSyntax>();

            if (Current.Kind == SyntaxKind.CloseParenToken)
                return list;

            while (true)
            {
                list.Add(ParseExpression(), null);
                if (Current.Kind == SyntaxKind.CommaToken)
                    list.UpdateLastComma(Next());
                else
                    break;
            }

            return list;
        }

        // ---- Precedence helpers (C-style) ----

        private static int GetPrefixPrecedence() => 7;

        private static int GetInfixPrecedence(SyntaxKind kind) => kind switch
        {
            SyntaxKind.OrKeyword => 1,
            SyntaxKind.AndKeyword => 2,
            SyntaxKind.EqualsEqualsToken or SyntaxKind.NotEqualsToken or
            SyntaxKind.LessThanToken or SyntaxKind.GreaterThanToken or
            SyntaxKind.LessThanOrEqualsToken or SyntaxKind.GreaterThanOrEqualsToken => 3,
            SyntaxKind.PlusToken or SyntaxKind.MinusToken => 4,
            SyntaxKind.StarToken or SyntaxKind.SlashToken => 5,
            _ => 0,
        };

        // ---- Helpers ----

        private static bool IsTypeToken(SyntaxKind kind) => kind switch
        {
            SyntaxKind.HandleKeyword or SyntaxKind.IntegerKeyword or SyntaxKind.RealKeyword or
            SyntaxKind.BooleanKeyword or SyntaxKind.StringKeyword or SyntaxKind.CodeKeyword or
            SyntaxKind.NothingKeyword or SyntaxKind.IdentifierToken => true,
            _ => false,
        };

        private void SkipToSync(params SyntaxKind[] syncKinds)
        {
            while (Current.Kind != SyntaxKind.EndOfFileToken)
            {
                if (syncKinds.Contains(Current.Kind))
                    break;
                _pos++;
            }
        }
    }
}
