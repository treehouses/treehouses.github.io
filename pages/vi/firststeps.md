# First Steps

### The Big Picture

Welcome to the first steps for becoming becoming a Virtual Systems Engineering Intern at OLE! After completing these steps, you will be working on OLE’s project, treehouses.io. These first steps is a process to prove that you have learned the foundational skills before you can progress to working on harder projects with larger teams. Consider this to be the interview for the internship.

If you are selected for the internship after completing the steps, you will be officially invited to join the OLE interns team! We’ll add you to the Virtual Interns Gitter chatroom and assign you to a specific team to work on developing and improving OLE’s software.

Once accepted, you and your team will work on an assignment, and we’ll switch up the assignments each week. As part of this internship, you will have the opportunity to work with software and languages including **[Git](https://git-scm.com/)**, **[GitHub](https://github.com/)**, **[Markdown](https://daringfireball.net/projects/markdown/syntax)**, **[Vagrant](https://www.vagrantup.com/)**, **[VirtualBox](https://www.virtualbox.org/)**, **[Command Line/Terminal](https://en.wikipedia.org/wiki/Command-line_interface)**, **[Command Line/Terminal Scripts](https://www.codecademy.com/articles/command-line-commands)**, **[Vim](https://www.vim.org/)**, **[CouchDB](http://couchdb.apache.org/)** and **[Docker](https://www.docker.com/).** Furthermore, you will be able to learn and practice your skills in using **[Raspberry Pi Hardware](https://raspberrypi.org**).

The goal of OLE is to provide educational infrastructure to learners and educators in remote areas of the globe. The Raspberry Pi is utilized in pursuit of this goal to provide a means by which devices can access educational resources.
Our goal is to provide a stable system that is widely accessible by numerous devices and operating systems.
This equipment will be deployed in the field with little or no access to the internet, so its reliability is of paramount importance.


**NOTE**: This is an unpaid but intensive internship that requires 16 hours of work each week. More information about the internship can be found in our [FAQ](vi-faq.md#General_Internship_Questions). If you have further questions, don’t hesitate to ask other members in the Gitter [chat](vi-chat.md)!

### Pre-Requisites
#### Hardware requirement:
1.  Raspberry Pi 4 ([Pi 4 information](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/))
        - Note: Raspberry Pi 3b and 3b+ are also working
2.  Power cord for the Pi
	- Standard USB-C power cord: 15.3W for Pi 4
3.  3 microSD cards
	- 16gb or greater
	- U1 is recommend (Class 10 is ok)
4.  MicroSD card reader
	- Check your computer if you have a slot for a card reader otherwise use a USB reader
5.  Ethernet cable
6.  Android device (phone or tablet)
	- Memory (Ram): Minimum of 2 GB
	- Operating System: Suggested Android 8 (Oreo) (minimum Android 6)
7.  Laptop or computer with 8 or more GB of RAM
8.  Optional: USB keyboard, monitor, and HDMI cable


---

# The Steps

Social coding is a huge part of any open source and collaborative project, and the Open Learning Exchange (OLE) is no different. In the following series of steps, you will learn about Markdown, Vagrant, Docker, Git, GitHub, GitHub issues, GitHub pull requests, etc. You will also be introduced to OLE’s digital library that hosts the learning materials – [Planet](https://github.com/open-learning-exchange/planet).

Because these steps are simple, we expect high-quality work, which may take a longer time. We want to see that you are capable of using or learning how to use these tools (writing good GitHub issues, creating pull requests, using Vagrant and Docker, etc.). These steps may seem easy, but we want you to impress us with good GitHub etiquette and quality Markdown. The bare minimum would be to just passively follow the steps; you should do further reading about the tools/languages we use so you can further your understanding and relieve confusion if you're unclear about how something works. **Treat these steps as learning opportunities!** The GitHub and Markdown skills you practice here are very important for both this internship and a future software development career.

The MDwiki has plenty of resources to help you complete the steps. There is a list of useful links at the end of each step. We also created a [FAQ page](https://treehouses.github.io/#!./pages/vi/faq.md) where you can find the answers to some commonly asked questions. This page has even more [useful links and video tutorials](https://treehouses.github.io/#!./pages/vi/faq.md#Helpful_Links) that will help you become familiar with the tools/languages we use. For anything that is not on the FAQ page, Google and Stack Exchange are your friends :)

**We also want you to keep us updated a relatively good amount in the Gitter chat as you complete these steps. We will ask you to send us messages, links, and screenshots along the First Steps, and we will use this to track your progress, so please do not forget to do so.** Check our [Gitter chat](https://treehouses.github.io/#!./pages/chat/chat.md) page for more information about how to best communicate in Gitter.

A very large part of these steps is finding problems with these steps and this MDwiki, so take note of any issues that you run into or suggestions for improvement while doing these steps.

There is no official deadline to complete these steps, but most candidates who are approved for the internship program finished the steps within 7-8 days. Good luck!


# Step 0 - Introductory Steps

1. Complete the [New Virtual Intern Application form](https://docs.google.com/forms/d/e/1FAIpQLSeooEi9vJeb_nsf8WEXqEVRn1Ko6d4M-qF76ik4v0xgToUiSA/viewform?usp=sf_link).

2. Create a [GitHub account](https://github.com/) then watch <a href="https://github.com/treehouses.github.io" target="_blank">treehouses.github.io repo</a> and Follow [Dogi](https://github.com/dogi), [Ryan](https://github.com/indepthh), [Vassilis](https://github.com/vers4ce), [Roshan](https://github.com/rrijal53), [Sam](https://github.com/Liew211), [Samuel](https://github.com/samuelchen1213) and [Arran](https://github.com/ArranHL) on GitHub. 

In GitHub, we "[Watch](https://help.github.com/en/articles/watching-and-unwatching-repositories)" organization repositories and ["Follow"](https://help.github.com/en/articles/following-people) individuals. Look for the "Watch" button at the top right of the page when you are in a repository.  Also, follow each other to see what others in the group are doing. (Click on the image to enlarge.)   

### Setting up your environmnent

We interact with the Raspberry Pi via a command terminal which is natively available for both Mac and Linux based systems, if however you are utilizing a windows device Ubuntu or Debian based distribution system will be required.  
### Setting up Debian on Windows 
##### Disclaimer 


# Step 1 - Installing and finding your Raspberry Pi 

### So What is the Raspberry Pi?
The Raspberry Pi is a low cost single board computer, think of it as a downsized desktop tower, with the ability to receive, compute and output data and information, just without a mouse, keyboard or screen.
The OLE Raspberry Pi image is a modified [Raspbian](https://www.raspberrypi.org/downloads/raspbian/) image, with additional software pertaining to the open learning exchange program, which you can put onto the microSD card for the Raspberry Pi.

### How it works:  
1. The Raspberry Pi is loaded with an operating system developed by the OLE team.
2. The Raspberry Pi is used in the field to allow devices to connect to it. 
3. Through this connection, these devices can access educational material (Planet).

### Get your RPi Up and Running
After getting your microSD cards and card reader/adapter, our first step will be to burn an image of the treehouse onto the a microSD card which we will later insert into our Rasperry Pi.

### Prepping the microSD card:
1. Download the latest treehouse image that is available [here](http://download.treehouses.io)
2. Download and install [Etcher](https://etcher.io)
3. Insert a microSD card into the card reader and connect this to your computer 
4. Burn the treehouses image onto the microSD card, this is done by:
* Opening Etcher
* Clicking "Select Image" -This is the downloaded image
* Selecting the "Target" - This is your microSD card
* Clicking "Flash!"
The process will take approximately 10 min to complete.
5.  Once it's done burning,  if you chose you can view the contents in the `boot` partition. You will see a long list of files.
6. Unmount and safely eject the microSD card from your computer. 

### Starting up the Raspberry Pi:
1. Place the microSD card into the RPi.
2. Connect the RPi to power, if there in an "on" switch or button ensure the Rpi has power, a red light will be visible.


### Setting Up via an Android Device:

#### If you do not have an android device please continue to:


1. If you have an android phone, find the Treehouses Remote app on Google Play Store and [download](https://play.google.com/store/apps/details?id=io.treehouses.remote) it.
2. Wait for a minute or two and look for `treehouses` in your Android device's Bluetooth pairing screen.


### Connect to Raspsberry Pi via Bluetooth

1. In the android bluetooth settings, scan and pair with the Pi device.
2. Click on the three dots (menu icon) at the upper right corner of the app. 
3. Click on `Connect a device - Insecure` to display paired Bluetooth devices or scan for new devices around you.
4. Select `raspberrypi` or whatever name that is given to your Raspberry Pi device to connect to the Raspberry Pi.
5. If it does not work, please click on `cmd` button and repeat steps 1 through 3.


## Option 2: *Mac* .md PROCESS NEEDED  


### Features

- The connection status is shown on the action bar.
- In `cmd`
  - Use the Wi-Fi icon on the action bar to comfigure the Raspberry Pi to connect to a Wi-Fi network.
  - Use buttons on the lower part of the screen to performe various commands.
  - The circle on the upper left corner shows the Raspberry Pi's internet connectivity status using color green and red.
  - To return to dashboard, click on the back button at the bottom of the device.

## Interfacing with the Raspberry Pi
### Option 2: NEW Mac .md PROCESS NEEDED  

### Option 3: NEW Linux .md PROCESS NEEDED  

### Option 3: NEW Windows .md PROCESS NEEDED  


# Step 2 - Use SSH to remotely control your Raspberry Pi

The Systems team uses SSH (Secure Shell) to securely and remotely control the Raspberry Pis we work with.  SSH works by providing an admin protocol that allows users to control and modify their remote servers over the Internet.

In this step you will:
- [Generate a new SSH key and add it to the ssh-agent](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)  
- [Add the SSH key to your GitHub account](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)


### Log in with the Pi user

Once you start up your Raspberry Pi and find its **local IP address**, you can connect to it from your computer. Windows users should use Git Bash.  

Run the following in your Terminal:  
`ssh pi@[local IP address]`

When you connect through SSH for the first time, you will be prompted to accept the RSA key fingerprint, type “yes” to continue.  The Pi user's default password is "raspberry".


### Add ssh key to the Raspberry Pi

To add your ssh key to your Raspberry Pi, run: `treehouses sshkey add "your ssh key"`

### Log in by Root

To log into root, you can run `sudo -s` while logged into the Pi user, or ssh directly into it by running `ssh root@[local IP address]` instead of `ssh pi@[local IP address]`.

### Rename Pi by Github Name

To rename your Raspberry Pi, run `treehouses rename "username"` and replace `username` with your Github username.

## Tor
Tor is a computer network run by volunteers worldwide. Each volunteer runs what is called a relay, which is just a computer that runs software allowing users to connect to the Internet via the Tor network.

Before hitting the open Internet, the Tor Browser will connect to several different relays, wiping its tracks each step of the way, making it difficult to figure out where, and who, you really are.

First start by watching this {video](https://www.youtube.com/watch?v=6czcc1gZ7Ak) on the Tor browser 
[Get Tor](https://www.torproject.org/download/)

The Systems Team utilizes this tool to provide a further layer of security when interacting with the Raspberry Pis deployed in the field.

### Get Tor

#### macOS

You should already have [Homebrew](https://brew.sh) installed.  You can check if it's already installed by running `brew -v` in your terminal.  If you haven't yet installed it, run the following:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install wget
```

Then, install Tor and Tor Browser:
```
brew install tor
brew cask install tor-browser
```

#### Windows & Linux

Install [Tor](https://www.torproject.org/download/)


### Turn on Tor

To activate Tor, ssh into your Raspberry Pi with `root`, and run `treehouses tor start` and `treehouses tor notice on`.

# Step 3 - Markdown and Fork Tutorial
*NEW Fork PROCESS NEEDED* 
Follow the instructions on the NEW .md PROCESS NEEDED  
Make sure that you've linked to your github.io and pull request link on the [Gitter chat](https://gitter.im/treehouses/Lobby) (https://YourUserName.github.io and `LinkToYourPullRequest`). Also include Raw.githack link in your pull request(https://raw.githack.com/YourUserName/YourUserName.github.io/YourBranchName/#!pages/vi/profiles/YourUserName.md).

**NOTE**: Raw.githack link above is case sensitive to your username.

* Once you complete Step 3 you will have:
    * 1 Pull request made
Learning about VNC 


# Step 4 - RPi Tutorial

NEW .md PROCESS NEEDED  

Treehouse Repositories:
https://docs.google.com/document/d/1g9Odinwx6GbyvH0B-8GSi5wL2ilUm2ohvrg3I-P_2q8/edit 
https://docs.google.com/document/d/1rzRlMifcY6ClLymQMCRwOqyrWL9ZV6H5MBmHow6wuIY/edit# 


# Step 5 - Keeping Fork Updated

Follow the directions at NEW .md PROCESS NEEDED to keep your username.github.io and your local repository up to date.


# Step 6 - GitHub Issues Tutorial

Follow the tutorial under the NEW .md PROCESS NEEDED to create at least one issue. Post a link in [Gitter](https://gitter.im/treehouses/Lobby) whenever you create an issue or when you comment on someone else's issue. You are encouraged to post as many issues as you can for improving the page as well as for personal practice. No issue is too big or too small to be filed and it is OK if you are not sure how to fix it yourself. If you know how to solve an issue, be sure to provide a detailed account of your research and show how to fix it. It is ok to file an issue about minor typos and very small changes, but do not make this the case for all of the issues that you file. You can also work on issues that you didn't create.

Make sure you have created at least one issue, resolved it, commented on an issue you didn't create and have a pull request with the fix merged. You may continue making Issues, Pull requests and Comments, or move on to the next step, while you are waiting for your pull request to be merged. The approval process for your Step 6 fix may take time, but it is OK to continue working.

- Once you complete Step 6 you will have:
   * 2 pull requests made (one at step 3 and one at step 6)
   * 1 comment added (on an issue you didn't create)
   * 1 issue created

Please note that creating and working on Issues are not exactly bound by the "Step" you are in. Feel free to move on to other steps, and make more Issues and Pull Requests while you wait on OLE approval for your merge(s). 


# Step 7 - Pihole? Next Cloud, Tor browser, Planet 

NEW .md PROCESS NEEDED  


# Step 8 - Create Issues and Pull Requests

In this step we will adopt the motto of "Practice makes Perfect". You will follow the same steps as in **Step 6**, continuing to improve this Markdown Wiki so that it is educational, yet easy to understand for future interns.

You should: 
* Add comments to three issues other other than your own (somebody else's issue)
* Create three new issues (in addition to those you have already created in previous steps)
	* Get approval to work on the issues you have created **Make sure someone from the System's team confirms that you should work on the isseue, BEFORE you start to work on it** 
* Resolve the three issues by making the necessary changes in your repo with three separate pull requests. 

	

Just as your learning with this Wiki was made possible by the efforts of previous interns, now we turn to you to continue that tradition and help future interns take their First Steps. Through this step, you should try to further improve our Markdown Wiki, with better explanations, formatting fixes, and more! You must have made your pull requests and have them each approved by at least two other OLE team members/interns in order for it to be merged to the upstream repository. Just as before, announce your Pull Request on the Gitter chat so other members can review it. You may need to make some additional corrections. Learn by teaching - or editing our teaching tool, in this case!

**NOTE**: When you are fixing an issue, mention the issue number you are fixing in the title of your pull request and make a new branch for every new issue from the master branch.

- Once you complete Step 8, you should have:
   * 5 merged pull requests (one at step 3, one at step 6 and three at step 8)
   * 4 comments made on *issues you didn't create* (one at step 6 and three at step 8)
   * 4 issues created (one at step 6 and three at step 8)

**NOTE**: You can track your progress with the number of pull requests and issues [here](vtrack-progress.md).

# Step 9 - Be part of the team

Next thing is to add yourself to the virtual intern list found in [team.md](team.md) and create a pull request. Message us ("@/all" and "@dogi") in the Gitter chat room so that we can set up a meeting and add you to the team as soon as possible.

Make sure to read through the [intern orientation document](orientation.md) before the meeting.
