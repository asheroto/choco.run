<#
.SYNOPSIS
    Installs Chocolatey with a simple one-line command.
.DESCRIPTION
    This PowerShell script facilitates the installation of Chocolatey with a simple one-line command.
.EXAMPLE
    iwr choco.run | iex
.NOTES
    Version      : 2.0.0
    Author       : asheroto
    Tags         : windows install command script powershell installer chocolatey choco automatic installation auto run no-prompt
.LINK
	https://github.com/asheroto/choco.run
#>

# Header
Write-Output ("-" * 80)
Write-Output "choco.run says hello..."
Write-Output ("-" * 80)
Write-Output ""

# Remember the current execution policy of the current process
$originalExecutionPolicy = Get-ExecutionPolicy -Scope Process

# Set the execution policy to Unrestricted (lower than Bypass)
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope Process -Force

# Set the temp dir to the system temp dir
$originalPath = Get-Location
Set-Location "$env:SystemRoot\Temp"

# Install Chocolatey
Write-Output "Installing Chocolatey..."
Write-Output ""
Write-Output ("-" * 60)
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Verify if Chocolatey is installed
$chocoCommand = Get-Command 'choco' -ErrorAction SilentlyContinue
Write-Output ("-" * 60)
if ($chocoCommand) {
    Write-Output ""
    Write-Output "Chocolatey has been installed!"
    Write-Output "You can now use the 'choco' command in this window!"
} else {
    Write-Output "An error may have occurred. 'choco' command is not accessible."
}
Write-Output ""

# Return to the original directory
Set-Location $originalPath

# Restore the original execution policy
Set-ExecutionPolicy -ExecutionPolicy $originalExecutionPolicy -Scope Process -Force