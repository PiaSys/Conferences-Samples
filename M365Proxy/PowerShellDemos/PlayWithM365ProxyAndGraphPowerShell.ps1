Connect-MgGraph -Scopes "User.Read"
Invoke-MgGraphRequest -Method GET -Uri 'https://graph.microsoft.com/v1.0/me'

try {
    Invoke-MgGraphRequest -Method GET -Uri 'https://graph.microsoft.com/v1.0/me'
}
catch {
    Write-Host "An error occurred:"
    Write-Host $_.Exception.Message

    if ($_.Exception.Message -match 'Too many retries performed') {
        Write-Host 'You have been throttled!'
    }
}
