using System;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using PnP.Core.QueryModel;
using PnP.Core.Services;
using PnP.Core.Services.Builder.Configuration;
using PnP.Core.Auth.Services.Builder.Configuration;
using System.Linq;

namespace PnPCoreSDK_Hello_World
{
    class Program
    {
        static async Task Main(string[] args)
        {
            var host = Host.CreateDefaultBuilder()
            .ConfigureLogging((hostingContext, logging) =>
            {
                logging.AddEventSourceLogger();
                logging.AddConsole();
            })
            .ConfigureServices((hostingContext, services) =>
            {
                services.AddPnPCore();
                services.Configure<PnPCoreOptions>(hostingContext.Configuration.GetSection("PnPCore"));
                services.AddPnPCoreAuthentication();
                services.Configure<PnPCoreAuthenticationOptions>(hostingContext.Configuration.GetSection("PnPCore"));
            })
            // Let the builder know we're running in a console
            .UseConsoleLifetime()
            // Add services to the container
            .Build();

            await host.StartAsync();

            using (var scope = host.Services.CreateScope())
            {
                var pnpContextFactory = scope.ServiceProvider.GetRequiredService<IPnPContextFactory>();

                using (var context = await pnpContextFactory.CreateAsync("DemoSite"))
                {
                    var web = await context.Web.GetAsync(p => p.Title, p => p.Lists, p => p.MasterUrl);

                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("===Web (REST)===");
                    Console.WriteLine($"Title: {web.Title}");
                    Console.WriteLine($"# Lists: {web.Lists.Length}");
                    Console.WriteLine($"Master page url: {web.MasterUrl}");
                    Console.ResetColor();

                    // Getting the team connected to this Modern Team site ==> Microsoft Graph query
                    var team = await context.Team.GetAsync();

                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("===Team (Graph v1)===");
                    Console.WriteLine($"Name: {team.DisplayName}");
                    Console.WriteLine($"Visibility: {team.Visibility}");
                    Console.WriteLine($"Funsettings.AllowGiphy: {team.FunSettings.AllowGiphy}");
                    Console.ResetColor();

                    // We can retrieve the whole list of lists 
                    // and their items in the context web
                    var listsQuery = (from l in context.Web.Lists.QueryProperties(l => l.Id, l => l.Title, l => l.Description)
                                      orderby l.Title descending
                                      select l);

                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("===LINQ: Retrieve list and list items===");
                    foreach (var list in listsQuery.ToList())
                    {
                        Console.WriteLine($"{list.Id} - {list.Title} - Items count: {list.Items.Length}");
                    }
                    Console.ResetColor();
                }
            }
        }
    }
}
