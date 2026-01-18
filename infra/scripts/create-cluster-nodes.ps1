# Tworzenie dwóch maszyn z Windows Server 2019
$rg = "rg-pzp"
$location = "PolandCentral"
$cred = Get-Credential

New-AzVM -Name "PZP-NODE01" -ResourceGroupName $rg -Location $location `
    -VirtualNetworkName "vnet-pzp" -SubnetName "subnet-cluster" `
    -Credential $cred -Image "Win2019Datacenter"

New-AzVM -Name "PZP-NODE02" -ResourceGroupName $rg -Location $location `
    -VirtualNetworkName "vnet-pzp" -SubnetName "subnet-cluster" `
    -Credential $cred -Image "Win2019Datacenter"
