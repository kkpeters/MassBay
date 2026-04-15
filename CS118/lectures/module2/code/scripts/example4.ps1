# Define the computer name (use "localhost" to restart the local computer)
$computerName = "RemoteComputerName"
 
 
# Check if the current user has administrative privileges
if (-not ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) {
    Write-Output "You need to run this script as an administrator."
    exit
}
 
 
# Prompt user for confirmation before restarting
$confirmation = Read-Host "Are you sure you want to restart $computerName? (Y/N)"
if ($confirmation -eq "Y") {
    # Restart the computer with a force parameter and a delay of 5 seconds
    Restart-Computer -ComputerName $computerName -Force -Delay 5 -ErrorAction SilentlyContinue
    
    # Check if the restart command succeeded
    if ($?) {
        Write-Output "$computerName is restarting."
    } else {
        Write-Output "Failed to restart $computerName. Please check network connectivity and permissions."
    }
} else {
    Write-Output "Restart operation canceled."
}


<# 

Explanation:
$computerName specifies the computer to restart. Use "localhost" for the local computer or replace it with the remote computer name.
A check ensures the script is run with administrative privileges.
Read-Host prompts the user to confirm the restart operation.
If confirmed, Restart-Computer restarts the specified computer, with a -Force parameter to ensure it restarts even if applications are open and a -Delay of 5 seconds.
$? checks if the command was successful and provides feedback on the operation.

#>
