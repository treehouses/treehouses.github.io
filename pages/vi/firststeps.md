# First Steps

# The Big Picture

Welcome to the first steps for becoming a Systems Engineering Virtual Intern at OLE! After completing these steps, you will be working on OLE’s project, treehouses. These first steps are a process to prove that you have learned the foundational skills before you can progress to working on harder projects with larger teams. Consider this to be the interview for the internship.

If you are selected for the internship after completing the steps, you will be officially invited to join the OLE interns team! We’ll add you to the Virtual Interns Gitter chatroom and assign you to a specific team to work on developing and improving OLE’s software.

Once accepted, you and your team will work on an assignment, and we’ll switch up the assignments each week. As part of this internship, you will have the opportunity to work with software and languages including **[Git](https://git-scm.com/)**, **[GitHub](https://github.com/)**, **[Markdown](https://daringfireball.net/projects/markdown/syntax)**, **[Command Line/Terminal](https://en.wikipedia.org/wiki/Command-line_interface)**, **[Command Line/Terminal Scripts](https://www.codecademy.com/articles/command-line-commands)**, **[Vim](https://www.vim.org/)**, and **[Docker](https://www.docker.com/).** Furthermore, you will be able to learn and practice your skills in using **[Raspberry Pi Hardware](https://raspberrypi.org)**.

The goal of OLE is to provide educational infrastructure to learners and educators in remote areas of the globe. The Raspberry Pi is used in pursuit of this goal to provide a cost-effective means by which devices can access educational resources.  We aim to provide a stable system that is widely accessible by numerous devices and operating systems.  This equipment will be deployed in the field with little or no access to the internet, so its reliability is of paramount importance.


**NOTE**: This is an unpaid but intensive internship that requires 16 hours of work each week. More information about the internship can be found in our [FAQ](faq.md#General_Internship_Questions). If you have further questions, don’t hesitate to ask other members in the Gitter [chat](https://gitter.im/treehouses/Lobby)!

# Pre-Requisites

## Required Prerequisites
The following are required hardware components that will be needed as part of the Virtual Intern placement. Software solutions such as containers are used by the Treehouses team to ensure that the solutions we develop work across computers and locations. However as part of the Systems team, you will need some basic hardware of your own to make sure you can run, test and contribute to the software that the team is developing.

### Hardware requirements:

1.  Raspberry Pi 4 ([Pi 4 information](https://www.raspberrypi.org/products/raspberry-pi-4-model-b/))
	- Any amount of RAM will work, but more is better.
	- Raspberry Pi 3B/3B+ also work, but Pi 4 is recommended
1.  Power supply for the Pi
	- Pi 4: minimum 3.0A, Standard USB-C port
	- Pi 3B/3B+: minimum 2.5A, Micro USB port
1.  3 microSD cards
	- Minimum 16GB
	- U1 or Class 10 required
1.  MicroSD card reader
	- You will need a USB reader if your computer doesn't have an SD card slot
1.  Laptop or computer with minimum 8GB of RAM
1.  Android device (phone or tablet)
	- Memory (Ram): Minimum 2GB
	- Operating System: Suggested Android 8 (Oreo) (minimum Android 6)
	
	`NOTE: You can purchase all of these components together for your convenience (or if there are discounts) on places such as Amazon, Ebay etc... 
	
## Optional Hardware
There are also "optional" pieces of hardware that you can choose to purchase should you choose to, these are not compulsory for participation in the internship but may greatly assist you in developing your skills and contributing to the project. 

1. Ethernet cable - For Direct connection and troublshooting of the Pi
1. Optional: [Real Time Clock (rtc)](https://www.amazon.com/s?k=raspberry+pi+rtc)
1. Optional: [Raspberry Pi 0W](https://www.raspberrypi.org/products/raspberry-pi-zero-w/).
1. Optional: Raspberry pi Camera(s):
	- [Raspberry Pi Camera](https://www.raspberrypi.org/products/camera-module-v2/)
	- [Raspberry Pi Night Vision Camera](https://www.raspberrypi.org/products/pi-noir-camera-v2/)
	- [generic Raspberry Pi 5 Megapixel Camera](https://www.amazon.com/AuviPal-Megapixels-Raspberry-Camera-Module/dp/B07PQ63D2S/)
1. Optional: USB keyboard, mouse, monitor, and HDMI cable.

---

# The Steps

Social coding is a huge part of any open source and collaborative project, and [treehouses](https://github.com/treehouses) is no different. In the following series of steps, you will learn about Markdown, Docker, Bash, Vim, Git, GitHub, GitHub issues, and GitHub pull requests.

Because these steps are simple, we expect high-quality work, which may take a longer time. We want to see that you are capable of using or learning how to use these tools (writing good GitHub issues, creating pull requests, using Markdown and Docker, etc.). These steps may seem easy, but we want you to impress us with good GitHub etiquette and quality Markdown. The bare minimum would be to just passively follow the steps; you should do further reading about the tools/languages we use so you can further your understanding and relieve confusion if you're unclear about how something works. **Treat these steps as learning opportunities!** The GitHub and Markdown skills you practice here are very important for both this internship and a future software development career.

The MDwiki has plenty of resources to help you complete the steps. There is a list of useful links at the end of each step. We also created a [FAQ page](faq.md) where you can find the answers to some commonly asked questions. This page has even more [useful links and video tutorials](faq.md#Helpful_Links) that will help you become familiar with the tools/languages we use. For anything that is not on the FAQ page, Google and Stack Exchange are your friends :)

**We also want you to keep us updated a relatively good amount in the [Gitter chat](https://gitter.im/treehouses/Lobby) as you complete these steps. We will ask you to send us messages, links, and screenshots along the First Steps, and we will use this to track your progress, so please do not forget to do so.**

A very large part of these steps is finding problems with these steps and this MDwiki, so take note of any issues that you run into or suggestions for improvement while doing these steps.

There is no official deadline to complete these steps, but most candidates who are approved for the internship program finished the steps within 7-8 days. Good luck!


## Step 0 - Introductory Steps

1. Complete the [New Virtual Intern Application form](http://apply.treehouses.io). If you have already done this after being invited to join the team then good job, you're all set!

2. Log into your [GitHub account](https://github.com/) then watch [treehouses.github.io repo](https://github.com/treehouses/treehouses.github.io) and Follow [Dogi](https://github.com/dogi), [Ryan](https://github.com/indepthh), [Vassilis](https://github.com/vers4ce), [Roshan](https://github.com/rrijal53), [Sam](https://github.com/Liew211), [Samuel](https://github.com/samuelchen1213) and [Arran](https://github.com/ArranHL) on GitHub. 

In GitHub, we "[Watch](https://help.github.com/en/articles/watching-and-unwatching-repositories)" organization repositories and ["Follow"](https://help.github.com/en/articles/following-people) individuals. Look for the "Watch" button at the top right of the page when you are in a repository.  Also, follow each other to see what others in the group are doing. (Click on the image to enlarge.)   

### Setting up your environment

We interact with the Raspberry Pi via a command terminal which is natively available for both Mac and Linux based systems. If however you are on a Windows device, [Git Bash](https://git-scm.com/download/win) is highly recommended.

### Working with Vi & Vim

One of the most simple but most powerful text editors out there is Vim. If you want to see what Vim can do and how powerful it can be, you can learn more about Vim [here](https://danielmiessler.com/study/vim/#textobjects). Vim is not necessary for this internship but it is truly helpful when working on the Raspberry Pi not to have to download and install other text editors.

_**NOTE:**_ You can skip ahead to Step 3 while you are waiting for your Raspberry Pi to come in the mail.

## Step 1 - Installing and finding your Raspberry Pi 

There are 3 sections in this step:
1. [Starting up your Raspberry Pi](pi-setup.md)
2. [Using treehouses Remote](treehouses-remote.md)
3. [Finding your Pi](find-pi.md)


## Step 2 - Use SSH and Tor to remotely control your Raspberry Pi

The Systems team uses SSH (Secure Shell) to securely and remotely control the Raspberry Pis we work with.  SSH works by providing an admin protocol that allows users to control and modify their remote servers over the Internet.  Follow the [Raspberry Pi SSH  & Tor Tutorial](sshpi.md) to learn how.



## Step 3 - Markdown and Fork Tutorial

Follow the instructions on [GitHub and Markdown](githubandmarkdown.md)

Make sure that you've linked to your github.io and pull request in the [Gitter chat](https://gitter.im/treehouses/Lobby). Also include the `raw.githack` link in your pull request (https://raw.githack.com/YourUserName/YourUserName.github.io/YourBranchName/#!pages/vi/profiles/YourUserName.md).

**NOTE**: The `raw.githack` link is case sensitive to your username. 


* Once you complete Step 3 you will have:
    * 1 Pull request made


## Step 4 - System Tutorial

Vagrant 

Vagrant is an open-source software product for building and maintaining portable virtual software development environments. In this step, you will learn about how to interact with Vagrant through the command-line interface.
Follow the directions in the [Vagrant Tutorial](vagranttutorial.md)

Docker

Docker is a computer program that performs operating-system-level virtualization also known as containerization. In this step, you will learn the basics of interacting with Docker and Docker Compose through the command-line interface and basic commands for maintaining your Planet installation.
Follow the directions in the [Docker Tutorial](dockertutorial.md)


## Step 5 - Keeping Fork Updated

Follow the directions at [Git Repositories](gitrepositories.md) to keep your username.github.io and your local repository up to date.


## Step 6 - GitHub Issues Tutorial

Follow the [GitHub Issues tutorial](github-issues.md) to create at least one issue. Post a link in [Gitter](https://gitter.im/treehouses/Lobby) whenever you create an issue or when you comment on someone else's issue. You are encouraged to post as many issues as you can for improving the page as well as for personal practice. No issue is too big or too small to be filed and it is OK if you are not sure how to fix it yourself. If you know how to solve an issue, be sure to provide a detailed account of your research and show how to fix it. It is ok to file an issue about minor typos and very small changes, but do not make this the case for all of the issues that you file. You can also work on issues that you didn't create.

Make sure you have created at least one issue, resolved it, commented on an issue you didn't create and have a pull request with the fix merged. You may continue making Issues, Pull requests and Comments, or move on to the next step, while you are waiting for your pull request to be merged. The approval process for your Step 6 fix may take time, but it is OK to continue working.

- Once you complete Step 6 you will have:
   * 2 pull requests made (one at step 3 and one at step 6)
   * 1 comment added (on an issue you didn't create)
   * 1 issue created

Please note that creating and working on Issues are not exactly bound by the "Step" you are in. Feel free to move on to other steps, and make more Issues and Pull Requests while you wait on OLE approval for your merge(s). 


## Step 7 - other Services running from a Raspberry Pi

### Nextcloud over Tor

Follow the [Nextcloud and Tor Tutorial](nextcloud-tor.md) to set up the Nextcloud service on your Pi, and access it via Tor.  


## Step 8 - Create Issues and Pull Requests

In this step we will adopt the motto of "Practice makes Perfect". You will follow the same steps as in **Step 6**, continuing to improve this Markdown Wiki so that it is educational, yet easy to understand for future interns.

You should: 
* Add comments to three issues other than your own (somebody else's issue)
* Create three new issues (in addition to those you have already created in previous steps)
	* Get approval to work on the issues you have created **Make sure someone from the System's team confirms that you should work on the issue, BEFORE you start to work on it** 
* Resolve the three issues by making the necessary changes in your repo with three separate pull requests. 

	

Just as your learning with this Wiki was made possible by the efforts of previous interns, now we turn to you to continue that tradition and help future interns take their First Steps. Through this step, you should try to further improve our Markdown Wiki, with better explanations, formatting fixes, and more! You must have made your pull requests and have them each approved by at least two other OLE team members/interns in order for it to be merged to the upstream repository. Just as before, announce your Pull Request on the Gitter chat so other members can review it. You may need to make some additional corrections. Learn by teaching - or editing our teaching tool, in this case!

**NOTE**: When you are fixing an issue, mention the issue number you are fixing in the title of your pull request and make a new branch for every new issue from the master branch.

- Once you complete Step 8, you should have:
   * 5 merged pull requests (one at step 3, one at step 6 and three at step 8)
   * 4 comments made on *issues you didn't create* (one at step 6 and three at step 8)
   * 4 issues created (one at step 6 and three at step 8)

**NOTE**: You can track your progress with the number of pull requests and issues [here](trackprogress.md).

## Step 9 - Be Part of the Team

Next thing is to post a screenshot of your completed progress to the Gitter chat room.
Message us ("@/all" and "@dogi") and ask about adding yourself to the virtual intern list found in [team.md](team.md) and setting up a meeting so you can become a part of the team as soon as possible.

Make sure to read through the [intern orientation document](orientation.md) before the meeting.
