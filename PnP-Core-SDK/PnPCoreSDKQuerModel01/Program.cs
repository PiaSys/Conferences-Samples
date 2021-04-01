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
using PnP.Core.Auth;

namespace PnPCoreSDKAuthDemo
{
    class Program
    {
        static async Task Main(string[] args)
        {
            #region Dependency Injection plumbing

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

            #endregion

            using (var scope = host.Services.CreateScope())
            {
                var pnpContextFactory = scope.ServiceProvider.GetRequiredService<IPnPContextFactory>();

                using (var context = await pnpContextFactory.CreateAsync("TestSite"))
                {
                    // Here we load the selected properties into the current web object
                    await context.Web.LoadAsync(p => p.Title, p => p.Lists);

                    // Use the requested object
                    Console.WriteLine(context.Web.Title);

                    // If you want to use the collection of lists that you just loaded
                    foreach (var l in context.Web.Lists.AsRequested())
                    {
                        Console.WriteLine($"{l.Id} - {l.Title}");
                    }
                    Console.ReadLine();

                    // Otherwise, whenever you query or browse (foreach) a collection, it will trigger a LINQ query
                    foreach (var l in context.Web.Lists)
                    {
                        Console.WriteLine($"{l.Id} - {l.Title}");
                    }
                    Console.ReadLine();

                    // This is a LINQ query
                    var queryLists = context.Web.Lists
                        .OrderBy(l => l.Title)
                        .QueryProperties(l => l.Id, l => l.Title);

                    // We actually execute the query when we go through all of its items (foreach)
                    foreach (var l in queryLists)
                    {
                        Console.WriteLine($"{l.Id} - {l.Title}");
                    }
                    Console.ReadLine();

                    // Or you can use the LINQ query syntax
                    // This is a LINQ query
                    var queryListsLinq = 
                        (from l in context.Web.Lists
                            where l.TemplateType == PnP.Core.Model.SharePoint.ListTemplateType.DocumentLibrary
                            orderby l.Title
                            select l)
                        .QueryProperties(l => l.Id, l => l.Title);

                    // We actually execute the query when we go through all of its items (foreach)
                    foreach (var l in queryListsLinq)
                    {
                        Console.WriteLine($"{l.Id} - {l.Title}");
                    }
                    Console.ReadLine();

                    // Here load the selected  properties into a new web object
                    var web = await context.Web.GetAsync(
                        p => p.Title,
                        p => p.Lists.QueryProperties(l => l.Id, l => l.Title));

                    Console.WriteLine(web.Title);

                    // Use the collection of lists that you just loaded
                    foreach (var l in web.Lists.AsRequested())
                    {
                        Console.WriteLine($"{l.Id} - {l.Title}");
                    }
                }
            }
        }
    }
}
