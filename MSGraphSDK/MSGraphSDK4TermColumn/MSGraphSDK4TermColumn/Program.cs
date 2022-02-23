using Azure.Identity;
using Microsoft.Graph;
using System;
using System.Threading.Tasks;
using System.Linq;

namespace MSGraphSDK4TermColumn
{
    class Program
    {
        static async Task Main(string[] args)
        {
            await CreateMetadataColumn();
        }

        static async Task CreateMetadataColumn()
        {
            // Define the permission scopes that you need
            string[] scopes = { ".default" };

            #region Client Credentials

            var tenantId = "<tenat-id>";
            var clientId = "<client-id>";
            var clientSecret = "<secret>";

            #endregion

            // And a TokenCredential implementation
            var clientSecretCredential = new ClientSecretCredential(
                tenantId,
                clientId,
                clientSecret);

            // GraphServiceClient now supports as TokenCredential input
            var graphClient = new GraphServiceClient(clientSecretCredential, scopes);

            // Get a reference to the Term Set in the Term Store
            var site = await graphClient.Sites.GetByPath("sites/GraphProvisioningSample", "piasysdev.sharepoint.com")
                .Request().GetAsync();
            var termStore = await graphClient.Sites[site.Id].TermStore.Request().GetAsync();
            var termGroup = (await graphClient.Sites[site.Id].TermStores[termStore.Id].Groups
                .Request().Filter("displayName eq 'PiaSys.com'").GetAsync()).FirstOrDefault();
            var termSet = (await graphClient.Sites[site.Id].TermStores[termStore.Id].Groups[termGroup.Id].Sets
                .Request().GetAsync()).FirstOrDefault();

            var testColumn = await graphClient.Sites[site.Id].Columns["38712997-15f4-4230-9c54-78f9127986d3"].Request().GetAsync();

            // Add the new taxonomy field
            var siteColumn = await graphClient.Sites[site.Id].Columns.Request().AddAsync(
                new ColumnDefinition
                {
                    DisplayName = "PiaSysTaxonomyField",
                    Name = "PiaSysTaxonomyField",
                    Description = "PiaSys Taxonomy Field",
                    Term = new TermColumn
                    {
                        ODataType = "microsoft.graph.termColumn",
                        AllowMultipleValues = true,
                        ShowFullyQualifiedName = true,
                        TermSet = termSet
                    }
                }
                );

        }
    }
}
