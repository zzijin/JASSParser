namespace JassSyntaxAnalyzer
{
    public enum SyntaxKind
    {
        // Tokens — keywords
        FunctionKeyword,
        EndFunctionKeyword,
        TakesKeyword,
        ReturnsKeyword,
        LocalKeyword,
        SetKeyword,
        CallKeyword,
        IfKeyword,
        ThenKeyword,
        ElseKeyword,
        ElseIfKeyword,
        EndIfKeyword,
        LoopKeyword,
        EndLoopKeyword,
        ExitWhenKeyword,
        ReturnKeyword,
        GlobalsKeyword,
        EndGlobalsKeyword,
        TypeKeyword,
        ExtendsKeyword,
        NativeKeyword,
        ConstantKeyword,
        NullKeyword,
        TrueKeyword,
        FalseKeyword,
        NotKeyword,
        AndKeyword,
        OrKeyword,

        // Tokens — type keywords
        HandleKeyword,
        IntegerKeyword,
        RealKeyword,
        BooleanKeyword,
        StringKeyword,
        CodeKeyword,
        NothingKeyword,

        // Tokens — literals and identifiers
        IdentifierToken,
        IntegerLiteralToken,
        RealLiteralToken,
        StringLiteralToken,
        FourCharCodeLiteralToken,

        // Tokens — operators
        PlusToken,
        MinusToken,
        StarToken,
        SlashToken,
        EqualsToken,
        EqualsEqualsToken,
        NotEqualsToken,
        LessThanToken,
        GreaterThanToken,
        LessThanOrEqualsToken,
        GreaterThanOrEqualsToken,

        // Tokens — delimiters
        OpenParenToken,
        CloseParenToken,
        OpenBracketToken,
        CloseBracketToken,
        CommaToken,

        // Tokens — special
        EndOfFileToken,
        BadToken,

        // Nodes — compilation
        CompilationUnit,

        // Nodes — declarations
        FunctionDeclaration,
        GlobalsDeclaration,
        GlobalDeclaration,
        TypeDeclaration,
        NativeDeclaration,
        Parameter,

        // Nodes — statements
        Block,
        ExpressionStatement,
        LocalDeclarationStatement,
        SetStatement,
        CallStatement,
        IfStatement,
        LoopStatement,
        ExitWhenStatement,
        ReturnStatement,

        // Nodes — expressions
        LiteralExpression,
        IdentifierExpression,
        BinaryExpression,
        UnaryExpression,
        FunctionCallExpression,
        ArrayAccessExpression,
        ParenthesizedExpression,
    }
}
