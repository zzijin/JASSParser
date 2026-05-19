using JassSyntaxAnalyzer;

namespace JassLanguageServer
{
    public class JassWorkspace
    {
        private readonly Dictionary<string, JassDocument> _documents = new();
        private CompilationUnitSyntax? _commonRoot;
        private CompilationUnitSyntax? _blizzardRoot;

        public string? RootPath { get; set; }

        public void LoadPrelude(string commonPath, string blizzardPath)
        {
            if (File.Exists(commonPath))
            {
                var tree = SyntaxTree.Parse(File.ReadAllText(commonPath));
                _commonRoot = tree.Root;
            }
            if (File.Exists(blizzardPath))
            {
                var tree = SyntaxTree.Parse(File.ReadAllText(blizzardPath));
                _blizzardRoot = tree.Root;
            }
        }

        public JassDocument OpenDocument(string uri, string text)
        {
            var doc = new JassDocument(uri, text);
            _documents[uri] = doc;
            Rebind(doc);
            return doc;
        }

        public JassDocument? GetDocument(string uri)
        {
            _documents.TryGetValue(uri, out var doc);
            return doc;
        }

        public void UpdateDocument(string uri, string text)
        {
            if (_documents.TryGetValue(uri, out var doc))
            {
                doc.Update(text);
                Rebind(doc);
            }
        }

        private void Rebind(JassDocument doc)
        {
            if (doc.SyntaxDiagnostics.Count > 0) return;

            var binder = new Binder();
            if (_commonRoot != null) binder.LoadPrelude(_commonRoot);
            if (_blizzardRoot != null) binder.LoadPrelude(_blizzardRoot);
            doc.BindSemantics(binder);
        }

        public string[] GetKeywordCompletions()
        {
            return [
                "function", "endfunction", "takes", "returns", "local", "set", "call",
                "if", "then", "else", "elseif", "endif", "loop", "endloop", "exitwhen",
                "return", "globals", "endglobals", "type", "extends", "native", "constant",
                "null", "true", "false", "not", "and", "or", "debug", "array",
                "integer", "real", "boolean", "string", "code", "handle", "nothing"
            ];
        }

        public static string[] GetUserFunctions(string uri)
        {
            // Will be implemented to extract from document AST
            return Array.Empty<string>();
        }
    }
}
