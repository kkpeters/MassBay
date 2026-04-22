# Define the CPU time threshold in seconds

$cpuThreshold = 100



# Get all running processes and filter based on CPU time

$highCpuProcesses = Get-Process | Where-Object { $_.CPU -gt $cpuThreshold }



# Display the filtered processes in a table

$highCpuProcesses | Select-Object Name, Id, CPU | Format-Table -AutoSize



# Output message if no processes exceed the threshold

if ($highCpuProcesses.Count -eq 0) {

  Write-Output "No processes found exceeding $cpuThreshold seconds of CPU time."

} else {

  Write-Output "Processes using more than $cpuThreshold seconds of CPU time are listed above."

}


<# 

Explanation:
$cpuThreshold sets the CPU time limit in seconds.
Get-Process retrieves all running processes.
Where-Object filters for processes where the CPU time (in seconds) is greater than $cpuThreshold.
Select-Object formats the output to show only the Name, Id, and CPU fields.
Format-Table displays the results in a nicely formatted table.
A conditional check outputs a message if no processes exceed the threshold.

#>
