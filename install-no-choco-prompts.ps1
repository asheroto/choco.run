<#
    .SYNOPSIS
    Installs Chocolatey, refreshes environment variables, and disables confirmation prompts.

    .DESCRIPTION
    This PowerShell script installs Chocolatey, refreshes environment variables, and suppresses confirmation prompts during installation. Execute it directly from the PowerShell prompt for immediate use.

    .EXAMPLE
    iwr alt.choco.run | iex

    .NOTES
    This script applies the  without requesting confirmation when installing packages. If confirmation prompts are preferred, utilize choco.run instead of alt.choco.run.
#>

# Header
Write-Output "-------------------------------------------------------------"
Write-Output "choco.run says hello..."
Write-Output "-------------------------------------------------------------"

# Set the execution policy to RemoteSigned
Write-Output "Changing the execution policy to RemoteSigned..."
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Set the temp dir to the system temp dir
$originalPath = Get-Location
Set-Location "$env:SystemRoot\Temp"

# Install Chocolatey
Write-Output "Installing Chocolatey..."
$installCommand = "[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"
Invoke-Expression -Command $installCommand | Out-Null

# Disable confirmation prompts
Write-Output "Disabling confirmation prompts..."
choco feature enable -n=allowGlobalConfirmation

# Notify the user that Chocolatey has been installed
Write-Output "Chocolatey has been installed!"

# Notify the user that they can now use choco in this window
Write-Output ""
Write-Output "-------------------------------------------------------------"
Write-Output "You can now use the 'choco' command in this window!"
Write-Output "-------------------------------------------------------------"

# Return to the original directory
Set-Location $originalPath