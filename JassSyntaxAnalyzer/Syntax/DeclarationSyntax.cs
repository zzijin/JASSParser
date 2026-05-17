namespace JassSyntaxAnalyzer
{
    // ---- Declarations ----

    public abstract class DeclarationSyntax : SyntaxNode
    {
        protected DeclarationSyntax(SyntaxKind kind) : base(kind) { }
    }

    public sealed class CompilationUnitSyntax : SyntaxNode
    {
        public List<DeclarationSyntax> Declarations { get; }

        public CompilationUnitSyntax(List<DeclarationSyntax> declarations) : base(SyntaxKind.CompilationUnit)
        {
            Declarations = declarations;
        }

        public override IEnumerable<SyntaxNode> GetChildren() => Declarations;
        public override IEnumerable<SyntaxToken> GetTokens()
        {
            foreach (var decl in Declarations)
            foreach (var t in decl.GetTokens())
                yield return t;
        }
    }

    public sealed class ParameterSyntax : SyntaxNode
    {
        public SyntaxToken TypeKeyword { get; }
        public SyntaxToken Identifier { get; }

        public ParameterSyntax(SyntaxToken typeKeyword, SyntaxToken identifier)
            : base(SyntaxKind.Parameter)
        {
            TypeKeyword = typeKeyword;
            Identifier = identifier;
        }

        public override IEnumerable<SyntaxNode> GetChildren() { yield break; }
        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return TypeKeyword;
            yield return Identifier;
        }
    }

    public sealed class FunctionDeclarationSyntax : DeclarationSyntax
    {
        public SyntaxToken FunctionKeyword { get; }
        public SyntaxToken Identifier { get; }
        public SyntaxToken TakesKeyword { get; }
        public SeparatedList<ParameterSyntax> Parameters { get; }
        public SyntaxToken ReturnsKeyword { get; }
        public SyntaxToken ReturnType { get; }
        public BlockStatementSyntax Body { get; }
        public SyntaxToken EndFunctionKeyword { get; }

        public FunctionDeclarationSyntax(
            SyntaxToken functionKeyword,
            SyntaxToken identifier,
            SyntaxToken takesKeyword,
            SeparatedList<ParameterSyntax> parameters,
            SyntaxToken returnsKeyword,
            SyntaxToken returnType,
            BlockStatementSyntax body,
            SyntaxToken endFunctionKeyword)
            : base(SyntaxKind.FunctionDeclaration)
        {
            FunctionKeyword = functionKeyword;
            Identifier = identifier;
            TakesKeyword = takesKeyword;
            Parameters = parameters;
            ReturnsKeyword = returnsKeyword;
            ReturnType = returnType;
            Body = body;
            EndFunctionKeyword = endFunctionKeyword;
        }

        public override IEnumerable<SyntaxNode> GetChildren()
        {
            foreach (var p in Parameters.Items) yield return p;
            yield return Body;
        }

        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return FunctionKeyword;
            yield return Identifier;
            yield return TakesKeyword;
            foreach (var t in Parameters.GetTokens()) yield return t;
            yield return ReturnsKeyword;
            yield return ReturnType;
            foreach (var t in Body.GetTokens()) yield return t;
            yield return EndFunctionKeyword;
        }
    }

    public sealed class GlobalDeclarationSyntax : DeclarationSyntax
    {
        public SyntaxToken? ConstantKeyword { get; }
        public SyntaxToken TypeKeyword { get; }
        public SyntaxToken? ArrayKeyword { get; }
        public SyntaxToken Identifier { get; }
        public SyntaxToken? EqualsToken { get; }
        public ExpressionSyntax? Initializer { get; }

        public GlobalDeclarationSyntax(
            SyntaxToken? constantKeyword,
            SyntaxToken typeKeyword,
            SyntaxToken? arrayKeyword,
            SyntaxToken identifier,
            SyntaxToken? equalsToken,
            ExpressionSyntax? initializer)
            : base(SyntaxKind.GlobalDeclaration)
        {
            ConstantKeyword = constantKeyword;
            TypeKeyword = typeKeyword;
            ArrayKeyword = arrayKeyword;
            Identifier = identifier;
            EqualsToken = equalsToken;
            Initializer = initializer;
        }

        public override IEnumerable<SyntaxNode> GetChildren()
        {
            if (Initializer != null) yield return Initializer;
        }

        public override IEnumerable<SyntaxToken> GetTokens()
        {
            if (ConstantKeyword != null) yield return ConstantKeyword.Value;
            yield return TypeKeyword;
            if (ArrayKeyword != null) yield return ArrayKeyword.Value;
            yield return Identifier;
            if (EqualsToken != null) yield return EqualsToken.Value;
            if (Initializer != null)
                foreach (var t in Initializer.GetTokens()) yield return t;
        }
    }

    public sealed class GlobalsDeclarationSyntax : DeclarationSyntax
    {
        public SyntaxToken GlobalsKeyword { get; }
        public List<GlobalDeclarationSyntax> Globals { get; }
        public SyntaxToken EndGlobalsKeyword { get; }

        public GlobalsDeclarationSyntax(
            SyntaxToken globalsKeyword,
            List<GlobalDeclarationSyntax> globals,
            SyntaxToken endGlobalsKeyword)
            : base(SyntaxKind.GlobalsDeclaration)
        {
            GlobalsKeyword = globalsKeyword;
            Globals = globals;
            EndGlobalsKeyword = endGlobalsKeyword;
        }

        public override IEnumerable<SyntaxNode> GetChildren() => Globals;
        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return GlobalsKeyword;
            foreach (var g in Globals)
            foreach (var t in g.GetTokens())
                yield return t;
            yield return EndGlobalsKeyword;
        }
    }

    public sealed class TypeDeclarationSyntax : DeclarationSyntax
    {
        public SyntaxToken TypeKeyword { get; }
        public SyntaxToken Identifier { get; }
        public SyntaxToken ExtendsKeyword { get; }
        public SyntaxToken ParentType { get; }

        public TypeDeclarationSyntax(
            SyntaxToken typeKeyword,
            SyntaxToken identifier,
            SyntaxToken extendsKeyword,
            SyntaxToken parentType)
            : base(SyntaxKind.TypeDeclaration)
        {
            TypeKeyword = typeKeyword;
            Identifier = identifier;
            ExtendsKeyword = extendsKeyword;
            ParentType = parentType;
        }

        public override IEnumerable<SyntaxNode> GetChildren() { yield break; }
        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return TypeKeyword;
            yield return Identifier;
            yield return ExtendsKeyword;
            yield return ParentType;
        }
    }

    public sealed class NativeDeclarationSyntax : DeclarationSyntax
    {
        public SyntaxToken? ConstantKeyword { get; }
        public SyntaxToken NativeKeyword { get; }
        public SyntaxToken Identifier { get; }
        public SyntaxToken TakesKeyword { get; }
        public SeparatedList<ParameterSyntax> Parameters { get; }
        public SyntaxToken ReturnsKeyword { get; }
        public SyntaxToken ReturnType { get; }

        public NativeDeclarationSyntax(
            SyntaxToken? constantKeyword,
            SyntaxToken nativeKeyword,
            SyntaxToken identifier,
            SyntaxToken takesKeyword,
            SeparatedList<ParameterSyntax> parameters,
            SyntaxToken returnsKeyword,
            SyntaxToken returnType)
            : base(SyntaxKind.NativeDeclaration)
        {
            ConstantKeyword = constantKeyword;
            NativeKeyword = nativeKeyword;
            Identifier = identifier;
            TakesKeyword = takesKeyword;
            Parameters = parameters;
            ReturnsKeyword = returnsKeyword;
            ReturnType = returnType;
        }

        public override IEnumerable<SyntaxNode> GetChildren()
        {
            foreach (var p in Parameters.Items) yield return p;
        }

        public override IEnumerable<SyntaxToken> GetTokens()
        {
            if (ConstantKeyword != null) yield return ConstantKeyword.Value;
            yield return NativeKeyword;
            yield return Identifier;
            yield return TakesKeyword;
            foreach (var t in Parameters.GetTokens()) yield return t;
            yield return ReturnsKeyword;
            yield return ReturnType;
        }
    }
}
