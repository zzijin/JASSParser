namespace JassSyntaxAnalyzer
{
    public class Diagnostic
    {
        public string Message { get; }
        public int Line { get; }
        public int Column { get; }

        public Diagnostic(string message, int line, int column)
        {
            Message = message;
            Line = line;
            Column = column;
        }

        public override string ToString() => $"({Line},{Column}): {Message}";
    }

    public class DiagnosticBag
    {
        private readonly List<Diagnostic> _diagnostics = new();

        public IReadOnlyList<Diagnostic> Diagnostics => _diagnostics;

        public void Add(string message, int line, int column)
        {
            _diagnostics.Add(new Diagnostic(message, line, column));
        }

        public void AddRange(IEnumerable<Diagnostic> diagnostics)
        {
            _diagnostics.AddRange(diagnostics);
        }

        public bool HasErrors => _diagnostics.Count > 0;

        public void Clear() => _diagnostics.Clear();
    }
}
