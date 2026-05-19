using System.Text.Json;
using System.Text.Json.Serialization;

namespace JassLanguageServer
{
    // ---- JSON-RPC transport ----

    public sealed class LspMessage
    {
        [JsonPropertyName("jsonrpc")]
        public string JsonRpc { get; set; } = "2.0";

        [JsonPropertyName("id")]
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public int? Id { get; set; }

        [JsonPropertyName("method")]
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public string? Method { get; set; }

        [JsonPropertyName("params")]
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public JsonElement? Params { get; set; }

        [JsonPropertyName("result")]
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public JsonElement? Result { get; set; }

        [JsonPropertyName("error")]
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public JsonElement? Error { get; set; }
    }

    public sealed class LspNotification
    {
        [JsonPropertyName("jsonrpc")]
        public string JsonRpc { get; set; } = "2.0";

        [JsonPropertyName("method")]
        public string Method { get; set; } = "";

        [JsonPropertyName("params")]
        public object? Params { get; set; }
    }

    // ---- Initialize ----

    public sealed class InitializeParams
    {
        [JsonPropertyName("processId")]
        public int? ProcessId { get; set; }

        [JsonPropertyName("rootUri")]
        public string? RootUri { get; set; }

        [JsonPropertyName("capabilities")]
        public JsonElement Capabilities { get; set; }
    }

    public sealed class InitializeResult
    {
        [JsonPropertyName("capabilities")]
        public ServerCapabilities Capabilities { get; set; } = new();
    }

    public sealed class ServerCapabilities
    {
        [JsonPropertyName("textDocumentSync")]
        public TextDocumentSyncOptions TextDocumentSync { get; set; } = new();

        [JsonPropertyName("hoverProvider")]
        public bool HoverProvider { get; set; } = true;

        [JsonPropertyName("completionProvider")]
        public CompletionOptions? CompletionProvider { get; set; } = new();

        [JsonPropertyName("definitionProvider")]
        public bool DefinitionProvider { get; set; } = true;
    }

    public sealed class TextDocumentSyncOptions
    {
        [JsonPropertyName("openClose")]
        public bool OpenClose { get; set; } = true;

        [JsonPropertyName("change")]
        public int Change { get; set; } = 1; // full
    }

    public sealed class CompletionOptions
    {
        [JsonPropertyName("triggerCharacters")]
        public string[] TriggerCharacters { get; set; } = ["."];
    }

    // ---- Text Document ----

    public sealed class DidOpenTextDocumentParams
    {
        [JsonPropertyName("textDocument")]
        public TextDocumentItem TextDocument { get; set; } = new();
    }

    public sealed class TextDocumentItem
    {
        [JsonPropertyName("uri")]
        public string Uri { get; set; } = "";

        [JsonPropertyName("languageId")]
        public string LanguageId { get; set; } = "";

        [JsonPropertyName("version")]
        public int Version { get; set; }

        [JsonPropertyName("text")]
        public string Text { get; set; } = "";
    }

    public sealed class DidChangeTextDocumentParams
    {
        [JsonPropertyName("textDocument")]
        public VersionedTextDocumentIdentifier TextDocument { get; set; } = new();

        [JsonPropertyName("contentChanges")]
        public TextDocumentContentChangeEvent[] ContentChanges { get; set; } = [];
    }

    public sealed class VersionedTextDocumentIdentifier
    {
        [JsonPropertyName("uri")]
        public string Uri { get; set; } = "";

        [JsonPropertyName("version")]
        public int Version { get; set; }
    }

    public sealed class TextDocumentContentChangeEvent
    {
        [JsonPropertyName("text")]
        public string Text { get; set; } = "";
    }

    public sealed class TextDocumentIdentifier
    {
        [JsonPropertyName("uri")]
        public string Uri { get; set; } = "";
    }

    // ---- Hover ----

    public sealed class HoverParams
    {
        [JsonPropertyName("textDocument")]
        public TextDocumentIdentifier TextDocument { get; set; } = new();

        [JsonPropertyName("position")]
        public Position Position { get; set; } = new();
    }

    public sealed class Position
    {
        [JsonPropertyName("line")]
        public int Line { get; set; }

        [JsonPropertyName("character")]
        public int Character { get; set; }
    }

    public sealed class HoverResult
    {
        [JsonPropertyName("contents")]
        public MarkupContent Contents { get; set; } = new();
    }

    public sealed class MarkupContent
    {
        [JsonPropertyName("kind")]
        public string Kind { get; set; } = "markdown";

        [JsonPropertyName("value")]
        public string Value { get; set; } = "";
    }

    // ---- Completion ----

    public sealed class CompletionParams
    {
        [JsonPropertyName("textDocument")]
        public TextDocumentIdentifier TextDocument { get; set; } = new();

        [JsonPropertyName("position")]
        public Position Position { get; set; } = new();
    }

    public sealed class CompletionList
    {
        [JsonPropertyName("isIncomplete")]
        public bool IsIncomplete { get; set; }

        [JsonPropertyName("items")]
        public CompletionItem[] Items { get; set; } = [];
    }

    public sealed class CompletionItem
    {
        [JsonPropertyName("label")]
        public string Label { get; set; } = "";

        [JsonPropertyName("kind")]
        public int Kind { get; set; }

        [JsonPropertyName("detail")]
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public string? Detail { get; set; }

        [JsonPropertyName("insertText")]
        [JsonIgnore(Condition = JsonIgnoreCondition.WhenWritingNull)]
        public string? InsertText { get; set; }
    }

    // ---- Definition ----

    public sealed class DefinitionParams
    {
        [JsonPropertyName("textDocument")]
        public TextDocumentIdentifier TextDocument { get; set; } = new();

        [JsonPropertyName("position")]
        public Position Position { get; set; } = new();
    }

    public sealed class Location
    {
        [JsonPropertyName("uri")]
        public string Uri { get; set; } = "";

        [JsonPropertyName("range")]
        public Range Range { get; set; } = new();
    }

    public sealed class Range
    {
        [JsonPropertyName("start")]
        public Position Start { get; set; } = new();

        [JsonPropertyName("end")]
        public Position End { get; set; } = new();
    }

    // ---- PublishDiagnostics ----

    public sealed class PublishDiagnosticsParams
    {
        [JsonPropertyName("uri")]
        public string Uri { get; set; } = "";

        [JsonPropertyName("diagnostics")]
        public DiagnosticInfo[] Diagnostics { get; set; } = [];
    }

    public sealed class DiagnosticInfo
    {
        [JsonPropertyName("range")]
        public Range Range { get; set; } = new();

        [JsonPropertyName("severity")]
        public int Severity { get; set; } = 1; // 1=Error, 2=Warning, 3=Info, 4=Hint

        [JsonPropertyName("message")]
        public string Message { get; set; } = "";
    }
}
