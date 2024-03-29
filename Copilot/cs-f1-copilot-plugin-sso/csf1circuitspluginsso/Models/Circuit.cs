namespace csf1circuitspluginsso.Models
{
    public class Circuit
    {
        public int CircuitId { get; set; }

        public string CircuitRef { get; set; }

        public string Name { get; set; }

        public string Location { get; set; }

        public string Country { get; set; }

        public double Lat { get; set; }

        public double Lng { get; set; }

        public double Alt { get; set; }

        public string Url { get; set; }
    }
}
