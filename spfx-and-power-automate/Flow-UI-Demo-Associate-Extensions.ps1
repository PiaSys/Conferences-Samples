Connect-PnPOnline "https://piasysdev.sharepoint.com/sites/Demo-SPFx-Flow-Panel/" -Credentials PiaSysDev-Paolo
Get-PnPCustomAction
Add-PnPCustomAction -Name "StartFlowWithArguments" -Title "StartFlowWithArguments" -RegistrationId 101 -RegistrationType List -Location "ClientSideExtension.ListViewCommandSet.CommandBar" -ClientSideComponentId e37896bc-97ad-4676-b65a-23e334da1420 -ClientSideComponentProperties "{'targetContentTypeId':'0x0101001EA52A6C6B4DB548825829F35F9B87BB'}"

$action = Get-PnPCustomAction -Identity 66253949-5f1f-4f0c-bf4f-2db8754dc9ff
$action.ClientSideComponentId
$action.ClientSideComponentProperties
$action.Location
$action.RegistrationId
$action.RegistrationType

Remove-PnPCustomAction -Identity 66253949-5f1f-4f0c-bf4f-2db8754dc9ff
