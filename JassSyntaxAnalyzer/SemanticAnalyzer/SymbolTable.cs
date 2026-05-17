namespace JassSyntaxAnalyzer
{
    public class SymbolTable
    {
        private readonly Dictionary<string, Symbol> _symbols = new();
        private readonly SymbolTable? _parent;

        public SymbolTable(SymbolTable? parent = null)
        {
            _parent = parent;
        }

        public void Add(Symbol symbol)
        {
            _symbols[symbol.Name] = symbol;
        }

        public Symbol? Lookup(string name)
        {
            if (_symbols.TryGetValue(name, out var symbol))
                return symbol;
            return _parent?.Lookup(name);
        }

        public Symbol? LookupLocal(string name)
        {
            if (_symbols.TryGetValue(name, out var symbol))
                return symbol;
            return null;
        }

        public bool Contains(string name) => _symbols.ContainsKey(name);

        public IEnumerable<Symbol> GetAll() => _symbols.Values;

        public SymbolTable CreateChild() => new(this);
    }
}
