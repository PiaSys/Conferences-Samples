Param(

   [Parameter(Mandatory=$true)]
   [string]$Subscription,

   [Parameter(Mandatory=$true)]
   [ValidateSet('East Asia', 'Southeast Asia', 'Central US', 'East US', 'East US 2', 'West US', 'North Central US', 'South Central US', 'North Europe', 'West Europe', 'Japan West', 'Japan East', 'Brazil South', 'Australia East', 'Australia Southeast', 'South India', 'Central India', 'West India', 'Canada Central', 'Canada East', 'UK South', 'UK West', 'West Central US', 'West US 2', 'Korea Central', 'Korea South', 'France Central', 'France South', 'Australia Central', 'Australia Central 2', 'UAE Central', 'UAE North', 'South Africa North', 'South Africa West', 'Germany West Central')]
   [string]$Location,

   [Parameter(Mandatory=$true)]
   [string]$FunctionAppName,

   [Parameter(Mandatory=$true)]
   [string]$ResourcePrefix,

   [Parameter(Mandatory=$true)]
   [string]$FunctionAppBinariesPath

)

# Install AzureRM command lets, if they are missing
$azureRMModule = Import-Module AzureRM -ErrorAction SilentlyContinue -PassThru
if(!$azureRMModule)
{
    Write-Output "Installing AzureADPreview module"
    Install-Module AzureRM -Force
}

# Login to AzureRM
Login-AzureRmAccount 

# Set the correct context
Set-AzureRmContext -Subscription $Subscription

# Use any already existing Azure Resource Group or create a new one
$resourceGroupName = "$ResourcePrefix-Resource-Group"
$resourceGroup = Get-AzureRmResourceGroup -Name $resourceGroupName -Location $Location -ErrorAction SilentlyContinue
if (!$resourceGroup)
{
    if(!$Location) {
        Write-Host "To create a new resource group, please enter a location." -ForegroundColor DarkYellow
        $Location = Read-Host "Location"
    }
    Write-Host "Creating resource group '$resourceGroupName' in location '$Location'" -ForegroundColor White
    $resourceGroup = New-AzureRmResourceGroup -Name $resourceGroupName -Location $Location
    Write-Host "Created resource group '$resourceGroupName' in location '$Location'" -ForegroundColor Green
}

# Create the Function App if it does not exist
$functionApp = Get-AzureRmResource | Where-Object { $_.ResourceName -eq $FunctionAppName -And $_.ResourceType -eq 'Microsoft.Web/Sites' }
if(!$functionApp)
{
    Write-Host "FunctionApp '$FunctionAppName' does not exist." -ForegroundColor DarkYellow
    if (!$Location) {
        Write-Host "To create a new function app, please enter a location." -ForegroundColor DarkYellow
        $Location = Read-Host "Location"
    }
    Write-Host "Creating function app '$FunctionAppName' in location '$Location'" -ForegroundColor White
    $functionApp = New-AzureRmResource -ResourceType 'Microsoft.Web/Sites' -ResourceName $FunctionAppName -Kind 'functionapp' -Location $Location -ResourceGroupName $resourceGroupName -Properties @{} -Force
    Write-Host "Created function app '$FunctionAppName' in location '$Location'" -ForegroundColor Green
}

# Upload the ZIP file of the function and trigger deployment
# See documentation here: https://docs.microsoft.com/en-us/azure/azure-functions/deployment-zip-push
Write-Host "Uploading the source package to the function app" -ForegroundColor White
$publishingProfile = Invoke-AzureRmResourceAction -ResourceGroupName $ResourceGroupName -ResourceType 'Microsoft.Web/Sites/config' `
    -ResourceName "$FunctionAppName/publishingcredentials" -Action list -ApiVersion 2015-08-01 -Force
$kuduAuthorizationHeader = ("Basic {0}" -f [Convert]::ToBase64String([Text.Encoding]::ASCII.GetBytes(("{0}:{1}" -f $publishingProfile.properties.publishingUserName, $publishingProfile.properties.publishingPassword))))
$kuduZipDeployUrl = "https://$FunctionAppName.scm.azurewebsites.net/api/zipdeploy"
$userAgent = "PiaSysTechBites/1.0"
Invoke-RestMethod -Uri $kuduZipDeployUrl -Headers @{Authorization=$kuduAuthorizationHeader} `
    -UserAgent $userAgent -Method POST  `
    -InFile $FunctionAppBinariesPath `
    -ContentType "multipart/form-data"
Write-Host "Uploaded the source package to the function app" -ForegroundColor Green
