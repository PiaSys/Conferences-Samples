using Azure.Identity;
using Microsoft.Graph;
using System;
using System.Collections.Generic;
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

            var templateParameters = new List<Microsoft.Graph.KeyValuePair>()
            {
                new Microsoft.Graph.KeyValuePair
                {
                    Name = "sender",
                    Value = "DemoApp"
                }
            };

            try
            {
                // Notification sent to a specific user
                await graphClient.Users["paolo@piasysdev.onmicrosoft.com"] // Myself
                    .Teamwork
                    .SendActivityNotification(
                        topic: new TeamworkActivityTopic {
                            Source = TeamworkActivityTopicSource.Text,
                            Value = "Here is a notification for you!",
                            WebUrl = "https://teams.microsoft.com/l/message/19%3Ae2cd01a2b97e4f9eae1a8d76e65780f0%40thread.tacv2/1628084133575?groupId=face8309-4630-4213-a2da-513c1aa39046&tenantId=6c94075a-da0a-4c6a-8411-badf652e8b53&createdTime=1628084133575&parentMessageId=1628084133575"
                        },
                        activityType: "customNotification",
                        previewText: new ItemBody
                        {
                            Content = "Preview of the notification!"
                        },
                        templateParameters: templateParameters
                    ).Request().PostAsync();
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("Notification sent to User!");

                await graphClient.Teams["face8309-4630-4213-a2da-513c1aa39046"]
                    .SendActivityNotification(
                        topic: new TeamworkActivityTopic
                        {
                            Source = TeamworkActivityTopicSource.Text,
                            Value = "Here is a notification for you!",
                            WebUrl = "https://teams.microsoft.com/l/message/19%3Ae2cd01a2b97e4f9eae1a8d76e65780f0%40thread.tacv2/1628084133575?groupId=face8309-4630-4213-a2da-513c1aa39046&tenantId=6c94075a-da0a-4c6a-8411-badf652e8b53&createdTime=1628084133575&parentMessageId=1628084133575"
                        },
                        activityType: "customNotification",
                        previewText: new ItemBody
                        {
                            Content = "Preview of the notification!"
                        },
                        templateParameters: templateParameters,
                        recipient: new AadUserNotificationRecipient
                        {
                            UserId = "bea7a848-0459-4bee-9034-5513ee7f66e0" // Myself
                        }
                    ).Request().PostAsync();
                Console.ForegroundColor = ConsoleColor.Green;
                Console.WriteLine("Notification sent to user in a Team!");
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
