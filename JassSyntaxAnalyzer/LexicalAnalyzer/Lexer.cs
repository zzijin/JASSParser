using System.Text;

namespace JassSyntaxAnalyzer
{
    public class Lexer
    {
        private readonly string _text;
        private int _pos;
        private int _line = 1;
        private int _col = 1;

        private static readonly Dictionary<string, SyntaxKind> Keywords = new()
        {
            ["function"] = SyntaxKind.FunctionKeyword,
            ["endfunction"] = SyntaxKind.EndFunctionKeyword,
            ["takes"] = SyntaxKind.TakesKeyword,
            ["returns"] = SyntaxKind.ReturnsKeyword,
            ["local"] = SyntaxKind.LocalKeyword,
            ["set"] = SyntaxKind.SetKeyword,
            ["call"] = SyntaxKind.CallKeyword,
            ["if"] = SyntaxKind.IfKeyword,
            ["then"] = SyntaxKind.ThenKeyword,
            ["else"] = SyntaxKind.ElseKeyword,
            ["elseif"] = SyntaxKind.ElseIfKeyword,
            ["endif"] = SyntaxKind.EndIfKeyword,
            ["loop"] = SyntaxKind.LoopKeyword,
            ["endloop"] = SyntaxKind.EndLoopKeyword,
            ["exitwhen"] = SyntaxKind.ExitWhenKeyword,
            ["return"] = SyntaxKind.ReturnKeyword,
            ["globals"] = SyntaxKind.GlobalsKeyword,
            ["endglobals"] = SyntaxKind.EndGlobalsKeyword,
            ["type"] = SyntaxKind.TypeKeyword,
            ["extends"] = SyntaxKind.ExtendsKeyword,
            ["native"] = SyntaxKind.NativeKeyword,
            ["constant"] = SyntaxKind.ConstantKeyword,
            ["null"] = SyntaxKind.NullKeyword,
            ["true"] = SyntaxKind.TrueKeyword,
            ["false"] = SyntaxKind.FalseKeyword,
            ["not"] = SyntaxKind.NotKeyword,
            ["and"] = SyntaxKind.AndKeyword,
            ["or"] = SyntaxKind.OrKeyword,
            ["handle"] = SyntaxKind.HandleKeyword,
            ["integer"] = SyntaxKind.IntegerKeyword,
            ["real"] = SyntaxKind.RealKeyword,
            ["boolean"] = SyntaxKind.BooleanKeyword,
            ["string"] = SyntaxKind.StringKeyword,
            ["code"] = SyntaxKind.CodeKeyword,
            ["nothing"] = SyntaxKind.NothingKeyword,
            ["array"] = SyntaxKind.ArrayKeyword,
            ["debug"] = SyntaxKind.DebugKeyword,
        };

        public Lexer(string text)
        {
            _text = text;
        }

        public SyntaxToken[] Tokenize()
        {
            var tokens = new List<SyntaxToken>();
            while (true)
            {
                var token = NextToken();
                tokens.Add(token);
                if (token.Kind == SyntaxKind.EndOfFileToken)
                    break;
            }
            return tokens.ToArray();
        }

        private SyntaxToken NextToken()
        {
            SkipWhitespace();

            if (_pos >= _text.Length)
                return MakeToken(SyntaxKind.EndOfFileToken, "", null, _line, _col);

            int startLine = _line;
            int startCol = _col;
            char ch = _text[_pos];

            // Single-line comment
            if (ch == '/' && Peek(1) == '/')
            {
                while (_pos < _text.Length && _text[_pos] != '\n')
                    _pos++;
                return NextToken();
            }

            // String literal
            if (ch == '"')
                return ReadStringLiteral(startLine, startCol);

            // Four-character code literal
            if (ch == '\'')
                return ReadFourCharCode(startLine, startCol);

            // Number literal (including $hex)
            if (char.IsDigit(ch) || (ch == '.' && Peek(1) >= '0' && Peek(1) <= '9') ||
                (ch == '$' && Peek(1) != '\0' && IsHexDigit(Peek(1))))
                return ReadNumberLiteral(startLine, startCol);

            // Identifier or keyword
            if (char.IsLetter(ch) || ch == '_')
                return ReadIdentifierOrKeyword(startLine, startCol);

            // Operators and delimiters
            return ReadOperatorOrDelimiter(startLine, startCol);
        }

        private char Current() => _pos < _text.Length ? _text[_pos] : '\0';
        private char Peek(int ahead) => _pos + ahead < _text.Length ? _text[_pos + ahead] : '\0';
        private void Advance()
        {
            if (_pos < _text.Length && _text[_pos] == '\n')
            {
                _line++;
                _col = 1;
            }
            else
            {
                _col++;
            }
            _pos++;
        }

        private static SyntaxToken MakeToken(SyntaxKind kind, string text, object? value, int line, int col)
            => new(kind, text, value, line, col);

        private void SkipWhitespace()
        {
            while (_pos < _text.Length)
            {
                char ch = _text[_pos];
                if (ch == ' ' || ch == '\t' || ch == '\r' || ch == '\n')
                    Advance();
                else
                    break;
            }
        }

        private SyntaxToken ReadStringLiteral(int line, int col)
        {
            var sb = new StringBuilder();
            Advance(); // skip opening quote

            while (_pos < _text.Length)
            {
                char ch = _text[_pos];
                if (ch == '"')
                {
                    Advance(); // skip closing quote
                    return new SyntaxToken(SyntaxKind.StringLiteralToken, sb.ToString(), sb.ToString(), line, col);
                }
                if (ch == '\\' && _pos + 1 < _text.Length)
                {
                    Advance();
                    char escaped = _text[_pos];
                    switch (escaped)
                    {
                        case 'n': sb.Append('\n'); break;
                        case 'r': sb.Append('\r'); break;
                        case 't': sb.Append('\t'); break;
                        case '\\': sb.Append('\\'); break;
                        case '"': sb.Append('"'); break;
                        default: sb.Append('\\').Append(escaped); break;
                    }
                    Advance();
                }
                else if (ch == '\n' || ch == '\r')
                {
                    break; // unterminated string
                }
                else
                {
                    sb.Append(ch);
                    Advance();
                }
            }

            return new SyntaxToken(SyntaxKind.BadToken, sb.ToString(), sb.ToString(), line, col);
        }

        private SyntaxToken ReadFourCharCode(int line, int col)
        {
            var sb = new StringBuilder();
            Advance(); // skip opening single quote

            while (_pos < _text.Length && _text[_pos] != '\'' && _text[_pos] != '\n')
            {
                sb.Append(_text[_pos]);
                Advance();
            }

            if (_pos < _text.Length && _text[_pos] == '\'')
                Advance(); // skip closing single quote

            string code = sb.ToString();
            return new SyntaxToken(SyntaxKind.FourCharCodeLiteralToken, code, code, line, col);
        }

        private SyntaxToken ReadNumberLiteral(int line, int col)
        {
            var sb = new StringBuilder();
            bool isReal = false;

            // Handle JASS hex: $08, $1A, etc.
            if (_text[_pos] == '$')
            {
                sb.Append(_text[_pos]); Advance(); // '$'
                while (_pos < _text.Length && IsHexDigit(_text[_pos]))
                {
                    sb.Append(_text[_pos]); Advance();
                }
                int value = Convert.ToInt32(sb.ToString()[1..], 16);
                return new SyntaxToken(SyntaxKind.IntegerLiteralToken, sb.ToString(), value, line, col);
            }

            // Handle hex: 0x or 0X
            if (_text[_pos] == '0' && _pos + 1 < _text.Length &&
                (_text[_pos + 1] == 'x' || _text[_pos + 1] == 'X'))
            {
                sb.Append(_text[_pos]); Advance(); // '0'
                sb.Append(_text[_pos]); Advance(); // 'x'
                while (_pos < _text.Length && IsHexDigit(_text[_pos]))
                {
                    sb.Append(_text[_pos]); Advance();
                }
                int value = Convert.ToInt32(sb.ToString(), 16);
                return new SyntaxToken(SyntaxKind.IntegerLiteralToken, sb.ToString(), value, line, col);
            }

            // Handle octal: 0o or 0O
            if (_text[_pos] == '0' && _pos + 1 < _text.Length &&
                (_text[_pos + 1] == 'o' || _text[_pos + 1] == 'O'))
            {
                sb.Append(_text[_pos]); Advance(); // '0'
                sb.Append(_text[_pos]); Advance(); // 'o'
                while (_pos < _text.Length && _text[_pos] >= '0' && _text[_pos] <= '7')
                {
                    sb.Append(_text[_pos]); Advance();
                }
                int value = Convert.ToInt32(sb.ToString(), 8);
                return new SyntaxToken(SyntaxKind.IntegerLiteralToken, sb.ToString(), value, line, col);
            }

            // Main integer/real path
            while (_pos < _text.Length && char.IsDigit(_text[_pos]))
            {
                sb.Append(_text[_pos]); Advance();
            }

            if (_pos < _text.Length && _text[_pos] == '.')
            {
                isReal = true;
                sb.Append(_text[_pos]); Advance();
                while (_pos < _text.Length && char.IsDigit(_text[_pos]))
                {
                    sb.Append(_text[_pos]); Advance();
                }
            }

            if (isReal)
            {
                var value = double.Parse(sb.ToString(), System.Globalization.CultureInfo.InvariantCulture);
                return new SyntaxToken(SyntaxKind.RealLiteralToken, sb.ToString(), value, line, col);
            }
            else
            {
                var value = int.Parse(sb.ToString());
                return new SyntaxToken(SyntaxKind.IntegerLiteralToken, sb.ToString(), value, line, col);
            }
        }

        private SyntaxToken ReadIdentifierOrKeyword(int line, int col)
        {
            var sb = new StringBuilder();
            while (_pos < _text.Length && (char.IsLetterOrDigit(_text[_pos]) || _text[_pos] == '_'))
            {
                sb.Append(_text[_pos]); Advance();
            }

            string text = sb.ToString();
            if (Keywords.TryGetValue(text, out var keywordKind))
                return new SyntaxToken(keywordKind, text, null, line, col);

            return new SyntaxToken(SyntaxKind.IdentifierToken, text, text, line, col);
        }

        private SyntaxToken ReadOperatorOrDelimiter(int line, int col)
        {
            char ch = _text[_pos];

            switch (ch)
            {
                case '+':
                    Advance(); return new SyntaxToken(SyntaxKind.PlusToken, "+", null, line, col);
                case '-':
                    Advance(); return new SyntaxToken(SyntaxKind.MinusToken, "-", null, line, col);
                case '*':
                    Advance(); return new SyntaxToken(SyntaxKind.StarToken, "*", null, line, col);
                case '/':
                    Advance(); return new SyntaxToken(SyntaxKind.SlashToken, "/", null, line, col);
                case '(':
                    Advance(); return new SyntaxToken(SyntaxKind.OpenParenToken, "(", null, line, col);
                case ')':
                    Advance(); return new SyntaxToken(SyntaxKind.CloseParenToken, ")", null, line, col);
                case '[':
                    Advance(); return new SyntaxToken(SyntaxKind.OpenBracketToken, "[", null, line, col);
                case ']':
                    Advance(); return new SyntaxToken(SyntaxKind.CloseBracketToken, "]", null, line, col);
                case ',':
                    Advance(); return new SyntaxToken(SyntaxKind.CommaToken, ",", null, line, col);
                case '=':
                    if (Peek(1) == '=')
                    {
                        Advance(); Advance();
                        return new SyntaxToken(SyntaxKind.EqualsEqualsToken, "==", null, line, col);
                    }
                    Advance();
                    return new SyntaxToken(SyntaxKind.EqualsToken, "=", null, line, col);
                case '!':
                    if (Peek(1) == '=')
                    {
                        Advance(); Advance();
                        return new SyntaxToken(SyntaxKind.NotEqualsToken, "!=", null, line, col);
                    }
                    Advance();
                    return new SyntaxToken(SyntaxKind.BadToken, "!", null, line, col);
                case '<':
                    if (Peek(1) == '=')
                    {
                        Advance(); Advance();
                        return new SyntaxToken(SyntaxKind.LessThanOrEqualsToken, "<=", null, line, col);
                    }
                    Advance();
                    return new SyntaxToken(SyntaxKind.LessThanToken, "<", null, line, col);
                case '>':
                    if (Peek(1) == '=')
                    {
                        Advance(); Advance();
                        return new SyntaxToken(SyntaxKind.GreaterThanOrEqualsToken, ">=", null, line, col);
                    }
                    Advance();
                    return new SyntaxToken(SyntaxKind.GreaterThanToken, ">", null, line, col);
            }

            // Unknown character
            Advance();
            return new SyntaxToken(SyntaxKind.BadToken, ch.ToString(), null, line, col);
        }

        private static bool IsHexDigit(char c) =>
            (c >= '0' && c <= '9') || (c >= 'a' && c <= 'f') || (c >= 'A' && c <= 'F');
    }
}
