using JassSyntaxAnalyzer;

namespace JassLanguageServer
{
    public class JassDocument
    {
        public string Uri { get; }
        public string Text { get; private set; }
        public CompilationUnitSyntax Root { get; private set; }
        public IReadOnlyList<Diagnostic> SyntaxDiagnostics { get; private set; }
        public IReadOnlyList<Diagnostic> SemanticDiagnostics { get; private set; }

        public JassDocument(string uri, string text)
        {
            Uri = uri;
            Text = text;
            var tree = SyntaxTree.Parse(text);
            Root = tree.Root;
            SyntaxDiagnostics = tree.Diagnostics;
            SemanticDiagnostics = Array.Empty<Diagnostic>();
        }

        public void Update(string text)
        {
            Text = text;
            var tree = SyntaxTree.Parse(text);
            Root = tree.Root;
            SyntaxDiagnostics = tree.Diagnostics;
        }

        public void BindSemantics(Binder binder)
        {
            binder.Bind(Root);
            SemanticDiagnostics = binder.Diagnostics;
        }

        public DiagnosticInfo[] GetAllDiagnostics()
        {
            var list = new List<DiagnosticInfo>();
            foreach (var d in SyntaxDiagnostics)
                list.Add(ToDiagnosticInfo(d, 1));
            foreach (var d in SemanticDiagnostics)
                list.Add(ToDiagnosticInfo(d, 2));
            return list.ToArray();
        }

        private static DiagnosticInfo ToDiagnosticInfo(Diagnostic d, int severity) => new()
        {
            Range = new Range { Start = new Position { Line = d.Line - 1, Character = d.Column - 1 }, End = new Position { Line = d.Line - 1, Character = d.Column } },
            Severity = severity,
            Message = d.Message,
        };

        public SyntaxToken? GetTokenAt(int line, int column)
        {
            // LSP uses 0-based; tokens use 1-based
            int targetLine = line + 1, targetCol = column + 1;
            foreach (var t in Root.GetTokens())
            {
                if (t.Line == targetLine && targetCol >= t.Column && targetCol <= t.Column + t.Text.Length)
                    return t;
            }
            return null;
        }
    }
}
