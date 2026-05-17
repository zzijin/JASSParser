# JASSParser

魔兽争霸3 地图编辑器 JASS 脚本语言的解析器，基于 .NET。

## 项目结构

```
JASSParser/
├── JassSyntaxAnalyzer/      解析器核心库
│   ├── LexicalAnalyzer/     词法分析（Lexer）
│   ├── Syntax/              语法分析（Parser + AST 节点）
│   ├── SemanticAnalyzer/    语义分析（Binder + 符号表）
│   └── CodeAnalyzer/        诊断信息
├── JassParserTest/          测试程序
└── JassRef/                 参考文件
    ├── common.j             Warcraft III 核心 API
    └── blizzard.j           Blizzard 封装 API
```

## 使用

```csharp
// 1. 语法分析
var tree = SyntaxTree.Parse(jassSourceText);
// tree.Root          — AST 根节点 (CompilationUnitSyntax)
// tree.Diagnostics   — 语法错误列表

// 2. 语义分析（需要加载标准库作为上下文）
var commonTree = SyntaxTree.Parse(File.ReadAllText("common.j"));
var blizzardTree = SyntaxTree.Parse(File.ReadAllText("blizzard.j"));

var binder = new Binder();
binder.LoadPrelude(commonTree.Root);    // 加载核心 API 声明
binder.LoadPrelude(blizzardTree.Root);  // 加载 Blizzard API 声明
binder.Bind(tree.Root);                 // 检查目标文件
// binder.Diagnostics — 语义错误（未定义函数/变量、重复声明等）
```

## 支持的 JASS 语法

- **声明**: `type`、`native`、`globals`/`endglobals`、`function`/`endfunction`
- **语句**: `local`、`set`、`call`、`if`/`elseif`/`else`/`endif`、`loop`/`exitwhen`/`endloop`、`return`、`debug`
- **表达式**: 字面量、标识符、二元/一元运算、函数调用、数组访问、`function` 引用（`code` 类型）
- **字面量**: 整数、实数、字符串、四字符码 `'XXXX'`、布尔、`null`、`$` 十六进制
- **注释**: `//` 单行
