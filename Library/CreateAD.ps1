#------------------CREATE-AD-ACCOUNT:--------------------#
$Password = Read-Host -Prompt 'Input Password: '

New-ADUser `
 -Name "$Fullname" `
 -Path  "OU=$OrgUnit,DC=prpDC=Local" `
 -SamAccountName  "$SamAccountName" `
 -DisplayName "$Fullname" `
 -AccountPassword (ConvertTo-SecureString "$Password" -AsPlainText -Force) `
 -ChangePasswordAtLogon $false  `
 -Manager $MANUPN `
 -Title $Title `
 -Enabled $true 
Add-ADGroupMember $MemOf;
