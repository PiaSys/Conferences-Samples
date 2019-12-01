cd C:\temp\ProvisionSite\template
Connect-PnPOnline "https://piasysdev.sharepoint.com/sites/ProvisioningModelSource" -Credentials PiaSysDev-Paolo
Get-PnPProvisioningTemplate -Out C:\temp\ProvisionSite\template\TeamSite.xml -PersistBrandingFiles -PersistPublishingFiles -Handlers Fields,ContentTypes,Lists,Pages,PageContents,Navigation
Convert-PnPFolderToProvisioningTemplate -Out TeamSite.pnp
