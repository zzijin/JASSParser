namespace JassSyntaxAnalyzer
{
    public class SyntaxTree
    {
        public CompilationUnitSyntax Root { get; }
        public IReadOnlyList<Diagnostic> Diagnostics { get; }

        private SyntaxTree(CompilationUnitSyntax root, IReadOnlyList<Diagnostic> diagnostics)
        {
            Root = root;
            Diagnostics = diagnostics;
        }

        public static SyntaxTree Parse(string text)
        {
            var lexer = new Lexer(text);
            var tokens = lexer.Tokenize();
            var parser = new Parser(tokens);
            var root = parser.Parse();
            return new SyntaxTree(root, parser.Diagnostics);
        }

        public IEnumerable<SyntaxToken> GetTokens()
        {
            return Root.GetTokens();
        }
    }
}
