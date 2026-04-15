# Define the server or IP address to test
$target = "8.8.8.8" # This is Google's public DNS server
 
# Use Test-Connection to ping the target
$response = Test-Connection -ComputerName $target -Count 4 -ErrorAction SilentlyContinue
 
# Check if the target responded
if ($response) {
    Write-Output "Connection to $target was successful. Here are the details:"
    $response | Select-Object Address, ResponseTime, StatusCode | Format-Table -AutoSize
} else {
    Write-Output "Failed to connect to $target. The target may be unreachable."
}

<#

Explanation:
$target is the server or IP address you want to test. Here, 8.8.8.8 is used as an example, which is a reliable public DNS server.
Test-Connection sends four ping requests to the target (-Count 4). -ErrorAction SilentlyContinue suppresses errors if the target is unreachable.
If the response is successful, it displays the address, response time, and status code in a formatted table.
If the connection fails, a message is outputted to indicate that the target may be unreachable.

#>
