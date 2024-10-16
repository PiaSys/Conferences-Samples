namespace WebAPISecuredMinimal
{
    public class Products : BaseResponse
    {
        public List<Product> Items { get; set; }
    }

    public class Product
    {
        public string Code { get; set; }

        public string Description { get; set; }

        public decimal Price { get; set; }

        public string Picture { get; set; }

        public DateTime LaunchDate { get; set; }

        public int Sales { get; set; }
    }
}