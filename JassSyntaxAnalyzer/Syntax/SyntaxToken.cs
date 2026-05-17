namespace JassSyntaxAnalyzer
{
    public readonly struct SyntaxToken
    {
        public SyntaxKind Kind { get; }
        public string Text { get; }
        public object? Value { get; }
        public int Line { get; }
        public int Column { get; }

        public SyntaxToken(SyntaxKind kind, string text, object? value, int line, int column)
        {
            Kind = kind;
            Text = text;
            Value = value;
            Line = line;
            Column = column;
        }
    }
}
