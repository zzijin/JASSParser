using JassSyntaxAnalyzer;

// Load standard library as prelude for semantic analysis
var commonTree = SyntaxTree.Parse(File.ReadAllText(@".\JassRef\common.j"));
var blizzardTree = SyntaxTree.Parse(File.ReadAllText(@".\JassRef\blizzard.j"));

TestFile(@".\JassRef\common.j", isPrelude: true);
TestFile(@".\JassRef\blizzard.j", isPrelude: true);
TestFile(@".\JassTest\TestCode01.j", isPrelude: false);
TestFile(@".\JassTest\TestCode02.j", isPrelude: false);
TestFile(@".\JassTest\TestCode_Full.j", isPrelude: false);

void TestFile(string path, bool isPrelude)
{
    var text = File.ReadAllText(path);
    var tree = SyntaxTree.Parse(text);
    Console.Write($"{path}: {tree.Root.Declarations.Count} decls, {tree.Diagnostics.Count} syntax errors");

    if (tree.Diagnostics.Count == 0 && !isPrelude)
    {
        var binder = new Binder();
        binder.LoadPrelude(commonTree.Root);
        binder.LoadPrelude(blizzardTree.Root);
        binder.Bind(tree.Root);
        Console.Write($", {binder.Diagnostics.Count} semantic errors");
        foreach (var d in binder.Diagnostics.Take(10))
            Console.Write($"\n  {d}");
    }
    else if (tree.Diagnostics.Count > 0)
    {
        foreach (var d in tree.Diagnostics.Take(5))
            Console.Write($"\n  {d}");
    }
    Console.WriteLine();
}
