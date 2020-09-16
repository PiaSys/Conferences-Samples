#************************************************************************************************
# Play with "personal lists" in the target user's My Site (OneDrive for Business)
#************************************************************************************************

# Connect to the OneDrive for Business site of the user
Connect-PnPOnline "https://<tenant>-my.sharepoint.com/personal/<user-personal-site>/" 

# Get the "Issue Tracker" list
$list = Get-PnPList "Issue tracker"

# Get the content types of the list
Get-PnPProperty -ClientObject $list -Property ContentTypes

# Add a new item into the list
Add-PnPListItem -List $list -ContentType $list.ContentTypes[0].Id.StringValue -Values @{"Title"="Inserted via PnP";"Status"="Completed"}

#************************************************************************************************
# Play with "site lists"
#************************************************************************************************
Connect-PnPOnline "https://<tenant>.sharepoint.com/sites/<source-site-url>/"

# Extract the template of a list of Microsoft Lists that you previously created
Get-PnPProvisioningTemplate -Out .\employee.xml -Handlers Lists -ListsToExtract "Employee onboarding"

# Connect to another site, which will be the target of the provisioning
Connect-PnPOnline "https://<tenant>.sharepoint.com/sites/<target-site-url>/"

Apply-PnPProvisioningTemplate -Path .\employee.xml
