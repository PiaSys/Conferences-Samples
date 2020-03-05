$password = "your-password" | ConvertTo-SecureString -AsPlainText -Force
New-PnPAzureCertificate -CommonName "PnPPowerShellApp" -ValidYears 2 -CertificatePassword $password -OutPfx "C:\temp\PnP-Community-Call-20200305\pnp-certificate.pfx" -OutCert "C:\temp\PnP-Community-Call-20200305\pnp-certificate.cer"
