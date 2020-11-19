Connect-PnPOnline "https://<tenant>.sharepoint.com/sites/<site>/" 

Add-PnPCustomAction -Name "StartFlowWithArguments" -Title "StartFlowWithArguments" -RegistrationId 101 -RegistrationType List -Location "ClientSideExtension.ListViewCommandSet.CommandBar" -ClientSideComponentId e37896bc-97ad-4676-b65a-23e334da1420 -ClientSideComponentProperties "{'targetContentTypeId':'0x0101001EA52A6C6B4DB548825829F35F9B87BB'}"
