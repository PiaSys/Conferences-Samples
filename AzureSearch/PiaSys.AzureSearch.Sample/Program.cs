using Azure;
using Azure.Search.Documents;
using System;
using System.Threading.Tasks;

namespace PiaSys.AzureSearch.Sample
{
    class Program
    {
        static async Task Main(string[] args)
        {
            var searchServiceEndpoint = "https://piasystechbitessearch.search.windows.net";
            var indexName = "azureblob-index";

            #region queryKey value definition
            var queryKey = "*****";
            #endregion

            SearchClient searchClient = new SearchClient(
                new Uri(searchServiceEndpoint),
                indexName,
                new AzureKeyCredential(queryKey));

            var options = new SearchOptions();

            // You can select fields to retrieve
            options.Select.Add("metadata_storage_name");
            options.Select.Add("metadata_title");
            options.IncludeTotalCount = true;

            // You can sort by
            // options.OrderBy.Add("metadata_title");

            // You can define filters using the OData $filter syntax
            // options.Filter = "title eq 'something'";

            // You can configure paging
            options.Skip = 5;
            options.Size = 10;

            var results = await searchClient.SearchAsync<ResultItem>("italia", options);

            Console.WriteLine($"Total number of results: {results.Value.TotalCount}");
            
            await foreach (var r in results.Value.GetResultsAsync())
            {
                Console.WriteLine($"Found {r.Document.metadata_storage_name} with score {r.Score}");
            }
        }
    }

    public class ResultItem
    {
        public string metadata_storage_name { get; set; }

        public string metadata_title { get; set; }
    }
}
