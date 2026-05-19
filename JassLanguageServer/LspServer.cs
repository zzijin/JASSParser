using System.Text.Json;
using JassSyntaxAnalyzer;

namespace JassLanguageServer
{
    public class LspServer
    {
        private readonly JassWorkspace _workspace = new();
        private readonly JsonSerializerOptions _jsonOptions = new() { PropertyNamingPolicy = JsonNamingPolicy.CamelCase, WriteIndented = false };

        public void Run()
        {
            // Read prelude paths from embedded resources or configuration
            var preludeBase = FindPreludePath();
            _workspace.LoadPrelude(
                Path.Combine(preludeBase, "common.j"),
                Path.Combine(preludeBase, "blizzard.j"));

            // LSP main loop
            while (true)
            {
                var message = ReadMessage();
                if (message == null) break;
                HandleMessage(message);
            }
        }

        private static string FindPreludePath()
        {
            // Try JassRef relative to the executable
            var exeDir = AppContext.BaseDirectory;
            var paths = new[] {
                Path.Combine(exeDir, "JassRef"),
                Path.Combine(exeDir, "..", "..", "..", "..", "JassRef"),
                Path.Combine(exeDir, "..", "JassRef"),
            };
            foreach (var p in paths)
            {
                if (Directory.Exists(p) && File.Exists(Path.Combine(p, "common.j")))
                    return p;
            }
            return exeDir;
        }

        private LspMessage? ReadMessage()
        {
            // LSP header: Content-Length: N\r\n\r\n
            var contentLength = 0;
            while (true)
            {
                var line = Console.ReadLine();
                if (string.IsNullOrEmpty(line)) break;
                if (line.StartsWith("Content-Length:"))
                    contentLength = int.Parse(line["Content-Length:".Length..].Trim());
            }

            if (contentLength == 0) return null;

            var buffer = new char[contentLength];
            var read = 0;
            while (read < contentLength)
            {
                var c = Console.Read();
                if (c == -1) break;
                buffer[read++] = (char)c;
            }

            var json = new string(buffer, 0, read);
            return JsonSerializer.Deserialize<LspMessage>(json);
        }

        private void HandleMessage(LspMessage message)
        {
            if (message.Method == "initialize")
                HandleInitialize(message);
            else if (message.Method == "initialized")
                HandleInitialized(message);
            else if (message.Method == "textDocument/didOpen")
                HandleDidOpen(message);
            else if (message.Method == "textDocument/didChange")
                HandleDidChange(message);
            else if (message.Method == "textDocument/hover")
                HandleHover(message);
            else if (message.Method == "textDocument/completion")
                HandleCompletion(message);
            else if (message.Method == "textDocument/definition")
                HandleDefinition(message);
            else if (message.Method == "shutdown")
                Environment.Exit(0);
        }

        private void HandleInitialize(LspMessage msg)
        {
            var result = new InitializeResult();
            var response = new LspMessage { Id = msg.Id, Result = ToElement(result) };
            SendMessage(response);

            // Also detect rootUri for prelude loading
            if (msg.Params != null)
            {
                var initParams = JsonSerializer.Deserialize<InitializeParams>(msg.Params.Value.GetRawText());
                if (initParams?.RootUri != null)
                {
                    var rootPath = new Uri(initParams.RootUri).LocalPath;
                    _workspace.LoadPrelude(
                        Path.Combine(rootPath, "JassRef", "common.j"),
                        Path.Combine(rootPath, "JassRef", "blizzard.j"));
                }
            }
        }

        private static void HandleInitialized(LspMessage msg) { }

        private void HandleDidOpen(LspMessage msg)
        {
            var p = JsonSerializer.Deserialize<DidOpenTextDocumentParams>(msg.Params!.Value.GetRawText())!;
            var doc = _workspace.OpenDocument(p.TextDocument.Uri, p.TextDocument.Text);
            SendDiagnostics(p.TextDocument.Uri, doc.GetAllDiagnostics());
        }

        private void HandleDidChange(LspMessage msg)
        {
            var p = JsonSerializer.Deserialize<DidChangeTextDocumentParams>(msg.Params!.Value.GetRawText())!;
            var newText = p.ContentChanges.Length > 0 ? p.ContentChanges[0].Text : "";
            _workspace.UpdateDocument(p.TextDocument.Uri, newText);
            var doc = _workspace.GetDocument(p.TextDocument.Uri);
            if (doc != null)
                SendDiagnostics(p.TextDocument.Uri, doc.GetAllDiagnostics());
        }

        private void HandleHover(LspMessage msg)
        {
            var p = JsonSerializer.Deserialize<HoverParams>(msg.Params!.Value.GetRawText())!;
            var doc = _workspace.GetDocument(p.TextDocument.Uri);
            if (doc == null) { SendEmptyResult(msg.Id!.Value); return; }

            var token = doc.GetTokenAt(p.Position.Line, p.Position.Character);
            string? hoverText = null;
            if (token.HasValue)
            {
                hoverText = token.Value.Kind switch
                {
                    SyntaxKind.IdentifierToken => $"**{token.Value.Text}** — identifier",
                    SyntaxKind.FunctionKeyword => "`function` — declares a function",
                    SyntaxKind.SetKeyword => "`set` — assigns a value",
                    SyntaxKind.CallKeyword => "`call` — calls a function",
                    SyntaxKind.IfKeyword => "`if` — conditional branch",
                    SyntaxKind.LoopKeyword => "`loop` — loops until `exitwhen`",
                    SyntaxKind.ReturnKeyword => "`return` — returns from function",
                    SyntaxKind.LocalKeyword => "`local` — declares a local variable",
                    SyntaxKind.IntegerKeyword => "`integer` — 32-bit signed integer",
                    SyntaxKind.RealKeyword => "`real` — floating-point number",
                    SyntaxKind.BooleanKeyword => "`boolean` — true/false",
                    SyntaxKind.StringKeyword => "`string` — text value",
                    SyntaxKind.HandleKeyword => "`handle` — base reference type",
                    SyntaxKind.CodeKeyword => "`code` — function reference",
                    SyntaxKind.NothingKeyword => "`nothing` — void / no return",
                    SyntaxKind.IntegerLiteralToken => $"`{token.Value.Text}` — integer literal",
                    SyntaxKind.RealLiteralToken => $"`{token.Value.Text}` — real literal",
                    SyntaxKind.StringLiteralToken => $"`{token.Value.Text}` — string literal",
                    SyntaxKind.FourCharCodeLiteralToken => $"`{token.Value.Text}` — object ID",
                    _ => null
                };
            }

            if (hoverText != null)
            {
                var hoverResult = new HoverResult { Contents = new MarkupContent { Kind = "markdown", Value = hoverText } };
                var resp = new LspMessage { Id = msg.Id, Result = ToElement(hoverResult) };
                SendMessage(resp);
            }
            else
            {
                SendEmptyResult(msg.Id!.Value);
            }
        }

        private void HandleCompletion(LspMessage msg)
        {
            var p = JsonSerializer.Deserialize<CompletionParams>(msg.Params!.Value.GetRawText())!;
            var doc = _workspace.GetDocument(p.TextDocument.Uri);
            var items = new List<CompletionItem>();
            var seen = new HashSet<string>();

            // 1. JASS keywords
            foreach (var kw in _workspace.GetKeywordCompletions())
            {
                items.Add(new CompletionItem { Label = kw, Kind = 14, Detail = "Keyword", InsertText = kw });
                seen.Add(kw);
            }

            // 2. User-defined functions and globals from this document
            if (doc != null)
                CollectDocumentSymbols(doc.Root, items, seen);

            // 3. Built-in API functions (fallback list)
            var apiFunctions = new[] {
                "CreateTrigger", "GetTriggerUnit", "GetSpellAbilityId", "GetEnumUnit",
                "GetLastCreatedUnit", "GetOwningPlayer", "GetUnitLoc", "GetUnitFacing",
                "CreateNUnitsAtLoc", "ShowUnitHide", "UnitAddAbilityBJ",
                "SetUnitAbilityLevelSwapped", "GetUnitAbilityLevelSwapped",
                "IssueTargetOrderBJ", "RemoveLocation", "GetSpellTargetLoc",
                "DisplayTextToPlayer", "IsUnitType", "SetUnitAcquireRange",
                "GetUnitState", "SetUnitState", "I2S", "R2I", "TriggerRegisterAnyUnitEventBJ",
                "TriggerAddCondition", "TriggerAddAction", "Condition",
                "GetUnitsInRangeOfLocAll", "ForGroupBJ",
                "GetRectMinX", "GetRectMaxX", "GetRectMinY", "GetRectMaxY",
                "GetLocationX", "GetLocationY",
            };
            foreach (var fn in apiFunctions)
            {
                if (seen.Add(fn))
                    items.Add(new CompletionItem { Label = fn, Kind = 3, Detail = "API", InsertText = fn });
            }

            var completionList = new CompletionList { IsIncomplete = false, Items = items.ToArray() };
            var resp = new LspMessage { Id = msg.Id, Result = ToElement(completionList) };
            SendMessage(resp);
        }

        private static void CollectDocumentSymbols(CompilationUnitSyntax root, List<CompletionItem> items, HashSet<string> seen)
        {
            foreach (var decl in root.Declarations)
            {
                if (decl is FunctionDeclarationSyntax func)
                {
                    if (seen.Add(func.Identifier.Text))
                    {
                        var returnType = func.ReturnType.Text;
                        items.Add(new CompletionItem
                        {
                            Label = func.Identifier.Text,
                            Kind = 3,
                            Detail = $"function {func.Identifier.Text} returns {returnType}",
                            InsertText = func.Identifier.Text,
                        });
                    }
                }
                else if (decl is GlobalsDeclarationSyntax globals)
                {
                    foreach (var g in globals.Globals)
                    {
                        if (seen.Add(g.Identifier.Text))
                        {
                            var type = g.TypeKeyword.Text;
                            items.Add(new CompletionItem
                            {
                                Label = g.Identifier.Text,
                                Kind = 13,
                                Detail = $"global {type} {g.Identifier.Text}",
                                InsertText = g.Identifier.Text,
                            });
                        }
                    }
                }
            }

            // Also collect local variables from function bodies
            foreach (var decl in root.Declarations)
            {
                if (decl is FunctionDeclarationSyntax func)
                    CollectLocalsFromBlock(func.Body, items, seen);
            }
        }

        private static void CollectLocalsFromBlock(BlockStatementSyntax block, List<CompletionItem> items, HashSet<string> seen)
        {
            foreach (var stmt in block.Statements)
            {
                if (stmt is LocalDeclarationStatementSyntax local)
                {
                    if (seen.Add(local.Identifier.Text))
                    {
                        items.Add(new CompletionItem
                        {
                            Label = local.Identifier.Text,
                            Kind = 13,
                            Detail = $"local {local.TypeKeyword.Text} {local.Identifier.Text}",
                            InsertText = local.Identifier.Text,
                        });
                    }
                }
                else if (stmt is IfStatementSyntax ifStmt)
                {
                    CollectLocalsFromStatement(ifStmt.ThenBody, items, seen);
                    if (ifStmt.ElseBody != null)
                        CollectLocalsFromStatement(ifStmt.ElseBody, items, seen);
                }
                else if (stmt is LoopStatementSyntax loop)
                {
                    foreach (var s in loop.Body)
                        CollectLocalsFromStatement(s, items, seen);
                }
            }
        }

        private static void CollectLocalsFromStatement(SyntaxNode stmt, List<CompletionItem> items, HashSet<string> seen)
        {
            if (stmt is LocalDeclarationStatementSyntax local)
            {
                if (seen.Add(local.Identifier.Text))
                {
                    items.Add(new CompletionItem
                    {
                        Label = local.Identifier.Text,
                        Kind = 13,
                        Detail = $"local {local.TypeKeyword.Text} {local.Identifier.Text}",
                        InsertText = local.Identifier.Text,
                    });
                }
            }
            else if (stmt is BlockStatementSyntax block)
            {
                CollectLocalsFromBlock(block, items, seen);
            }
            else if (stmt is IfStatementSyntax ifStmt)
            {
                CollectLocalsFromStatement(ifStmt.ThenBody, items, seen);
                if (ifStmt.ElseBody != null)
                    CollectLocalsFromStatement(ifStmt.ElseBody, items, seen);
            }
            else if (stmt is LoopStatementSyntax loop)
            {
                foreach (var s in loop.Body)
                    CollectLocalsFromStatement(s, items, seen);
            }
        }

        private void HandleDefinition(LspMessage msg)
        {
            var p = JsonSerializer.Deserialize<DefinitionParams>(msg.Params!.Value.GetRawText())!;
            var doc = _workspace.GetDocument(p.TextDocument.Uri);
            if (doc == null) { SendEmptyResult(msg.Id!.Value); return; }

            var token = doc.GetTokenAt(p.Position.Line, p.Position.Character);
            if (token.HasValue && token.Value.Kind == SyntaxKind.IdentifierToken)
            {
                var name = token.Value.Text;
                // Search for declaration of this name in the AST
                var defPos = FindDeclaration(doc.Root, name);
                if (defPos != null)
                {
                    var loc = new Location
                    {
                        Uri = p.TextDocument.Uri,
                        Range = new Range
                        {
                            Start = new Position { Line = defPos.Value.Line - 1, Character = defPos.Value.Column - 1 },
                            End = new Position { Line = defPos.Value.Line - 1, Character = defPos.Value.Column + name.Length - 1 }
                        }
                    };
                    var resp = new LspMessage { Id = msg.Id, Result = ToElement(new[] { loc }) };
                    SendMessage(resp);
                    return;
                }
            }

            SendEmptyResult(msg.Id!.Value);
        }

        private static (int Line, int Column)? FindDeclaration(CompilationUnitSyntax root, string name)
        {
            foreach (var decl in root.Declarations)
            {
                if (decl is FunctionDeclarationSyntax f && f.Identifier.Text == name)
                    return (f.Identifier.Line, f.Identifier.Column);
                if (decl is GlobalDeclarationSyntax g && g.Identifier.Text == name)
                    return (g.Identifier.Line, g.Identifier.Column);
                if (decl is TypeDeclarationSyntax t && t.Identifier.Text == name)
                    return (t.Identifier.Line, t.Identifier.Column);
            }
            return null;
        }

        // ---- Message I/O ----

        private void SendMessage(LspMessage message)
        {
            var json = JsonSerializer.Serialize(message);
            var bytes = System.Text.Encoding.UTF8.GetBytes(json);
            Console.Write($"Content-Length: {bytes.Length}\r\n\r\n");
            Console.Out.Flush();
            Console.OpenStandardOutput().Write(bytes, 0, bytes.Length);
            Console.OpenStandardOutput().Flush();
        }

        private void SendDiagnostics(string uri, DiagnosticInfo[] diagnostics)
        {
            var notification = new LspNotification
            {
                Method = "textDocument/publishDiagnostics",
                Params = new PublishDiagnosticsParams { Uri = uri, Diagnostics = diagnostics }
            };
            var json = JsonSerializer.Serialize(notification);
            var bytes = System.Text.Encoding.UTF8.GetBytes(json);
            Console.Write($"Content-Length: {bytes.Length}\r\n\r\n");
            Console.Out.Flush();
            Console.OpenStandardOutput().Write(bytes, 0, bytes.Length);
            Console.OpenStandardOutput().Flush();
        }

        private static JsonElement ToElement(object? value)
        {
            var json = JsonSerializer.Serialize(value);
            if (value == null) json = "null";
            return JsonDocument.Parse(json).RootElement;
        }

        private void SendEmptyResult(int id)
        {
            var resp = new LspMessage { Id = id, Result = ToElement(null) };
            SendMessage(resp);
        }
    }
}
