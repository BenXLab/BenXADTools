CLS
$myname = [System.Environment]::UserName
#----------------GATHER-TICKET-INFO:--------------------#


$Ticket = Read-Host -Prompt 'Input Ticket Number '
CLS


#----------------SELECT-NEW-HIRE-FORM:--------------------#

CD \users\$myname\Desktop\ProjCopy\FORMS
DIR
$NewHireForm = Read-Host -Prompt 'Input New Hire Form '
CD \users\$myname\Desktop\ProjCopy\
$FormPath = $NewHireForm + ".txt"
CLS

#----------------GATHER-NEW-HIRE-INFO:--------------------#


cd \users\$myname\Desktop\ProjCopy\Logs


#EMPLOYEE NAME
$HireLine = Get-Content \users\$myname\Desktop\ProjCopy\FORMS\$FormPath | Select-Object -Skip 2 -First 1
Write-Output $HireLine | measure -Line -Character -Word | Out-File -FilePath .\hirechar.txt
$HireChar = Get-Content .\hirechar.txt | Select-Object -Skip 3 -First 1
-split $HireChar | Out-File -FilePath .\hirecharcount.txt
$HireCharCount = Get-Content .\hirecharcount.txt | Select-Object -Skip 2 -First 1
$HireCharCount - 13 | Out-File -FilePath .\HireLength.txt
$HireParse = Get-Content .\HireLength.txt
$Fullname = Write-Output $HireLine.SubString(13,$HireParse) 
-split $Fullname | Out-File -FilePath .\fnln.txt
$fname = Get-Content .\fnln.txt | Select-Object -First 1
$lname = Get-Content .\fnln.txt | Select-Object -Last 1
$finit = Write-Output $fname.SubString(0,1) 
$SamAccountName = $finit + "" + $lname
$Domain = "benxlab.com"
$UPN = $SamAccountName + "@" + $Domain


#MANAGER
$ManagerLine = Get-Content \users\$myname\Desktop\ProjCopy\FORMS\$FormPath | Select-Object -Skip 1 -First 1
Write-Output $ManagerLine | measure -Line -Character -Word | Out-File -FilePath .\managerchar.txt
$ManagerChar = Get-Content .\managerchar.txt | Select-Object -Skip 3 -First 1
-split $ManagerChar | Out-File -FilePath .\managercharcount.txt
$ManagerCharCount = Get-Content .\managercharcount.txt | Select-Object -Skip 2 -First 1
$ManagerCharCount - 10 | Out-File -FilePath .\ManagerLength.txt
$ManagerParse = Get-Content .\ManagerLength.txt
$MANFullname = Write-Output $ManagerLine.SubString(10,$ManagerParse) 
-split $MANFullname | Out-File -FilePath .\manfnln.txt
$MANfname = Get-Content .\manfnln.txt | Select-Object -First 1
$MANlname = Get-Content .\manfnln.txt | Select-Object -Last 1
$MANfinit = Write-Output $MANfname.SubString(0,1) 
$MANSamAccountName = $MANfinit + "" + $MANlname
$MANUPN = $MANSamAccountName + "@" + $Domain


#JOB TITLE
$JobLine = Get-Content \users\$myname\Desktop\ProjCopy\FORMS\$FormPath | Select-Object -Skip 3 -First 1
Write-Output $JobLine | measure -Line -Character -Word | Out-File -FilePath .\jobchar.txt
$JobChar = Get-Content .\jobchar.txt | Select-Object -Skip 3 -First 1
-split $JobChar | Out-File -FilePath .\jobcharcount.txt
$JobCharCount = Get-Content .\jobcharcount.txt | Select-Object -Skip 2 -First 1
$JobCharCount - 9 | Out-File -FilePath .\JobLength.txt
$JobParse = Get-Content .\JobLength.txt
$Title = Write-Output $JobLine.SubString(9,$JobParse) 


#DEPT/OU
$DeptLine = Get-Content \users\$myname\Desktop\ProjCopy\FORMS\$FormPath | Select-Object -Skip 7 -First 1
Write-Output $DeptLine | measure -Line -Character -Word | Out-File -FilePath .\deptchar.txt
$DeptChar = Get-Content .\deptchar.txt | Select-Object -Skip 3 -First 1
-split $DeptChar | Out-File -FilePath .\deptcharcount.txt
$DeptCharCount = Get-Content .\deptcharcount.txt | Select-Object -Skip 2 -First 1
$DeptCharCount - 21 | Out-File -FilePath .\DeptLength.txt
$DeptParse = Get-Content .\DeptLength.txt
$OrgUnit = Write-Output $DeptLine.SubString(21,$DeptParse) 


Get-ChildItem -Path \users\$myname\Desktop\ProjCopy\Logs\ -Include * -File -Recurse -Force | foreach { $_.Delete()}


Write-Host "TICKET: " "#"$Ticket
Write-Host "First Name: " $fname
Write-Host "Last Name: " $lname
Write-Host "SamAccountName: " $SamAccountName
Write-Host "E-Mail: " $UPN 
Write-Host "Job Title: " $Title -ForegroundColor Red
Write-Host "Organizational Unit: " $OrgUnit 
Write-Host "Manager First Name: " $MANfname
Write-Host "Manager Last Name: " $MANlname
Write-Host "Manager SamAccountName: " $MANSamAccountName
Write-Host "Manager E-Mail: " $MANUPN 

cd \users\$myname\Desktop\ProjCopy\

PAUSE

CLS

Write-Host "Impressed?" -ForegroundColor Green

PAUSE

CLS

Write-Host "This is Just a Sample... The Rest is Already Finished" -ForegroundColor Green

PAUSE

CLS


Get-Content fancy.txt

PAUSE

CLS

