using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using System.Threading.Tasks;

namespace SitesSelected.ConsumerApp
{
    class Program
    {
        static async Task Main(string[] args)
        {
            // Setup Host
            var host = Host.CreateDefaultBuilder()
                    .ConfigureLogging((hostingContext, logging) =>
                    {
                        logging.AddEventSourceLogger();
                        logging.AddConsole();
                    })
                    .ConfigureAppConfiguration(app =>
                    {
                        app.AddJsonFile("appsettings.json");
                        app.AddUserSecrets<Program>();
                    })
                    .ConfigureServices(services =>
                    {
                        services.AddSingleton<SitesSelectedDemoService>();
                    })
                    // Let the builder know we're running in a console
                    .UseConsoleLifetime()
                    // Add services to the container
                    .Build();

            await host.StartAsync();

            using (var scope = host.Services.CreateScope())
            {
                var sitesSelectedService = scope.ServiceProvider.GetRequiredService<SitesSelectedDemoService>();

                await sitesSelectedService.RunAsync();
            }
        }
    }
}
