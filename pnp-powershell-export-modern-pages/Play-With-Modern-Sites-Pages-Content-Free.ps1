# Connect to the target site
Connect-PnPOnline "https://<tenant>.sharepoint.com/sites/<source_site>/"

# Define global constants
$pnp = [System.Xml.Linq.XNamespace]"http://schemas.dev.office.com/PnP/2019/03/ProvisioningSchema"

# Get the site template as an XML DOM document
$templateXml = Get-PnPProvisioningTemplate -ExcludeHandlers Navigation,WebSettings,RegionalSettings,PropertyBagEntries,SiteSecurity
$template = [System.Xml.Linq.XElement]::Parse($templateXml)
$clientSidePages = $template.Element($pnp + [System.Xml.Linq.XName]"Templates").Element($pnp + [System.Xml.Linq.XName]"ProvisioningTemplate").Element($pnp + [System.Xml.Linq.XName]"ClientSidePages")

# Defines the list of pages to export
$pages = @(
    "SampleNews01.aspx", 
    "SampleNews02.aspx"
    )

# Add every single page to the target template
foreach ($page in $pages) {

    # Export the page as an XML DOM document
    $pageXml = [xml](Export-PnPClientSidePage -Identity $page)
    $pageXElement = [System.Xml.Linq.XElement]::Parse($pageXml.Provisioning.Templates.ProvisioningTemplate.ClientSidePages.ClientSidePage.OuterXml)

    # Add the page to the template
    $clientSidePages.Add($pageXElement)
}

$template.Save("c:\temp\DemoComSite.xml")
notepad c:\temp\DemoComSite.xml

Connect-PnPOnline "https://<tenant>.sharepoint.com/sites/<target_site>/"
Apply-PnPProvisioningTemplate -Path c:\temp\DemoComSite.xml
