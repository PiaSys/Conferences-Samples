Connect-PnPOnline https://northpoleindustries.sharepoint.com/sites/NorthPoleConference/ -UseWebLogin
Invoke-PnPSiteTemplate -Path .\events-template.xml
