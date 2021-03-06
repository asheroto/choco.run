

# Chocolatey installs made faster...
In a hurry? Bad memory? Just want to get some Chocolatey goodness in your machine?

Choco.run makes installing Chocolatey easy!

***WELCOME HOME!***

User guide to **choco.run** in two commands:

Run in PowerShell (as an Administrator):
 1. `wget choco.run -out c.cmd`
 2. `.\c.cmd`
 
![expected-output](https://github.com/asheroto/choco.run/blob/master/choco.run-install.gif?raw=true)
 
**I hope everyone has enjoyed this extensive user guide :D**

# Alternate method - disable Chocolatey prompts

This method installs Chocolatey but also disables the Yes/No prompts when installing, upgrading, or uninstalling.

Run in PowerShell (as an Administrator):
 1. `wget alt.choco.run -out c.cmd`
 2. `.\c.cmd`

# Alternate method, without choco.run

This method works because nowadays Windows has NuGet and PSGallery as package providers.

Run in PowerShell (as an Administrator):

```
Install-PackageProvider -Name ChocolateyGet
Install-Package -Name Chocolatey -Provider ChocolateyGet
```
 
 # Troubleshooting
 
 If you get an error message regarding `-out`, run the above commands but replace `-out` with `-outfile`.
 
 If you still have an issue, open up a web browser and navigate to [manual.choco.run](http://manual.choco.run). This is the exact command displayed on the Chocolatey website to install Chocolatey. Simply copy and paste the command into PowerShell as an Administrator. 
 
 ---
 - **Error: Could not create SSL-TLS Secure Channel**
	- Sometimes this occurs on older versions of Windows
	- To fix, go [here](https://raw.githubusercontent.com/asheroto/choco.run/master/Fix%20Could%20not%20Create%20SSL-TLS%20Secure%20Channel.reg) and save the text as **Fix.reg**, then double-click **Fix.reg** and click **Yes** to apply the fix to the computer. Then run **.\c.cmd** in PowerShell again.
	- You may need to [update your root certificates](https://asher.tools/root-certificate-updater) if the above fix doesn't work and you are using an older OS.

# The choco.run Inquisition

Now you may be asking yourself...

![meme](https://raw.githubusercontent.com/asheroto/choco.run/master/meme.jpg)


But it's really no magic...

|Command|Description
|----------------|-------------------------------
`wget`|alias of Invoke-WebRequest
`choco.run`|redirects to [this text](https://raw.githubusercontent.com/asheroto/choco.run/master/install)
`-o` or `-OutFile`|directs the output to a file you specify (`c.cmd` in the above case)
`.\c.cmd`|launches that script

## Q&A
- **How long has wget been an alias of Invoke-WebRequest? Will it work on my machine?**
	- It's been an alias since at least 2016, but I'm not sure exactly when they added it before then
	- Some machines don't let you use `-out` so you must instead use `-outfile`
- **How much do you make off of this?**
	- Exactly $0 minus $18.88/year for the domain
- **Advertising revenue? Free chocolate?**
	- Nope, no revenue
	- Only discounted uneaten Halloween chocolate...
- **Is this a security risk?**
	- Although you would almost always be okay using this, I always recommend to CHECK what you downloaded from **choco.run** (step 2 in the user guide) before you run commands as an Administrator! But then again, do you ever check chocolatey.org when you run choco commands as Administrator?
	- And besides, my supporters support this project handsomely...
- **How can I support this project?**
- 	- **Star** this project on GitHub so I see someone is out there
	- I'm not trying to make a profit, just make things easier for everyone
