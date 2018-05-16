# Requires ActiveDirectory Module (Check with Get-Module)
Get-ADPrincipalGroupMembership [UserID] | select SamAccountName