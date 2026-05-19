import * as vscode from 'vscode';
import { spawn, ChildProcess } from 'child_process';
import * as path from 'path';
import * as fs from 'fs';

let serverProcess: ChildProcess | null = null;

export async function activate(context: vscode.ExtensionContext) {
    // Find the language server executable
    const serverPath = findServerPath(context);
    if (!serverPath) {
        vscode.window.showErrorMessage('JASS: Could not find JassLanguageServer');
        return;
    }

    // Start language server
    serverProcess = spawn(serverPath, [], {
        stdio: ['pipe', 'pipe', 'pipe'],
    });

    serverProcess.on('error', (err) => {
        vscode.window.showErrorMessage(`JASS server error: ${err.message}`);
    });

    serverProcess.on('exit', (code) => {
        if (code !== 0) {
            vscode.window.showWarningMessage(`JASS server exited with code ${code}`);
        }
    });

    // Register document sync
    context.subscriptions.push(
        vscode.workspace.onDidOpenTextDocument(handleDocument),
        vscode.workspace.onDidChangeTextDocument(handleChange),
        vscode.workspace.onDidCloseTextDocument(handleClose),
        vscode.languages.registerHoverProvider('jass', hoverProvider),
        vscode.languages.registerCompletionItemProvider('jass', completionProvider),
        vscode.languages.registerDefinitionProvider('jass', definitionProvider),
    );

    // Send initialize for already-open documents
    for (const doc of vscode.workspace.textDocuments) {
        if (doc.languageId === 'jass') {
            sendDidOpen(doc);
        }
    }

    vscode.window.showInformationMessage('JASS Language Server started');
}

export function deactivate() {
    if (serverProcess) {
        serverProcess.stdin?.end();
        serverProcess.kill();
        serverProcess = null;
    }
}

function findServerPath(context: vscode.ExtensionContext): string | null {
    const candidates = [
        path.join(context.extensionPath, 'server', 'JassLanguageServer.exe'),
        path.join(context.extensionPath, 'server', 'JassLanguageServer'),
    ];
    for (const c of candidates) {
        if (fs.existsSync(c)) return c;
    }
    return null;
}

// ---- LSP communication ----

function sendMessage(message: object) {
    if (!serverProcess?.stdin) return;
    const json = JSON.stringify(message);
    const buffer = Buffer.from(json, 'utf-8');
    const header = `Content-Length: ${buffer.length}\r\n\r\n`;
    serverProcess.stdin.write(header);
    serverProcess.stdin.write(buffer);
}

let messageId = 0;

function sendRequest(method: string, params: object) {
    sendMessage({
        jsonrpc: '2.0',
        id: ++messageId,
        method,
        params,
    });
}

function sendNotification(method: string, params: object) {
    sendMessage({
        jsonrpc: '2.0',
        method,
        params,
    });
}

function sendInitialize(uri: string) {
    sendRequest('initialize', {
        processId: process.pid,
        rootUri: vscode.workspace.workspaceFolders?.[0]?.uri.toString() ?? null,
        capabilities: {},
    });
    sendNotification('initialized', {});
}

// ---- Document events ----

function handleDocument(doc: vscode.TextDocument) {
    if (doc.languageId !== 'jass') return;
    sendDidOpen(doc);
}

function sendDidOpen(doc: vscode.TextDocument) {
    sendNotification('textDocument/didOpen', {
        textDocument: {
            uri: doc.uri.toString(),
            languageId: 'jass',
            version: doc.version,
            text: doc.getText(),
        },
    });
}

async function handleChange(e: vscode.TextDocumentChangeEvent) {
    if (e.document.languageId !== 'jass') return;
    sendNotification('textDocument/didChange', {
        textDocument: {
            uri: e.document.uri.toString(),
            version: e.document.version,
        },
        contentChanges: [{ text: e.document.getText() }],
    });
}

function handleClose(doc: vscode.TextDocument) {
    if (doc.languageId !== 'jass') return;
    sendNotification('textDocument/didClose', {
        textDocument: { uri: doc.uri.toString() },
    });
}

// ---- Language features (client-side fallback, server is primary) ----

const hoverProvider: vscode.HoverProvider = {
    provideHover(document, position, token) {
        return new Promise((resolve) => {
            sendRequest('textDocument/hover', {
                textDocument: { uri: document.uri.toString() },
                position: { line: position.line, character: position.character },
            });
            // LSP hover responses come via background parsing; return null for immediate
            resolve(null);
        });
    },
};

const completionProvider: vscode.CompletionItemProvider = {
    provideCompletionItems(document, position, token) {
        // Return basic completions immediately as fallback
        const items: vscode.CompletionItem[] = [];
        const keywords = [
            'function', 'endfunction', 'takes', 'returns', 'local', 'set', 'call',
            'if', 'then', 'else', 'elseif', 'endif', 'loop', 'endloop', 'exitwhen',
            'return', 'globals', 'endglobals', 'type', 'extends', 'native', 'constant',
            'null', 'true', 'false', 'not', 'and', 'or', 'debug', 'array',
            'integer', 'real', 'boolean', 'string', 'code', 'handle', 'nothing',
        ];
        for (const kw of keywords) {
            const item = new vscode.CompletionItem(kw, vscode.CompletionItemKind.Keyword);
            items.push(item);
        }
        return items;
    },
};

const definitionProvider: vscode.DefinitionProvider = {
    provideDefinition(document, position, token) {
        sendRequest('textDocument/definition', {
            textDocument: { uri: document.uri.toString() },
            position: { line: position.line, character: position.character },
        });
        return null;
    },
};
