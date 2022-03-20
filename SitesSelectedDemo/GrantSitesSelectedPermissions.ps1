$targetSiteUri = 'https://{tenant}.sharepoint.com/sites/{TargetSite}'

# Connect and grant write permission to selected site
Connect-PnPOnline $targetSiteUri
Grant-PnPAzureADAppSitePermission -AppId '{AppId}' -DisplayName '{AppDisplayName}' -Site $targetSiteUri -Permissions Write

# List the Sites.Selected permissions granted for the current site
Get-PnPAzureADAppSitePermission

# Update the granted permissions
Set-PnPAzureADAppSitePermission -PermissionId '{PermissionId}' -Permissions FullControl 

# Revoke the granted permissions
Revoke-PnPAzureADAppSitePermission -PermissionId '{PermissionId}' -Force

