$subscription = "Microsoft Azure Sponsorship"
$resourcePrefix = "piasystechbites01"
$functionAppName = "piasystechbitesfunction01"
$functionAppBinariesPath = "C:\Users\paolo\Source\Repos\Sample.FunctionApp\Sample.FunctionApp\bin\Debug\net461\sample.functionapp.zip"

.\Provision-AzureFunction.ps1 -Subscription $subscription `
        -Location 'North Europe' `
        -ResourcePrefix $resourcePrefix `
        -FunctionAppName $functionAppName `
        -FunctionAppBinariesPath $functionAppBinariesPath
