namespace JassSyntaxAnalyzer
{
    // ---- Expressions ----

    public abstract class ExpressionSyntax : SyntaxNode
    {
        protected ExpressionSyntax(SyntaxKind kind) : base(kind) { }
    }

    public sealed class LiteralExpressionSyntax : ExpressionSyntax
    {
        public SyntaxToken Token { get; }

        public LiteralExpressionSyntax(SyntaxToken token) : base(SyntaxKind.LiteralExpression)
        {
            Token = token;
        }

        public override IEnumerable<SyntaxNode> GetChildren() { yield break; }
        public override IEnumerable<SyntaxToken> GetTokens() { yield return Token; }
    }

    public sealed class IdentifierExpressionSyntax : ExpressionSyntax
    {
        public SyntaxToken Identifier { get; }

        public IdentifierExpressionSyntax(SyntaxToken identifier) : base(SyntaxKind.IdentifierExpression)
        {
            Identifier = identifier;
        }

        public override IEnumerable<SyntaxNode> GetChildren() { yield break; }
        public override IEnumerable<SyntaxToken> GetTokens() { yield return Identifier; }
    }

    public sealed class BinaryExpressionSyntax : ExpressionSyntax
    {
        public ExpressionSyntax Left { get; }
        public SyntaxToken Operator { get; }
        public ExpressionSyntax Right { get; }

        public BinaryExpressionSyntax(ExpressionSyntax left, SyntaxToken op, ExpressionSyntax right)
            : base(SyntaxKind.BinaryExpression)
        {
            Left = left;
            Operator = op;
            Right = right;
        }

        public override IEnumerable<SyntaxNode> GetChildren()
        {
            yield return Left;
            yield return Right;
        }

        public override IEnumerable<SyntaxToken> GetTokens()
        {
            foreach (var t in Left.GetTokens()) yield return t;
            yield return Operator;
            foreach (var t in Right.GetTokens()) yield return t;
        }
    }

    public sealed class UnaryExpressionSyntax : ExpressionSyntax
    {
        public SyntaxToken Operator { get; }
        public ExpressionSyntax Operand { get; }

        public UnaryExpressionSyntax(SyntaxToken op, ExpressionSyntax operand)
            : base(SyntaxKind.UnaryExpression)
        {
            Operator = op;
            Operand = operand;
        }

        public override IEnumerable<SyntaxNode> GetChildren() { yield return Operand; }
        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return Operator;
            foreach (var t in Operand.GetTokens()) yield return t;
        }
    }

    public sealed class FunctionCallExpressionSyntax : ExpressionSyntax
    {
        public SyntaxToken Identifier { get; }
        public SyntaxToken OpenParen { get; }
        public SeparatedList<ExpressionSyntax> Arguments { get; }
        public SyntaxToken CloseParen { get; }

        public FunctionCallExpressionSyntax(
            SyntaxToken identifier,
            SyntaxToken openParen,
            SeparatedList<ExpressionSyntax> arguments,
            SyntaxToken closeParen)
            : base(SyntaxKind.FunctionCallExpression)
        {
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
            yield return Identifier;
            yield return OpenParen;
            foreach (var t in Arguments.GetTokens()) yield return t;
            yield return CloseParen;
        }
    }

    public sealed class ArrayAccessExpressionSyntax : ExpressionSyntax
    {
        public ExpressionSyntax Array { get; }
        public SyntaxToken OpenBracket { get; }
        public ExpressionSyntax Index { get; }
        public SyntaxToken CloseBracket { get; }

        public ArrayAccessExpressionSyntax(
            ExpressionSyntax array,
            SyntaxToken openBracket,
            ExpressionSyntax index,
            SyntaxToken closeBracket)
            : base(SyntaxKind.ArrayAccessExpression)
        {
            Array = array;
            OpenBracket = openBracket;
            Index = index;
            CloseBracket = closeBracket;
        }

        public override IEnumerable<SyntaxNode> GetChildren()
        {
            yield return Array;
            yield return Index;
        }

        public override IEnumerable<SyntaxToken> GetTokens()
        {
            foreach (var t in Array.GetTokens()) yield return t;
            yield return OpenBracket;
            foreach (var t in Index.GetTokens()) yield return t;
            yield return CloseBracket;
        }
    }

    public sealed class ParenthesizedExpressionSyntax : ExpressionSyntax
    {
        public SyntaxToken OpenParen { get; }
        public ExpressionSyntax Expression { get; }
        public SyntaxToken CloseParen { get; }

        public ParenthesizedExpressionSyntax(
            SyntaxToken openParen,
            ExpressionSyntax expression,
            SyntaxToken closeParen)
            : base(SyntaxKind.ParenthesizedExpression)
        {
            OpenParen = openParen;
            Expression = expression;
            CloseParen = closeParen;
        }

        public override IEnumerable<SyntaxNode> GetChildren() { yield return Expression; }
        public override IEnumerable<SyntaxToken> GetTokens()
        {
            yield return OpenParen;
            foreach (var t in Expression.GetTokens()) yield return t;
            yield return CloseParen;
        }
    }

    // ---- Helper: comma-separated list ----

    public sealed class SeparatedList<T> where T : SyntaxNode
    {
        private readonly List<(T Item, SyntaxToken? Comma)> _entries = new();

        public IEnumerable<T> Items => _entries.Select(e => e.Item);
        public int Count => _entries.Count;

        public void Add(T item, SyntaxToken? comma)
        {
            _entries.Add((item, comma));
        }

        public void UpdateLastComma(SyntaxToken comma)
        {
            if (_entries.Count > 0)
            {
                var last = _entries[^1];
                _entries[^1] = (last.Item, comma);
            }
        }

        public IEnumerable<SyntaxToken> GetTokens()
        {
            foreach (var (item, comma) in _entries)
            {
                foreach (var t in item.GetTokens()) yield return t;
                if (comma != null) yield return comma.Value;
            }
        }
    }
}
