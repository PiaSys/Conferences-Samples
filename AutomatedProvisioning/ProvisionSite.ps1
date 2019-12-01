# Read the request as a JSON object
$requestBody = Get-Content $req -Raw | ConvertFrom-Json

# Define initial variables
$tenant = $env:Tenant
$clientId = $env:ClientId
$thumbprint = $env:Thumbprint
$localTemplatesFolder = $env:LocalTemplatesFolder
$serviceAccount = $env:ServiceAccount
$serviceAccountPassword = $env:ServiceAccountPassword

# Test arguments
$requestBody = '{
  "Title": "Site 12",
  "Owners": [
    {
      "@odata.type": "#Microsoft.Azure.Connectors.SharePoint.SPListExpandedUser",
      "Claims": "i:0#.f|membership|paolo@piasysdev.onmicrosoft.com",
      "DisplayName": "Paolo Pialorsi",
      "Email": "paolo@PiaSysDev.onmicrosoft.com",
      "Picture": "https://piasysdev.sharepoint.com/sites/ProvisioningInfrastructureSite/_layouts/15/UserPhoto.aspx?Size=L&AccountName=paolo@PiaSysDev.onmicrosoft.com",
      "Department": "IT",
      "JobTitle": "Senior Consultant"
    }
  ],
  "Members": [
    {
      "@odata.type": "#Microsoft.Azure.Connectors.SharePoint.SPListExpandedUser",
      "Claims": "i:0#.f|membership|guido.zambarda@piasysdev.onmicrosoft.com",
      "DisplayName": "Guido Zambarda",
      "Email": "guido.zambarda@PiaSysDev.onmicrosoft.com",
      "Picture": "https://piasysdev.sharepoint.com/sites/ProvisioningInfrastructureSite/_layouts/15/UserPhoto.aspx?Size=L&AccountName=guido.zambarda@PiaSysDev.onmicrosoft.com",
      "Department": null,
      "JobTitle": null
    }
  ],
  "Type": "Team Site",
  "Organization": "IT",
  "Template": "/sites/ProvisioningInfrastructureSite/ProvisioningTemplates/TeamSite.pnp",
  "RequestSettings": {
    "RequestItemID": "6",
    "RequestList": "ProvisioningRequests",
    "RequestSiteUrl": "https://piasysdev.sharepoint.com/sites/ProvisioningInfrastructureSite"
  }
}' | ConvertFrom-Json

$tenant = "piasysdev.onmicrosoft.com"
$clientId = "620d9eeb-f19f-4ffb-86db-fcf9809797f5"
$thumbprint = "63AAEBECBE31FCC9779042BA636DC7F569950245"
$localTemplatesFolder = "c:\temp\ProvisionSite\"
$serviceAccount = '**********'
$serviceAccountPassword = '**********'

# Configure local variables
$rootSiteUrl = $requestBody.RequestSettings.RequestSiteUrl.Substring(0, $requestBody.RequestSettings.RequestSiteUrl.IndexOf("/", 10))
$targetSiteUrl = $rootSiteUrl + "/sites/" + $requestBody.Title.Replace(" ", "-")
$targetSiteAlias = $requestBody.Title.Replace(" ", "-").ToLower()
$owner = $requestBody.Owners[0].Claims.Substring($requestBody.Owners[0].Claims.LastIndexOf("|") + 1)
$templateFileName = $requestBody.Template.Substring($requestBody.Template.LastIndexOf("/") + 1)
$templateFilePath = $localTemplatesFolder + $templateFileName

# Prepare Owners and Members
$owners = @()
foreach ($owner in $requestBody.Owners) {
    $owners += $owner.Claims.Substring($owner.Claims.LastIndexOf("|") + 1)
}
$members = @()
foreach ($member in $requestBody.Members) {
    $members += $member.Claims.Substring($member.Claims.LastIndexOf("|") + 1)
}

# Connect to the site that is the repository for the provisioning template
$requestSiteConnection = Connect-PnPOnline $requestBody.RequestSettings.RequestSiteUrl -ClientId $clientId -Thumbprint $thumbprint -Tenant $tenant

# Get the provisioning template file
Get-PnPFile -Url $requestBody.Template -Path $localTemplatesFolder -AsFile -Connection $requestSiteConnection -Force

# Load the template
$template = Read-PnPProvisioningTemplate -Path $templateFilePath

# Process the owners    
foreach ($owner in $owners) {
    $newOwner = New-Object OfficeDevPnP.Core.Framework.Provisioning.Model.User
    $newOwner.Name = $owner

    write-Output 'Adding owner:' $owner

    $template.Security.AdditionalOwners.Add($newOwner)
}
# Process the members
foreach ($member in $members) {
    $newMember = New-Object OfficeDevPnP.Core.Framework.Provisioning.Model.User
    $newMember.Name = $member

    write-Output 'Adding member:' $member
        
    $template.Security.AdditionalMembers.Add($newMember)
}

# Create the target site
if ($requestBody.Type -eq "Communication Site") {
    # Connect to the root site collection via App-Only
    $rootSiteConnection = Connect-PnPOnline $rootSiteUrl -ClientId $clientId -Thumbprint $thumbprint -Tenant $tenant

    # Create the target site
    $site = New-PnPSite -Type CommunicationSite -Owner $owner -Title $requestBody.Title -Url $targetSiteUrl -Connection $rootSiteConnection
}
elseif ($requestBody.Type -eq "Team Site") {
    # Connect to the root site collection with service account
    $encPassword = ConvertTo-SecureString -String $serviceAccountPassword -AsPlainText -Force
    $cred = New-Object -typename System.Management.Automation.PSCredential -argumentlist $serviceAccount, $encPassword
    $rootSiteConnection = Connect-PnPOnline -Url $rootSiteUrl -Credentials $cred

    # For Team Sites we need to create them on behalf of a specific user, because App-Only is not supported
    $site = New-PnPSite -Type TeamSite -Title $requestBody.Title -Alias $targetSiteAlias -Connection $rootSiteConnection
}

# Apply the template to the target site
$targetSiteConnection = Connect-PnPOnline $site -ClientId $clientId -Thumbprint $thumbprint -Tenant $tenant
Apply-PnPProvisioningTemplate -Path $templateFilePath -Connection $targetSiteConnection -ClearNavigation -ExcludeHandlers SiteSecurity
Apply-PnPProvisioningTemplate -InputInstance $template -Connection $targetSiteConnection -ClearNavigation -Handlers SiteSecurity
write-Output 'Site created at URL:' $site
