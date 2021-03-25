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

                ShowAuthenticationModel("Interactive");
                using (var context = await pnpContextFactory.CreateAsync("TestSiteInteractive"))
                {
                    var web = await context.Web.GetAsync(p => p.Title, p => p.Lists, p => p.MasterUrl);

                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("===Web (REST)===");
                    Console.WriteLine($"Title: {web.Title}");
                    Console.WriteLine($"# Lists: {web.Lists.Length}");
                    Console.WriteLine($"Master page url: {web.MasterUrl}");
                    Console.ResetColor();
                }

                ShowAuthenticationModel("Credential Manager");
                using (var context = await pnpContextFactory.CreateAsync("TestSiteCredentialManager"))
                {
                    var web = await context.Web.GetAsync(p => p.Title, p => p.Lists, p => p.MasterUrl);

                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("===Web (REST)===");
                    Console.WriteLine($"Title: {web.Title}");
                    Console.WriteLine($"# Lists: {web.Lists.Length}");
                    Console.WriteLine($"Master page url: {web.MasterUrl}");
                    Console.ResetColor();
                }

                ShowAuthenticationModel("Device Code");
                using (var context = await pnpContextFactory.CreateAsync("TestSiteDeviceCode",
                    (authProvider) =>
                    {
                        ((DeviceCodeAuthenticationProvider)authProvider)
                            .DeviceCodeVerification = DeviceCodeVerificationCallback;
                    }))
                {
                    var web = await context.Web.GetAsync(p => p.Title, p => p.Lists, p => p.MasterUrl);

                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("===Web (REST)===");
                    Console.WriteLine($"Title: {web.Title}");
                    Console.WriteLine($"# Lists: {web.Lists.Length}");
                    Console.WriteLine($"Master page url: {web.MasterUrl}");
                    Console.ResetColor();
                }

                ShowAuthenticationModel("X.509 Certificate App Only");
                using (var context = await pnpContextFactory.CreateAsync("TestSiteX509Certificate"))
                {
                    var web = await context.Web.GetAsync(p => p.Title, p => p.Lists, p => p.MasterUrl);

                    Console.ForegroundColor = ConsoleColor.Yellow;
                    Console.WriteLine("===Web (REST)===");
                    Console.WriteLine($"Title: {web.Title}");
                    Console.WriteLine($"# Lists: {web.Lists.Length}");
                    Console.WriteLine($"Master page url: {web.MasterUrl}");
                    Console.ResetColor();
                }
            }
        }

        private static void ShowAuthenticationModel(string model)
        {
            Console.ForegroundColor = ConsoleColor.Blue;
            Console.WriteLine($"Press ENTER to show '{model}' authentication model ...");
            Console.ResetColor();
            Console.ReadLine();
        }

        private static void DeviceCodeVerificationCallback(DeviceCodeNotification notification)
        {
            // Write the Device Code in the Output window
            System.Diagnostics.Process.Start(
                new System.Diagnostics.ProcessStartInfo
                {
                    FileName = $"PowerShell.exe",
                    Arguments = $"-Command \"'{ notification.UserCode }' | clip\"",
                    UseShellExecute = true,
                    WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden
                });

            // Start the browser to input the Device Code
            System.Diagnostics.Process.Start(
                new System.Diagnostics.ProcessStartInfo
                {
                    FileName = notification.VerificationUrl.ToString(),
                    UseShellExecute = true
                });
        }
    }
}
