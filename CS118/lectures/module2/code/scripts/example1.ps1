# Define the folder path and file name

$folderPath = "C:\admin"

$filePath = "$folderPath\example.txt"



# Check if the folder exists

if (!(Test-Path -Path $folderPath)) {

  # If not, create the folder

  New-Item -ItemType Directory -Path $folderPath

  Write-Output "Folder created at $folderPath"

} else {

  Write-Output "Folder already exists at $folderPath"

}



# Check if the file exists

if (!(Test-Path -Path $filePath)) {

  # If not, create a new text file and add some content

  "Hello, World!" | Out-File -FilePath $filePath

  Write-Output "File created at $filePath with initial content."

} else {

  Write-Output "File already exists at $filePath"

}


<#

Explanation:


$folderPath and $filePath store the folder and file paths.
Test-Path checks if the specified path exists.
New-Item creates the folder if it does not already exist.
Out-File creates a new file and writes "Hello, World!" into it.
This script introduces basic concepts like variables, conditionals, and file handling in PowerShell.

#>
