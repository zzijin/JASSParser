namespace JassLanguageServer
{
    internal class Program
    {
        static void Main(string[] args)
        {
            var server = new LspServer();
            server.Run();
        }
    }
}
