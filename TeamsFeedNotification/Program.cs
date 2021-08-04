using Azure.Identity;
using Microsoft.Graph;
using System;
using System.Threading.Tasks;

namespace TeamsFeedNotification
{
    class Program
    {
        static async Task Main(string[] args)
        {
            // Create a GraphServiceClient instance with the defined TokenCredential
            string[] scopes = { ".default" };

            // And a TokenCredential implementation
            var azureCredential = new DefaultAzureCredential();

            // Create a GraphServiceClient instance with the defined TokenCredential
            var graphClient = new GraphServiceClient(azureCredential, scopes);

            try
            {
                await graphClient.Users["paolo@piasysdev.onmicrosoft.com"]
                    .Teamwork
                    .SendActivityNotification(
                        topic: new TeamworkActivityTopic {
                            Source = TeamworkActivityTopicSource.Text,
                            Value = "Here is a notification for you!",
                            WebUrl = "https://teams.microsoft.com/l/message/19%3Ae2cd01a2b97e4f9eae1a8d76e65780f0%40thread.tacv2/1628084133575?groupId=face8309-4630-4213-a2da-513c1aa39046&tenantId=6c94075a-da0a-4c6a-8411-badf652e8b53&createdTime=1628084133575&parentMessageId=1628084133575"
                        },
                        activityType: "CustomNotification",
                        previewText: new ItemBody
                        {
                            Content = "Preview of the notification!"
                        }                        
                    ).Request().PostAsync();
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("Notification sent!");
            }
            catch (Exception ex)
            {
                Console.ForegroundColor = ConsoleColor.Red;
                Console.WriteLine(ex.Message);
                return;
            }
        }
    }
}
