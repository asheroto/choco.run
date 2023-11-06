<#
    .SYNOPSIS
    Installs Chocolatey and disables confirmation prompts with a simple one-line command.

    .DESCRIPTION
    This PowerShell script facilitates the installation of Chocolatey and disables confirmation prompts for package installations, upgrades, and removals, with a simple one-line command.

    .EXAMPLE
    iwr alt.choco.run | iex
#>

# Header
Write-Output ("-" * 80)
Write-Output "choco.run says hello..."
Write-Output ("-" * 80)

# Set the execution policy to RemoteSigned
Write-Output "Changing the execution policy to RemoteSigned..."
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force

# Set the temp dir to the system temp dir
$originalPath = Get-Location
Set-Location "$env:SystemRoot\Temp"

# Install Chocolatey
Write-Output "Installing Chocolatey..."
Write-Output ("-" * 60)
[System.Net.ServicePointManager]::SecurityProtocol = [System.Net.SecurityProtocolType]::Tls12
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Verify if Chocolatey is installed
$chocoCommand = Get-Command 'choco' -ErrorAction SilentlyContinue
Write-Output ("-" * 60)
if ($chocoCommand) {
    Write-Output ""
    Write-Output "Chocolatey has been installed!"

    # Disable confirmation prompts
    Write-Output "Disabling confirmation prompts..."
    choco feature enable -n=allowGlobalConfirmation

    Write-Output "You can now use the 'choco' command in this window!"
} else {
    Write-Output "An error may have occurred. 'choco' command is not accessible."
}
Write-Output ""

# Return to the original directory
Set-Location $originalPath