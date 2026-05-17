# JASSParser

魔兽争霸3地图编辑器 JASS 脚本语言的解析器，基于 .NET 8.0。

## 项目结构

```
JassSyntaxAnalyzer/
├── LexicalAnalyzer/     词法分析（Lexer）
├── Syntax/              语法分析（Parser + AST 节点）
├── SemanticAnalyzer/    语义分析（Binder + 符号表）
└── CodeAnalyzer/        诊断信息
```

## 参考文件

`JassRef/common.j` 和 `JassRef/blizzard.j` 是魔兽争霸3的标准 JASS API 定义文件。
