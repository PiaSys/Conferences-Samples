# Certificate password	
$password = "P@ssw0rd!"

# Create certificate
$cert = New-SelfSignedCertificate -DnsName "PiaSys.PresenceNotifications" -CertStoreLocation "cert:\CurrentUser\My" -NotAfter (Get-Date).AddYears(2) -KeyAlgorithm RSA -KeyLength 2048

# Export certificate to .pfx file
$cert | Export-PfxCertificate -FilePath .\PiaSys.PresenceNotifications.pfx -Password $(ConvertTo-SecureString -String $password -AsPlainText -Force)

# Export certificate to .cer file
$cert | Export-Certificate -FilePath .\PiaSys.PresenceNotifications.cer