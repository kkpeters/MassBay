# Define the output file path
$outputFile = "C:\ProcessList.csv"
 
 
# Get the list of running processes
$processes = Get-Process | Select-Object Name, Id, CPU, StartTime
 
 
# Export the process information to a CSV file
$processes | Export-Csv -Path $outputFile -NoTypeInformation -Force
 
 
Write-Output "Process information has been exported to $outputFile"


<# 


Explanation:
$outputFile stores the path for the CSV file.
Get-Process retrieves information about all running processes.
Select-Object filters the output to include only Name, Id, CPU, and StartTime properties.
Export-Csv exports the selected process information to a CSV file, with -NoTypeInformation to exclude type info from the output.
Write-Output confirms that the CSV file has been created.


#>
