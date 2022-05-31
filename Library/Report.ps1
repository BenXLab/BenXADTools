#------------------$COMPILE-REPORT$--------------------#

Write-Output "
------------------------------------------------------------------------
Ticket Number: $Ticket
------------------------------------------------------------------------
Employee Name:  $Fullname  
SamAccountName:  $SamAccountName 
E-Mail: $UPN
Department: $OU
Title: $Title
Managers Name: $MANFullname
Managers E-Mail:  $MANUPN
------------------------------------------------------------------------
Device Information:
------------------------------------------------------------------------
Serial Number: $Serial
Asset Tag Number: $Asset
Device Make: $AssetMake
Device Model $AssetModel
------------------------------------------------------------------------

Technicians Name: $TechUPN
Technicians Signature: ____________________________________________
Managers Name: $MANFullname
Managers Signature: _____________________________________________" | Out-File -FilePath .\NewHireCompleteForm.txt
Get-Content .\NewHireCompleteForm.txt