using System;
using System.Threading.Tasks;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using PnP.Core.QueryModel;
using PnP.Core.Model;
using PnP.Core.Services;
using PnP.Core.Services.Builder.Configuration;
using PnP.Core.Auth.Services.Builder.Configuration;
using System.Linq;

namespace PnPCoreSDKQueryModel
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
                    #region Query Model Demo

                    /******************************************
                    * QUERY MODEL DEMO
                    *******************************************/

                    // Here we load the selected properties into the current web object
                    await context.Web.LoadAsync(p => p.Title, p => p.Lists);

                    // Use the requested object
                    Console.WriteLine(context.Web.Title);

                    // If you want to use the collection of lists that you just loaded
                    foreach (var l in context.Web.Lists.AsRequested())
                    {
                        Console.WriteLine($"{l.Id} - {l.Title}");
                    }
                    Wait();

                    // Otherwise, whenever you query or browse (foreach) a collection, it will trigger a LINQ query
                    foreach (var l in context.Web.Lists)
                    {
                        Console.WriteLine($"{l.Id} - {l.Title}");
                    }
                    Wait();

                    // This is a LINQ query
                    var queryLists = context.Web.Lists
                        .OrderBy(l => l.Title)
                        .QueryProperties(l => l.Id, l => l.Title); // This is a custom extension method that we introduced

                    // We actually execute the query when we go through all of its items (foreach = GetEnumerator)
                    foreach (var l in queryLists)
                    {
                        Console.WriteLine($"{l.Id} - {l.Title}");
                    }
                    Wait();

                    // Or you can use the LINQ query syntax
                    // This is another LINQ query
                    var queryListsLinq = 
                        (from l in context.Web.Lists
                            where l.TemplateType == PnP.Core.Model.SharePoint.ListTemplateType.DocumentLibrary
                            orderby l.Title
                            select l)
                        .QueryProperties(l => l.Id, l => l.Title); // The extension method is not available in LINQ syntax

                    // We actually execute the query when we go through all of its items (foreach = GetEnumerator)
                    foreach (var l in queryListsLinq)
                    {
                        Console.WriteLine($"{l.Id} - {l.Title}");
                    }
                    Wait();

                    // Here we get a new web object and we load the selected properties into it
                    var web = await context.Web.GetAsync(
                        p => p.Title,
                        p => p.Lists.QueryProperties(l => l.Id, l => l.Title)); // Notice the nested QueryProperties

                    Console.WriteLine(web.Title);

                    // Use the collection of lists that you just loaded
                    foreach (var l in web.Lists.AsRequested())
                    {
                        Console.WriteLine($"{l.Id} - {l.Title}");
                    }
                    Wait();

                    // Add a request to the current batch
                    var webBatched = await context.Web.GetBatchAsync(context.CurrentBatch, w => w.Id, w => w.Title);

                    // You can query data using explicit batching, too
                    var queryListsLinqBatch =
                        await context.Web.Lists
                        .OrderBy(l => l.Title)
                        .QueryProperties(l => l.Id, l => l.Title)
                        .AsBatchAsync(); // Adds the request to the current batch

                    Console.WriteLine($"Is the batched query available? {queryListsLinqBatch.IsAvailable}");
                    Wait();

                    // Execute the batch
                    await context.ExecuteAsync();

                    Console.WriteLine($"Is the batched query available? {queryListsLinqBatch.IsAvailable}");

                    foreach (var l in queryListsLinqBatch)
                    {
                        Console.WriteLine($"{l.Id} - {l.Title}");
                    }
                    Wait();

                    #endregion

                    #region Paging Demo

                    /******************************************
                    * PAGING DEMO                     
                    *******************************************/

                    // Let's create a new channel for demo purposes

                    // Get a channel with some messages
                    var channelForPaging = await context.Team.Channels.FirstOrDefaultAsync(c => c.DisplayName == "Paging test 877851905");

                    // Full load of messages
                    await channelForPaging.LoadAsync(p => p.Messages);
                    Console.WriteLine($"We've got {channelForPaging.Messages.Length} messages");
                    Wait();

                    // Implicit async paging (this is the best option!)
                    await foreach (var m in channelForPaging.Messages)
                    {
                        Console.WriteLine($"{m.Id}: {m.Body.Content}");
                    }
                    Wait();

                    // Implicit sync paging (not optimal, but still really simple)
                    foreach (var m in channelForPaging.Messages)
                    {
                        Console.WriteLine($"{m.Id}: {m.Body.Content}");
                    }
                    Wait();

                    // Manual paging

                    int pageCount = 0;
                    int pageSize = 10;

                    while (true)
                    {
                        var page = channelForPaging.Messages.Skip(pageSize * pageCount).Take(pageSize).ToArray();

                        // Use the current page ...
                        foreach (var m in page)
                        {
                            Console.WriteLine($"{m.Id}: {m.Body.Content}");
                        }

                        pageCount++;
                        if (page.Length < pageSize)
                        {
                            break;
                        }
                    }
                    Wait();

                    #endregion
                }
            }
        }

        static void Wait()
        {
            Console.WriteLine("Press ENTER to continue ...");
            Console.ReadLine();
        }
    }
}
