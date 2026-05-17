namespace JassSyntaxAnalyzer
{
    // ---- Statements ----

    public abstract class StatementSyntax : SyntaxNode
    {
        protected StatementSyntax(SyntaxKind kind) : base(kind) { }
    }

    public sealed class BlockStatementSyntax : StatementSyntax
    {
        public List<StatementSyntax> Statements { get; }

        public BlockStatementSyntax(List<StatementSyntax> statements) : base(SyntaxKind.Block)
        {
            Statements = statements;
        }

        public override IEnumerable<SyntaxNode> GetChildren() => Statements;
        public override IEnumerable<SyntaxToken> GetTokens()
        {
            foreach (var stmt in Statements)
            foreach (var t in stmt.GetTokens())
                yield return t;
        }
    }

    public sealed class ExpressionStatementSyntax : StatementSyntax
    {
        public ExpressionSyntax Expression { get; }

        public ExpressionStatementSyntax(ExpressionSyntax expression) : base(SyntaxKind.ExpressionStatement)
        {
            Expression = expression;
        }

        public override IEnumerable<SyntaxNode> GetChildren() { yield return Expression; }
        public override IEnumerable<SyntaxToken> GetTokens() => Expression.GetTokens();
    }

    public sealed class LocalDeclarationStatementSyntax : StatementSyntax
    {
        public SyntaxToken LocalKeyword { get; }
        public SyntaxToken TypeKeyword { get; }
        public SyntaxToken Identifier { get; }
        public SyntaxToken? EqualsToken { get; }
        public ExpressionSyntax? Initializer { get; }

        public LocalDeclarationStatementSyntax(
            SyntaxToken localKeyword,
            SyntaxToken typeKeyword,
            SyntaxToken identifier,
            SyntaxToken? equalsToken,
            ExpressionSyntax? initializer)
            : base(SyntaxKind.LocalDeclarationStatement)
        {
            LocalKeyword = localKeyword;
            TypeKeyword = typeKeyword;
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
            yield return LocalKeyword;
            yield return TypeKeyword;
            yield return Identifier;
            if (EqualsToken != null) yield return EqualsToken.Value;
            if (Initializer != null)
                foreach (var t in Initializer.GetTokens()) yield return t;
        }
    }

    public sealed class SetStatementSyntax : StatementSyntax
    {
        public SyntaxToken SetKeyword { get; }
        public SyntaxToken Identifier { get; }
        public SyntaxToken? OpenBracket { get; }
        public ExpressionSyntax? Index { get; }
        public SyntaxToken? CloseBracket { get; }
        public SyntaxToken EqualsToken { get; }
        public ExpressionSyntax Value { get; }

        public SetStatementSyntax(
            SyntaxToken setKeyword,
            SyntaxToken identifier,
            SyntaxToken? openBracket,
            ExpressionSyntax? index,
            SyntaxToken? closeBracket,
            SyntaxToken equalsToken,
            ExpressionSyntax value)
            : base(SyntaxKind.SetStatement)
        {
            SetKeyword = setKeyword;
            Identifier = identifier;
            OpenBracket = openBracket;
            Index = index;
            CloseBracket = closeBracket;
            EqualsToken = equalsToken;
            Value = value;
        }

        public override IEnumerable<SyntaxNode> GetChildren()
        {
            if (Index != null) yield return Index;
            yield return Value;
        }

        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return SetKeyword;
            yield return Identifier;
            if (OpenBracket != null) yield return OpenBracket.Value;
            if (Index != null) foreach (var t in Index.GetTokens()) yield return t;
            if (CloseBracket != null) yield return CloseBracket.Value;
            yield return EqualsToken;
            foreach (var t in Value.GetTokens()) yield return t;
        }
    }

    public sealed class CallStatementSyntax : StatementSyntax
    {
        public SyntaxToken CallKeyword { get; }
        public SyntaxToken Identifier { get; }
        public SyntaxToken OpenParen { get; }
        public SeparatedList<ExpressionSyntax> Arguments { get; }
        public SyntaxToken CloseParen { get; }

        public CallStatementSyntax(
            SyntaxToken callKeyword,
            SyntaxToken identifier,
            SyntaxToken openParen,
            SeparatedList<ExpressionSyntax> arguments,
            SyntaxToken closeParen)
            : base(SyntaxKind.CallStatement)
        {
            CallKeyword = callKeyword;
            Identifier = identifier;
            OpenParen = openParen;
            Arguments = arguments;
            CloseParen = closeParen;
        }

        public override IEnumerable<SyntaxNode> GetChildren()
        {
            foreach (var arg in Arguments.Items) yield return arg;
        }

        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return CallKeyword;
            yield return Identifier;
            yield return OpenParen;
            foreach (var t in Arguments.GetTokens()) yield return t;
            yield return CloseParen;
        }
    }

    public sealed class IfStatementSyntax : StatementSyntax
    {
        public SyntaxToken IfKeyword { get; }
        public SyntaxToken OpenParen { get; }
        public ExpressionSyntax Condition { get; }
        public SyntaxToken CloseParen { get; }
        public SyntaxToken ThenKeyword { get; }
        public StatementSyntax ThenBody { get; }
        public SyntaxToken? ElseKeyword { get; }
        public StatementSyntax? ElseBody { get; }
        public SyntaxToken EndIfKeyword { get; }

        public IfStatementSyntax(
            SyntaxToken ifKeyword,
            SyntaxToken openParen,
            ExpressionSyntax condition,
            SyntaxToken closeParen,
            SyntaxToken thenKeyword,
            StatementSyntax thenBody,
            SyntaxToken? elseKeyword,
            StatementSyntax? elseBody,
            SyntaxToken endIfKeyword)
            : base(SyntaxKind.IfStatement)
        {
            IfKeyword = ifKeyword;
            OpenParen = openParen;
            Condition = condition;
            CloseParen = closeParen;
            ThenKeyword = thenKeyword;
            ThenBody = thenBody;
            ElseKeyword = elseKeyword;
            ElseBody = elseBody;
            EndIfKeyword = endIfKeyword;
        }

        public override IEnumerable<SyntaxNode> GetChildren()
        {
            yield return Condition;
            yield return ThenBody;
            if (ElseBody != null) yield return ElseBody;
        }

        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return IfKeyword;
            yield return OpenParen;
            foreach (var t in Condition.GetTokens()) yield return t;
            yield return CloseParen;
            yield return ThenKeyword;
            foreach (var t in ThenBody.GetTokens()) yield return t;
            if (ElseKeyword != null) yield return ElseKeyword.Value;
            if (ElseBody != null) foreach (var t in ElseBody.GetTokens()) yield return t;
            yield return EndIfKeyword;
        }
    }

    public sealed class LoopStatementSyntax : StatementSyntax
    {
        public SyntaxToken LoopKeyword { get; }
        public List<StatementSyntax> Body { get; }
        public List<ExitWhenStatementSyntax> ExitWhens { get; }
        public SyntaxToken EndLoopKeyword { get; }

        public LoopStatementSyntax(
            SyntaxToken loopKeyword,
            List<StatementSyntax> body,
            List<ExitWhenStatementSyntax> exitWhens,
            SyntaxToken endLoopKeyword)
            : base(SyntaxKind.LoopStatement)
        {
            LoopKeyword = loopKeyword;
            Body = body;
            ExitWhens = exitWhens;
            EndLoopKeyword = endLoopKeyword;
        }

        public override IEnumerable<SyntaxNode> GetChildren()
        {
            foreach (var stmt in Body) yield return stmt;
            foreach (var ew in ExitWhens) yield return ew;
        }

        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return LoopKeyword;
            foreach (var stmt in Body)
            foreach (var t in stmt.GetTokens()) yield return t;
            foreach (var ew in ExitWhens)
            foreach (var t in ew.GetTokens()) yield return t;
            yield return EndLoopKeyword;
        }
    }

    public sealed class ExitWhenStatementSyntax : StatementSyntax
    {
        public SyntaxToken ExitWhenKeyword { get; }
        public ExpressionSyntax Condition { get; }

        public ExitWhenStatementSyntax(SyntaxToken exitWhenKeyword, ExpressionSyntax condition)
            : base(SyntaxKind.ExitWhenStatement)
        {
            ExitWhenKeyword = exitWhenKeyword;
            Condition = condition;
        }

        public override IEnumerable<SyntaxNode> GetChildren() { yield return Condition; }
        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return ExitWhenKeyword;
            foreach (var t in Condition.GetTokens()) yield return t;
        }
    }

    public sealed class ReturnStatementSyntax : StatementSyntax
    {
        public SyntaxToken ReturnKeyword { get; }
        public ExpressionSyntax? Expression { get; }

        public ReturnStatementSyntax(SyntaxToken returnKeyword, ExpressionSyntax? expression)
            : base(SyntaxKind.ReturnStatement)
        {
            ReturnKeyword = returnKeyword;
            Expression = expression;
        }

        public override IEnumerable<SyntaxNode> GetChildren()
        {
            if (Expression != null) yield return Expression;
        }

        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return ReturnKeyword;
            if (Expression != null)
                foreach (var t in Expression.GetTokens()) yield return t;
        }
    }
}
