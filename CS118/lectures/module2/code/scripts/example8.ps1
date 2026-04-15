# Define the log name and the number of entries to retrieve
$logName = "System"
$entryCount = 10
 
# Retrieve the latest error events from the specified log
$errors = Get-EventLog -LogName $logName -EntryType Error -Newest $entryCount
 
# Check if there are any error entries
if ($errors.Count -gt 0) {
    Write-Output "Displaying the latest $entryCount error events from the $logName log:"
    $errors | Select-Object TimeGenerated, Source, EventID, Message | Format-Table -AutoSize
} else {
    Write-Output "No recent error events found in the $logName log."
}


<#

Explanation:
$logName specifies the event log to check (System in this example).
$entryCount sets the number of latest entries to retrieve (10 in this example).
Get-EventLog retrieves the latest error entries of type Error from the specified log, limited by $entryCount.
If there are error entries, Select-Object extracts TimeGenerated, Source, EventID, and Message for each error and formats it into a table.
If there are no recent error entries, it outputs a message indicating that no errors were found.

#>
