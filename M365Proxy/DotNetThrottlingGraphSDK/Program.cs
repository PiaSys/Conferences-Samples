using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Configuration;
using Microsoft.Identity.Client;
using System.Net.Http.Headers;
using Polly.Extensions.Http;
using System.Net;
using Azure.Identity;
using Microsoft.Graph.Models;
using Microsoft.Graph;
using System.Net.Http;

namespace DotNetThrottlingGraphSDK
{
    class Program
    {
        public static async Task Main(string[] args)
        {
            var host = Host.CreateDefaultBuilder()
                .ConfigureLogging((hostingContext, logging) =>
                {
                    logging.AddEventSourceLogger();
                    logging.AddConsole();
                })
                .ConfigureServices((hostingContext, services) =>
                {
                    var clientId = hostingContext.Configuration.GetValue<string>("AZURE_CLIENT_ID");
                    var tenantId = hostingContext.Configuration.GetValue<string>("AZURE_TENANT_ID");
                    var scopesString = hostingContext.Configuration.GetValue<string>("SCOPES");
                    var scopes = scopesString?.Split(" ");

                    InteractiveBrowserCredentialOptions interactiveBrowserCredentialOptions = new InteractiveBrowserCredentialOptions()
                    {
                        ClientId = clientId
                    };
                    InteractiveBrowserCredential interactiveBrowserCredential = new InteractiveBrowserCredential(interactiveBrowserCredentialOptions);

                    GraphServiceClient graphClient = new GraphServiceClient(interactiveBrowserCredential, scopes);
                    services.AddSingleton(graphClient);
                })
                // Let the builder know we're running in a console
                .UseConsoleLifetime()
                // Add services to the container
                .Build();

            await host.StartAsync();

            using (var scope = host.Services.CreateScope())
            {
                // Get the Graph SDK client
                var graphClient = scope.ServiceProvider.GetService<GraphServiceClient>();
                if (graphClient == null)
                {
                    throw new Exception("Invalid services configuration!");
                }

                try
                {
                    var me = await graphClient.Me.GetAsync();
                    Console.WriteLine(me.DisplayName);
                }
                catch (InvalidOperationException ex) when (ex.Message == "Too many retries performed")
                {
                    Console.ForegroundColor = ConsoleColor.Red;
                    await Console.Out.WriteLineAsync("You've been throttled!");
                    await Console.Out.WriteLineAsync(ex.InnerException.Message);
                    Console.ResetColor();
                }
            }
        }
    }
}