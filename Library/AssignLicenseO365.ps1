#------------------ASSIGN-A-LICENSE--------------------#

$sku = Read-Host -Prompt 'Input SKU: '
$e3Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq '$sku'

Set-MgUserLicense -UserId "$UPN" -AddLicenses @{SkuId = $e3Sku.SkuId} -RemoveLicenses @()