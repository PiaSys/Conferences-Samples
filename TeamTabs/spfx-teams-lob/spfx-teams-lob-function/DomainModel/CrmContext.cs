using LobSample.DomainModel;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LobSample.DomainModel
{
    public class CrmContext : DbContext
    {
        public DbSet<Customer> Customers { get; set; }

        public CrmContext(DbContextOptions<CrmContext> options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Set the default schema to wh
            modelBuilder.HasDefaultSchema("crm");

            // Define common rule for Id property
            modelBuilder.Entity<Customer>()
                .Property(c => c.Id).HasDefaultValueSql("newsequentialid()");

            // Pre-defined customers' IDs
            var customersIds = new Guid[] {
                new Guid("971aa948-7108-4076-9339-b97dcd58ef10"),
                new Guid("3a993f3d-24c5-428c-8f82-bb6eebe871d0"),
                new Guid("763d08fc-8321-4361-94d4-a0e85e98c791"),
                new Guid("a5448e01-4a02-402c-9c49-3e5735653e69"),
                new Guid("0bbf244b-519b-43e7-b216-fa78a41d1c6b"),
                new Guid("33ca5c88-68ef-4912-af13-fff57a4d3122"),
                new Guid("34ac3d22-606b-4324-ada9-5bd90b7c5f75"),
                new Guid("35cbeb54-1d1b-4610-88a3-b4ed2959e7e1"),
                new Guid("33ee39bf-c4f9-468d-9ae5-14306adf7c9c"),
                new Guid("bd9cc312-b2a9-4c17-8578-03c20405bc5d")
            };

            foreach (var c in Enumerable.Range(0, 9))
            {
                modelBuilder.Entity<Customer>().HasData(
                    new Customer
                    {
                        Id = customersIds[c],
                        DisplayName = $"Customer {c:00}",
                        Email = $"email{c:00}@company{c:00}.com",
                        Rating = customersIds[c].GetHashCode() % 10
                    });
            }
        }
    }
}
