[![GitHub Release Date - Published_At](https://img.shields.io/github/release-date/asheroto/choco.run)](https://github.com/asheroto/choco.run/releases)
[![GitHub Downloads - All Releases](https://img.shields.io/github/downloads/asheroto/choco.run/total)](https://github.com/asheroto/choco.run/releases)
[![GitHub Sponsor](https://img.shields.io/github/sponsors/asheroto?label=Sponsor&logo=GitHub)](https://github.com/sponsors/asheroto?frequency=one-time&sponsor=asheroto)
<a href="https://ko-fi.com/asheroto"><img src="https://ko-fi.com/img/githubbutton_sm.svg" alt="Ko-Fi Button" height="20px"></a>
<a href="https://www.buymeacoffee.com/asheroto"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=seb6596&button_colour=FFDD00&font_colour=000000&font_family=Lato&outline_colour=000000&coffee_colour=ffffff](https://img.buymeacoffee.com/button-api/?text=Buy%20me%20a%20coffee&emoji=&slug=asheroto&button_colour=FFDD00&font_colour=000000&font_family=Lato&outline_colour=000000&coffee_colour=ffffff)" height="40px"></a>

# Install Chocolatey in one simple line

![demo](https://github.com/asheroto/choco.run/assets/49938263/1f50cc9d-b786-4dbe-aaec-efe195698e2b)

In a hurry? Bad memory? Just want to get some Chocolatey goodness in your machine?

Choco.run makes installing Chocolatey easy!

## Usage

Run in PowerShell (as an Administrator):

```powershell
iwr choco.run | iex
```

## Alternate method - disable Chocolatey prompts

This method installs Chocolatey but also disables the Yes/No prompts when installing, upgrading, or uninstalling.

Run in PowerShell (as an Administrator):

```powershell
iwr alt.choco.run | iex
```

## Alternate method, without choco.run

Run in PowerShell (as an Administrator):

```powershell
Install-PackageProvider -Name "NuGet" -Force
Set-PSRepository -Name "PSGallery" -InstallationPolicy Trusted
Install-Module -Name "Chocolatey"
```

## Troubleshooting

If you still have an issue, open up a web browser and navigate to [manual.choco.run](http://manual.choco.run) which redirects to the [official Chocolatey setup page](https://docs.chocolatey.org/en-us/choco/setup).

## How it works

![meme](https://raw.githubusercontent.com/asheroto/choco.run/master/meme.jpg)

[choco.run](https://choco.run) redirects to the latest code-signed release of [install.ps1](https://github.com/asheroto/choco.run/releases/latest/download/install.ps1)

[alt.choco.run](https://alt.choco.run) redirects to the latest code-signed release [install-no-choco-prompts.ps1](https://github.com/asheroto/choco.run/releases/latest/download/install-no-choco-prompts.ps1)