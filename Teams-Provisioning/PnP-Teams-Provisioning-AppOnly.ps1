# Configure global variables
$tenant = "<tenant>.onmicrosoft.com"
$spoRoot = "https://<tenant>.sharepoint.com/"
$certificatePassword = "P@ssw0rd!" | ConvertTo-SecureString -Force -AsPlainText

# Initialize the AAD application to access Graph and SPO
$aadApp = Initialize-PnPPowerShellAuthentication `
    -ApplicationName "TeamsProvisioningApp" `
    -Tenant $tenant `
    -Store CurrentUser `
    -CommonName "TeamsProvisioning" `
    -CertificatePassword $certificatePassword `
    -ValidYears 2 `
    -OutPath C:\Teams-Provisioning

# Grab the app ClientID and certificate thumbprint
$clientId = $aadApp.AzureAppId
$thumbprint = $aadApp.'Certificate Thumbprint'

# Connect to the target tenant with App-Only via ClientId and X.509 Certificate
Connect-PnPOnline $spoRoot -ClientId $clientId -Thumbprint $thumbprint -Tenant $tenant

# Provision the tenant template via App-Only
Apply-PnPTenantTemplate -Path .\demo-team-template-apponly.xml -Parameters @{"TeamTitle"="PnPTeamDemoSIG01B";"TeamAlias"="pnpteamdemosig01b"}
