# Define the server address and port number to test
$server = "google.com"
$port = 80  # HTTP port
 
 
# Use Test-NetConnection to check the connection to the server and port
$response = Test-NetConnection -ComputerName $server -Port $port
 
 
# Check if the connection was successful
if ($response.TcpTestSucceeded) {
    Write-Output "Connection to $server on port $port was successful."
    Write-Output "Here are the connection details:"
    $response | Select-Object ComputerName, RemoteAddress, RemotePort, TcpTestSucceeded | Format-Table -AutoSize
} else {
    Write-Output "Failed to connect to $server on port $port. The port may be closed or the server unreachable."
}


<#

Explanation:
$server specifies the server to test (e.g., google.com), and $port sets the port to check (port 80 for HTTP in this example).
Test-NetConnection checks connectivity to the specified server and port.
If the TcpTestSucceeded property is True, it outputs a success message and displays connection details.
If the test fails, it outputs a message indicating the server or port may be unreachable.


#>
