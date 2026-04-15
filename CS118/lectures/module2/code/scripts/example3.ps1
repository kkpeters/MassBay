# Define the URL and output file path
$url = "https://www.massbay.edu"
$outputFile = "C:\WebContent.txt"
 
 
# Use Invoke-WebRequest to retrieve the webpage content
$response = Invoke-WebRequest -Uri $url
 
 
# Save the raw HTML content to a text file
$response.Content | Out-File -FilePath $outputFile
 
 
Write-Output "Web content from $url has been saved to $outputFile"
 
<# 

Explanation:
$url stores the URL to be accessed, and $outputFile is the path for saving the output.
Invoke-WebRequest makes an HTTP request to the specified URL and stores the response.
$response.Content contains the HTML content of the webpage, which is piped to Out-File to save it as a text file.
Write-Output provides feedback to the user, confirming that the content was saved successfully.

#>

