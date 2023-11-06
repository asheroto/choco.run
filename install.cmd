:: choco.run
:: https://github.com/asheroto/choco.run
::
:: This script installs Chocolatey and refreshes the environment variables.
::
:: ----------  Usage  ----------
:: wget choco.run -o c.ps1
:: .\c
:: -----------------------------
::
:: Use alt.choco.run if you want to install Chocolatey and enable the allowGlobalConfirmation feature
:: to prevent Chocolatey from prompting for confirmation when installing packages.

@echo off

:: Header
echo.
echo -------------------------------------------------------------
echo choco.run says hello...
echo -------------------------------------------------------------
echo.

:: Set the temp dir to the system temp dir
pushd "%SystemRoot%\Temp"

:: Install Chocolatey
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "[System.Net.ServicePointManager]::SecurityProtocol = 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))"

:: Adjust the PATH variable so that choco is available
SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

:: Notify the user that Chocolatey has been installed
echo.
echo Chocolatey has been installed!

echo.
echo -------------------------------------------------------------
echo You can now use choco in this window.
echo -------------------------------------------------------------

:: Finished
echo.
echo -------------------------------------------------------------
echo choco.run has finished!
echo -------------------------------------------------------------
echo.

:: Return to the original directory
popd