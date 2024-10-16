using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Graph;
using Microsoft.Identity.Abstractions;
using Microsoft.Identity.Web;
using Microsoft.Identity.Web.TokenCacheProviders.InMemory;

// Create a configuration object from appsettings.json
var configuration = new ConfigurationBuilder()
    .AddJsonFile("appsettings.json", optional: false, reloadOnChange: true)
    .AddUserSecrets<Program>()
    .Build();

// Create a service collection and register the configuration and settings
var services = new ServiceCollection();
services
    .AddTokenAcquisition()
    .AddHttpClient()
    .AddMicrosoftGraph()
    .AddInMemoryTokenCaches()
    .AddSingleton<IConfiguration>(configuration)
    .Configure<MicrosoftIdentityApplicationOptions>(option =>
    {
        configuration.GetSection("EntraId").Bind(option);
    });

// Resolve the dependency injection
var serviceProvider = services.BuildServiceProvider();

try
{
    // Call Microsoft Graph using the Graph SDK
    GraphServiceClient graphServiceClient = serviceProvider.GetRequiredService<GraphServiceClient>();
    var users = await graphServiceClient.Users
        .GetAsync(r => r.Options.WithAppOnly());
    Console.WriteLine($"{users.Value.Count} users");
}
catch (ServiceException e)
{
    Console.WriteLine("We could not retrieve the user's list: " + $"{e}");
}
        