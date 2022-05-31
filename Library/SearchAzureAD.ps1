#------------------SEARCH-FOR-USER-IN-AZURE--------------------#


Get-AzureADUser -ObjectId "$UPN"
Get-AzureADUser -ObjectId "$UPN" | Out-File -FilePath .\accquery.txt