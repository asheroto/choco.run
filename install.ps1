<#
    .SYNOPSIS
    This script installs Chocolatey and refreshes the environment variables.

    .DESCRIPTION
    This script is the PowerShell version of a batch file to install Chocolatey and refresh the environment variables.
    It can be used directly by calling it from the PowerShell prompt.

    .EXAMPLE
    iwr choco.run | iex

    .NOTES
    Use alt.choco.run if you want to install Chocolatey and enable the allowGlobalConfirmation feature
    to prevent Chocolatey from prompting for confirmation when installing packages.
#>

# Header
Write-Output "-------------------------------------------------------------"
Write-Output "choco.run says hello..."
Write-Output "-------------------------------------------------------------"

# Set the execution policy to RemoteSigned
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Set the temp dir to the system temp dir
$originalPath = Get-Location
Set-Location "$env:SystemRoot\Temp"

# Install Chocolatey
$installCommand = "[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
Invoke-Expression -Command $installCommand

# Notify the user that Chocolatey has been installed
Write-Output "Chocolatey has been installed!"

# Notify the user that they can now use choco in this window
Write-Output "-------------------------------------------------------------"
Write-Output "You can now use choco in this window."
Write-Output "-------------------------------------------------------------"

# Finished
Write-Output "-------------------------------------------------------------"
Write-Output "choco.run has finished!"
Write-Output "-------------------------------------------------------------"

# Return to the original directory
Set-Location $originalPath