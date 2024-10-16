using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MICustomApplications.Provider
{
    public class Products
    {
        public List<Product> Items { get; set; }

        public string ConsumerId { get; set; }
    }

    public class Product
    {
        public string Code { get; set; }

        public string Description { get; set; }

        public decimal Price { get; set; }
    }
}
