# Read the request as a JSON object
$requestBody = Get-Content $req -Raw | ConvertFrom-Json

# Define initial variables
$tenant = $env:Tenant
$clientId = $env:ClientId
$thumbprint = $env:Thumbprint

# Test arguments
$requestBody = '{
  "targetUrl": "https://piasysdev.sharepoint.com/sites/dev"
}' | ConvertFrom-Json

$tenant = "<tenant>.onmicrosoft.com"
$clientId = "<clientId>"
$thumbprint = "<thumbprint>"

# Configure local variables
$targetUrl = $requestBody.targetUrl

# Connect to the site using an X.509 certificate
Connect-PnPOnline -Url $targetUrl -ClientId $clientId -Thumbprint $thumbprint -Tenant $tenant

$web = Get-PnPWeb
$title = $web.Title

Out-File -Encoding Ascii -FilePath $res -inputObject "You're connected to site $targetUrl with title $title"
