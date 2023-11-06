<#
    .SYNOPSIS
    Installs Chocolatey with a simple one-line command.

    .DESCRIPTION
    This PowerShell script facilitates the installation of Chocolatey with a simple one-line command.

    .EXAMPLE
    iwr choco.run | iex

    .NOTES
    This script prompts for confirmation when managing packages. To install packages without confirmation prompts, use alt.choco.run instead of choco.run.
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
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Verify if Chocolatey is installed
$chocoCommand = Get-Command 'choco' -ErrorAction SilentlyContinue
if ($chocoCommand) {
    Write-Output ""
    Write-Output "Chocolatey has been installed!"
    Write-Output "You can now use the 'choco' command in this window!"
} else {
    Write-Output "An error may have occurred. 'choco' command is not accessible."
}

# Return to the original directory
Set-Location $originalPath