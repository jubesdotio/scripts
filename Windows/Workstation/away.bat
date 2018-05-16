REM Required Electirc Sheep to be Installed https://gold.electricsheep.org/
REM Starts Electric Sheep and then locks workstation
@START /WAIT /MIN C:\Windows\es.scr -s 
@%windir%\system32\rundll32.exe user32.dll,LockWorkStation