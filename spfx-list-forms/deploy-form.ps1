Connect-PnPOnline https://piasysdev.sharepoint.com/sites/SPFxFormCustomizerDemo/ -Credentials PiaSysDev-Paolo
$targetList = Get-PnPList -Identity "Demo List"
$targetContentType = Get-PnPContentType -List $targetList -Identity "0x01007C0B2BF9AF4FBF4DAE9CF94C4A5A87BE008EEB3AA9867A0344AD3D81DA1D04F0EA"

$targetContentType.DisplayFormClientSideComponentId = "39d2b6b3-ff14-45ad-9028-e53094cb0e2f"
#$targetContentType.DisplayFormClientSideComponentProperties = ""

$targetContentType.NewFormClientSideComponentId = "39d2b6b3-ff14-45ad-9028-e53094cb0e2f"
#$targetContentType.NewFormClientSideComponentProperties = ""

$targetContentType.EditFormClientSideComponentId = "39d2b6b3-ff14-45ad-9028-e53094cb0e2f"
#$targetContentType.EditFormClientSideComponentProperties = ""

$targetContentType.Update($false)
Invoke-PnPQuery


