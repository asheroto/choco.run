
# Chocolatey installs made faster...
In a hurry? Bad memory? Just want to get some Chocolatey goodness in your machine?

***WELCOME HOME!***

User guide to **choco.run** in three commands:

Open PowerShell (as an Administrator) and run the following...
 1. `wget choco.run -out choco.cmd`
 2. `type .\choco.cmd`(safety check the download is correct, skipped in screenshot)
 3. `.\choco.cmd`
 4. Delete choco.cmd by running `erase .\choco.cmd` or else Chocolatey's **choco** command won't work
 
![expected-output](https://github.com/asheroto/choco.run/blob/master/expected-output-no-safety-check.jpg?raw=true)
 
**I hope all of you have enjoyed this extensive user guide :D**

# The choco.run Inquisition

Now you may be asking yourself...

![meme](https://raw.githubusercontent.com/asheroto/choco.run/master/meme.jpg)


But it's really no magic...

|Command|Description
|----------------|-------------------------------
`wget`|alias of Invoke-WebRequest
`choco.run`|redirects to [this text](https://raw.githubusercontent.com/asheroto/choco.run/master/install)
`-out choco.cmd`|saves that as a batch script
`choco.cmd`|launches that script

For the safety check, the output should look like [this](https://github.com/asheroto/choco.run/blob/master/expected-output1.jpg) before you run **choco.cmd**, and similar to [this](https://github.com/asheroto/choco.run/blob/master/expected-output2.jpg) after you run it (normal choco install).

## Q&A
- **How long has wget been an alias of Invoke-WebRequest? Will it work on my machine?**
	- It's been an alias since at least 2016, but I'm not sure exactly when they added it before then
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
	- If you *do* want to [help pay for the domain](https://www.coinpayments.net/$asheroto) that would be awesome, even if it's just $1 it would be helpful! All donations will go towards renewing the domain. If the amount surpasses the domain renewal cost (due to popularity) I will coordinate an effort to improve upon the original idea.
