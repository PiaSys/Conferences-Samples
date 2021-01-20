using System;
using System.Threading.Tasks;
using PnP.Framework;
using Microsoft.SharePoint.Client;
using System.Security;

namespace PnPFrameworkDemoTechBites
{
    class Program
    {
        static async Task Main(string[] args)
        {
            Console.WriteLine("Username:");
            var username = Console.ReadLine();

            Console.WriteLine("Password:");
            var password = GetPassword();

            Console.WriteLine("\nSite URL:");
            var siteUrl = Console.ReadLine();


            var authManager = new AuthenticationManager(username, password);
            using (var context = await authManager.GetContextAsync(siteUrl))
            {
                var web = context.Web;
                context.Load(web, w => w.Id, w => w.Title);
                await context.ExecuteQueryRetryAsync();

                Console.WriteLine($"{web.Id} - {web.Title}");

                var documents = web.GetListByTitle("Documents", l => l.Id, l => l.Title);

                Console.WriteLine($"{documents.Id} - {documents.Title}");
            }
        }

        static SecureString GetPassword()
        {
            var pwd = new SecureString();
            while (true)
            {
                ConsoleKeyInfo i = Console.ReadKey(true);
                if (i.Key == ConsoleKey.Enter)
                {
                    break;
                }
                else if (i.Key == ConsoleKey.Backspace)
                {
                    if (pwd.Length > 0)
                    {
                        pwd.RemoveAt(pwd.Length - 1);
                        Console.Write("\b \b");
                    }
                }
                else if (i.KeyChar != '\u0000') // KeyChar == '\u0000' if the key pressed does not correspond to a printable character, e.g. F1, Pause-Break, etc
                {
                    pwd.AppendChar(i.KeyChar);
                    Console.Write("*");
                }
            }
            return pwd;
        }
    }
}
