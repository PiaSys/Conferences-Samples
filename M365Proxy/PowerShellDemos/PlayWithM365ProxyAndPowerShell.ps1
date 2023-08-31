$token = ConvertTo-SecureString -String 'here-put-your-access-token' -AsPlainText
Invoke-WebRequest -Uri 'https://graph.microsoft.com/v1.0/me' -Authentication Bearer -Token $token

try {
    Invoke-WebRequest -Uri 'https://graph.microsoft.com/v1.0/me' -Authentication Bearer -Token $token
}
catch {
    Write-Host "An error occurred:"
    Write-Host $_.Exception.Message

    if ($_.Exception.Message -match '429 \(Too Many Requests\)') {
        Write-Host 'You have been throttled!'
    }
}