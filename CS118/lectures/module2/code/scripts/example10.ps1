# Define the source directory and backup folder paths
$sourceDirectory = "C:\admin"
$backupDirectory = "C:\temp\backup"
$timestamp = (Get-Date -Format "yyyyMMdd_HHmmss")
$backupFile = "$backupDirectory\backup_$timestamp.zip"
 
# Check if the backup directory exists; if not, create it
if (!(Test-Path -Path $backupDirectory)) {
    New-Item -ItemType Directory -Path $backupDirectory -Force
    Write-Output "Backup directory created at $backupDirectory"
} else {
    Write-Output "Backup directory already exists at $backupDirectory"
}
 
# Compress the contents of the source directory into a zip file in the backup directory
Compress-Archive -Path $sourceDirectory -DestinationPath $backupFile -Force
 
Write-Output "Backup completed. The compressed file is saved as $backupFile"


<# 

Explanation:
$sourceDirectory specifies the folder to back up (C:\admin), and $backupDirectory sets the destination for the backup.
$timestamp is added to the backup file name to create unique backups with the current date and time.
Test-Path checks if the backup folder exists. If not, New-Item creates it.
Compress-Archive compresses the contents of C:\admin into a zip file, using -Force to overwrite if a file with the same name exists.
Write-Output confirms the successful creation of the backup.

#>
