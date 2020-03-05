# Read the request as a JSON object
$requestBody = Get-Content $req -Raw | ConvertFrom-Json

# Define initial variables
$serviceAccount = $env:ServiceAccount
$serviceAccountPassword = $env:ServiceAccountPassword

# Test arguments
$requestBody = '{
  "targetUrl": "https://piasysdev.sharepoint.com/sites/dev"
}' | ConvertFrom-Json

$serviceAccount = '**********'
$serviceAccountPassword = '**********'


# Configure local variables
$targetUrl = $requestBody.targetUrl

# Connect to the root site collection with service account
$encPassword = ConvertTo-SecureString -String $serviceAccountPassword -AsPlainText -Force
$cred = New-Object -typename System.Management.Automation.PSCredential -argumentlist $serviceAccount, $encPassword
Connect-PnPOnline -Url $targetUrl -Credentials $cred

$web = Get-PnPWeb
$title = $web.Title

Out-File -Encoding Ascii -FilePath $res -inputObject "You're connected to site $targetUrl with title $title"
