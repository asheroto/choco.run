[System.Net.ServicePointManager]::SecurityProtocol = 3072
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
