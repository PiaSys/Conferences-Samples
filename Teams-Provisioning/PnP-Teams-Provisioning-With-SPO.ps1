# Connect to the target tenant with specific user's identity via Credential Manager
Connect-PnPOnline "https://<tenant>.sharepoint.com/" -Credentials <CredentialsName>

# Apply the tenant template
Apply-PnPTenantTemplate -Path .\demo-team-template-with-spo.xml `
    -Parameters @{"TeamTitle"="PnPTeamDemoSIG01C";"TeamAlias"="pnpteamdemosig01c";"CompanyName"="PnP"}
