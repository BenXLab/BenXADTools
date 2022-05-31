#----------------GATHER-TECH-INFO:--------------------#


$TechUPN = whoami /upn
Get-AzureADUser -ObjectId "$TechUPN" | Out-File -FilePath .\gettechname.txt
$GatherTechInfo = Get-Content .\gettechname.txt | Select-Object -Skip 3 -First 1
-split $GatherTechInfo | Out-File -FilePath .\splitgetname.txt
$TechFirstName = Get-Content .\splitgettechname.txt | Select-Object -Skip 1 -First 1
$TechLastName = Get-Content .\splitgettechname.txt | Select-Object -Skip 2 -First 1
$TechFullName = Write-Host $TechFirstName $TechLastName