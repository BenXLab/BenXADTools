#------------------AD-SEARCH-FOR-USER:--------------------#

Get-ADUser -Identity $SamAccountName
#need to create if then state ment (If account exists(true), then stop command -check if there is username duplicate- 
#if account does not exist(false), then proceed with script to create account