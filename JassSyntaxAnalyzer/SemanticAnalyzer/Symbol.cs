namespace JassSyntaxAnalyzer
{
    public abstract class Symbol
    {
        public string Name { get; }
        public SymbolKind Kind { get; }
        public string? Type { get; }

        protected Symbol(string name, SymbolKind kind, string? type)
        {
            Name = name;
            Kind = kind;
            Type = type;
        }
    }

    public enum SymbolKind
    {
        Function,
        Native,
        Global,
        Local,
        Type,
        Parameter,
    }

    public class FunctionSymbol : Symbol
    {
        public List<ParameterSymbol> Parameters { get; }
        public FunctionDeclarationSyntax Declaration { get; }

        public FunctionSymbol(string name, string? returnType, List<ParameterSymbol> parameters, FunctionDeclarationSyntax declaration)
            : base(name, SymbolKind.Function, returnType)
        {
            Parameters = parameters;
            Declaration = declaration;
        }
    }

    public class NativeSymbol : Symbol
    {
        public List<ParameterSymbol> Parameters { get; }

        public NativeSymbol(string name, string? returnType, List<ParameterSymbol> parameters)
            : base(name, SymbolKind.Native, returnType)
        {
            Parameters = parameters;
        }
    }

    public class GlobalSymbol : Symbol
    {
        public bool IsConstant { get; }

        public GlobalSymbol(string name, string? type, bool isConstant)
            : base(name, SymbolKind.Global, type)
        {
            IsConstant = isConstant;
        }
    }

    public class LocalSymbol : Symbol
    {
        public LocalSymbol(string name, string? type)
            : base(name, SymbolKind.Local, type) { }
    }

    public class TypeSymbol : Symbol
    {
        public string? ParentType { get; }

        public TypeSymbol(string name, string? parentType)
            : base(name, SymbolKind.Type, name)
        {
            ParentType = parentType;
        }
    }

    public class ParameterSymbol : Symbol
    {
        public ParameterSymbol(string name, string? type)
            : base(name, SymbolKind.Parameter, type) { }
    }
}
