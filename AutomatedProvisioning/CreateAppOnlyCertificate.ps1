$password = "your-password" | ConvertTo-SecureString -AsPlainText -Force
New-PnPAzureCertificate -CommonName "SiteProvisioning" -ValidYears 2 -CertificatePassword $password -OutPfx "c:\temp\provisioning.pfx" -OutCert "c:\temp\provisioning.cer"

