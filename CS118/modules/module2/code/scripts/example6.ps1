# Define the package name
$packageName = "7zip4powershell"
 
 
# Check if the package is already installed
if (!(Get-Package -Name $packageName -ErrorAction SilentlyContinue)) {
    # Install the package if it is not already installed
    Install-Package -Name $packageName -Source PSGallery -Force
    Write-Output "$packageName has been installed successfully."
} else {
    Write-Output "$packageName is already installed."
}
 

<#

 Explanation:
$packageName specifies the name of the package to be installed.
Get-Package checks if the package is already installed, using -ErrorAction SilentlyContinue to suppress errors if the package is not found.
Install-Package installs the specified package from the PowerShell Gallery (PSGallery) if not installed. The -Force parameter confirms the installation without prompting.
Write-Output provides feedback on whether the package was newly installed or already present.

#>
