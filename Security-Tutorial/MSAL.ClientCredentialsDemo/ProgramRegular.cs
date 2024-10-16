using Microsoft.Extensions.DependencyInjection;
using Microsoft.Graph;
using Microsoft.Identity.Web;

public static class ProgramRegular
{
    public static async Task Main()
    {
        // Get the Token acquirer factory instance. By default it reads an appsettings.json
        // file if it exists in the same folder as the app
        TokenAcquirerFactory tokenAcquirerFactory = TokenAcquirerFactory.GetDefaultInstance("EntraId");

        // Configure the application options to be read from the configuration
        // and add the services you need (Graph, token cache)
        // By default, you get an in-memory token cache.
        IServiceCollection services = tokenAcquirerFactory.Services;
        services.AddMicrosoftGraph();

        // Resolve the dependency injection.
        var serviceProvider = tokenAcquirerFactory.Build();

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
    }
}

       