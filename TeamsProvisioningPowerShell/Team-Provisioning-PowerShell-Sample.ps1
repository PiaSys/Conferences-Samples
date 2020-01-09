# Configure initial variables
$teamAlias = "mycustomteam01"
$teamDisplayName = "My Custom Team 01"
$teamClassification = "HBI"

$teamAdditionalOwners = @('paolo@piasysdev.onmicrosoft.com', 'guido.zambarda@piasysdev.onmicrosoft.com')

$teamAdditionalMembers = @('jessica.faustinelli@piasysdev.onmicrosoft.com', 'cristian.civera@piasysdev.onmicrosoft.com')

# Configure the initial Owner
$teamOwner = $teamAdditionalOwners[0]

# Read service account credentials
$credentials = Get-Credential

# Connect to Microsoft Teams
Connect-MicrosoftTeams -Credential $credentials

# Create and configure the team in Microsoft Teams
$group = New-Team -MailNickname $teamAlias -DisplayName $teamDisplayName -Visibility "private" -Classification $teamClassification -Owner $teamOwner
foreach ($owner in $teamAdditionalOwners) {
    if ($owner -ne $teamOwner) {
        Add-TeamUser -GroupId $group.GroupId -User $owner -Role Owner
    }
}
foreach ($member in $teamAdditionalMembers) {
    Add-TeamUser -GroupId $group.GroupId -User $member -Role Member
}
New-TeamChannel -GroupId $group.GroupId -DisplayName "Sample Channel"
