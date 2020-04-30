Connect-PnPOnline "https://piasysdev.sharepoint.com/" -Credentials PiaSysDev-Paolo
Apply-PnPTenantTemplate -Path .\demo-team-template.xml -Parameters @{"TeamTitle"="PiaSysTechBites01";"TeamAlias"="techbites01"}

