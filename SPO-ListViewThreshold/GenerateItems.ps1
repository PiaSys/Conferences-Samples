Connect-PnPOnline https://piasysdev.sharepoint.com/sites/ListViewThreshold -Credentials PiaSysDev-Paolo

$list = Get-PnPList -Identity "Lookup List"
for (($c = 2200); $c -le 6000; $c++) {
    Add-PnPListItem -List $list -Values @{"Title"="Item $c"}
}
