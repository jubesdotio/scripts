# Update [Host]
# Requires Domain Admin Access

$computer = "[Host]"
$namespace = "root\CIMV2"
$userSessions = Get-WmiObject -class Win32_ServerConnection -computername $computer -namespace $namespace

if($userSessions -ne $null)
{
    Write-Host "The following users are connected: "

    foreach ($userSession in $userSessions)
    {
        $userDetails = [string]::Format("User {0} from machine {1} on share: {2}", $userSession.UserName, $userSession.ComputerName, $userSession.ShareName)
        Write-Host $userDetails
    }    

    Read-Host
}