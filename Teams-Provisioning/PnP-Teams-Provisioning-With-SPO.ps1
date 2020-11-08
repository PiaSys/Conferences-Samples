# Connect to the target tenant with specific user's identity via Credential Manager
Connect-PnPOnline "https://piasysdev.sharepoint.com/" -Credentials PiaSysDev-Paolo

# Apply the tenant template
Apply-PnPTenantTemplate -Path .\demo-team-template-with-spo.xml `
    -Parameters @{"TeamTitle"="PnPTeamDemo2020110502";"TeamAlias"="pnpteamdemo2020110502";"CompanyName"="PnP"}
