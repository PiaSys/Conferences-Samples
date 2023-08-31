Connect-MgGraph -Scopes "User.Read"
Invoke-MgGraphRequest -Method GET -Uri 'https://graph.microsoft.com/v1.0/me'

try {
    Invoke-MgGraphRequest -Method GET -Uri 'https://graph.microsoft.com/v1.0/me'
}
catch {
    Write-Host "An error occurred:"
    Write-Host $_.Exception.Message

    if ($_.Exception.Message -match 'Code: (?<code>[a-zA-Z]*)') {
        if ($Matches['code'] -eq 'tooManyRetries') {
            Write-Host 'You have been throttled!'
        }
    }
}
