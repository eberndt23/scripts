Import-Module ActiveDirectory
Get-ADUser -Filter * -searchbase "OU=executive,ou=superior paving employees,dc=superiorpaving,dc=net" -properties scriptpath | Set-ADUser -scriptpath bristowlogon2.vbs
Get-ADUser -Filter * -searchbase "OU=Accounting,OU=Office,OU=Superior Paving Employees,DC=superiorpaving,DC=net" -properties scriptpath | Set-ADUser -scriptpath bristowlogon2.vbs
Get-ADUser -Filter * -searchbase "OU=Human Resources,OU=Office,OU=Superior Paving Employees,DC=superiorpaving,DC=net" -properties scriptpath | Set-ADUser -scriptpath hrlogon2.vbs
Get-ADUser -Filter * -searchbase "OU=Marketing,OU=Office,OU=Superior Paving Employees,DC=superiorpaving,DC=net" -properties scriptpath | Set-ADUser -scriptpath estimatorlogon2.vbs
Get-ADUser -Filter * -searchbase "OU=Safety,OU=Office,OU=Superior Paving Employees,DC=superiorpaving,DC=net" -properties scriptpath | Set-ADUser -scriptpath bristowlogon2.vbs
Get-ADUser -Filter * -searchbase "OU=Shop,OU=Superior Paving Employees,DC=superiorpaving,DC=net" -properties scriptpath | Set-ADUser -scriptpath bristowlogon2.vbs
Get-ADUser -Filter * -searchbase "OU=STC,OU=Superior Paving Employees,DC=superiorpaving,DC=net" -properties scriptpath | Set-ADUser -scriptpath Trucking2.vbs
Get-ADUser -Filter * -searchbase "OU=Operations,OU=Superior Paving Employees,DC=superiorpaving,DC=net" -properties scriptpath | Set-ADUser -scriptpath bristowlogon2.vbs
Get-ADUser -Filter * -searchbase "CN=betty nowak,OU=Office,OU=Superior Paving Employees,DC=superiorpaving,DC=net" -properties scriptpath | Set-ADUser -scriptpath bristowlogon2.vbs