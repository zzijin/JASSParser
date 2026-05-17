namespace JassSyntaxAnalyzer
{
    public abstract class SyntaxNode
    {
        public SyntaxKind Kind { get; }
        public abstract IEnumerable<SyntaxNode> GetChildren();
        public abstract IEnumerable<SyntaxToken> GetTokens();

        protected SyntaxNode(SyntaxKind kind)
        {
            Kind = kind;
        }
    }
}
