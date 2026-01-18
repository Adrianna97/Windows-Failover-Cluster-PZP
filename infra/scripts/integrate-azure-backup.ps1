# Integracja z Azure Recovery Services Vault

$vaultName = "PZP-Vault"
$rg = "rg-pzp"
$policy = Get-AzBackupProtectionPolicy -VaultName $vaultName -ResourceGroupName $rg

Enable-AzBackupProtection -VaultName $vaultName -ResourceGroupName $rg `
    -Name "PZP-Cluster" -Policy $policy
