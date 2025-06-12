# First Steps

# The Big Picture

Welcome to the first steps for becoming a Cloud Systems Engineering Virtual Intern at OLE! After completing these steps, you will be working on OLE’s core infrastructure projects such as Treehouses, Planet, and myPlanet. These first steps are a process to prove that you have learned the foundational skills before you can progress to working on harder projects with larger teams. Consider this to be the interview for the internship.

If you are selected for the internship after completing the steps, you will be officially invited to join the OLE interns team! We’ll add you to the Virtual Interns Discord and assign you to a specific team to work on developing and improving OLE’s software.

Once accepted, you and your team will work on an assignment, and we’ll switch up the assignments each week. As part of this internship, you will have the opportunity to work with software and languages including **[Git](https://git-scm.com/)**, **[GitHub](https://github.com/)**, **[Markdown](https://daringfireball.net/projects/markdown/syntax)**, **[Command Line/Terminal Scripts](https://www.codecademy.com/articles/command-line-commands)**, **[Vim](https://www.vim.org/)**, **[Typescript](https://www.typescriptlang.org/)**, **[CouchDB](https://couchdb.apache.org/)**, and **[Docker](https://www.docker.com/).** Furthermore, you will be able to learn and practice your skills in using **[Raspberry Pi Hardware](https://raspberrypi.org)** and **[Google Cloud VM](https://cloud.google.com/products/compute)**.

The goal of OLE is to provide educational infrastructure to learners and educators in remote areas of the globe. The combination of Raspberry Pi and Cloud-based technologies are used in pursuit of this goal to provide a cost-effective means by which devices can access educational resources both online and offline.  We aim to provide a stable system that is widely accessible by numerous devices and operating systems.  This equipment will be deployed in the field with little or no access to the internet, so its reliability is of paramount importance.


**NOTE:** This is an unpaid but intensive internship that requires 20 hours of work each week. More information about the internship can be found in our [FAQ](faq.md#General_Internship_Questions). If you have further questions, don’t hesitate to ask other members in the Discord [chat](https://discord.com/channels/1079980988421132369/1229437557843169280)!

# Pre-Requisites

## Required Prerequisites
The following are the required hardware components that will be needed as part of the Virtual Intern placement. Software solutions such as containers are used by the Treehouses team to ensure that the solutions we develop work across computers and locations. However, as part of the Systems team, you will need some basic hardware of your own to make sure you can run, test and contribute to the software that the team is developing.

### Hardware requirements:

1. Raspberry Pi 4 or 5 ([Pi 5 information](https://www.raspberrypi.com/products/raspberry-pi-5/)) 
  - Any amount of RAM is acceptable (2GB minimum, 4GB+ recommended)
  - Raspberry Pi 3B/3B+ also work, but Pi 4+ is recommended
1. Power supply for the Pi
   - Pi 4: USB-C, 3.0A minimum
   - Pi 3B+: Micro USB, 2.5A minimum
1. 3 microSD cards
  - Minimum 16GB each
  - U1 or Class 10 required
1. MicroSD card reader
  - You will need a USB reader if your computer doesn't have an SD card slot
1. Laptop or computer with minimum 8GB of RAM
  - You will need a Wi-Fi adapter if you are using a desktop without Wi-Fi capabilities.
1. Android device (phone or tablet)
  - Memory (RAM): Minimum 2GB
  - Operating System:
    * Minimum: Android 10 "Q"
    * Recommended: Android 12

  **NOTE:** You can purchase all of these components together for your convenience (or if there are discounts) on places such as Amazon, eBay, etc...

## Optional Hardware
There are also "optional" pieces of hardware that you can choose to purchase should you choose to, these are not compulsory for participation in the internship but may greatly assist you in developing your skills and contributing to the project.

1. Ethernet cable - For Direct connection and troubleshooting of the Pi
1. [Real Time Clock (rtc)](https://www.amazon.com/s?k=raspberry+pi+rtc)
1. [Raspberry Pi 0W](https://www.raspberrypi.org/products/raspberry-pi-zero-w/)
1. Raspberry pi Camera(s):
  - [Raspberry Pi Camera](https://www.raspberrypi.org/products/camera-module-v2/)
  - [Raspberry Pi Night Vision Camera](https://www.raspberrypi.org/products/pi-noir-camera-v2/)
  - [generic Raspberry Pi 5 Megapixel Camera](https://www.amazon.com/AuviPal-Megapixels-Raspberry-Camera-Module/dp/B07PQ63D2S/)
1. USB keyboard, mouse, monitor, and HDMI cable

[Useful link for Rapberry Pi set up](https://www.youtube.com/watch?v=-9V4EpNNR6k)

## Software Requirements

In addition to the hardware listed above, you’ll need to install and configure software tools to support local and cloud-based development. These tools ensure your Pi, local machine, and cloud VM can all interoperate smoothly.

### Required Software

1. **Docker**  
   - Must be installed on your local machine and your Google Cloud VM.  
   - [Install Docker](https://docs.docker.com/get-docker/)

2. **Node.js v14**  
   - Used to run the Planet application locally and on the VM.  
   - Install via [nvm](https://github.com/nvm-sh/nvm) or your platform’s package manager.  
   - Confirm with: `node -v`

3. **Angular CLI v10**  
   - Required for building and running the Planet frontend.  
   - Install with: `npm install -g @angular/cli@10`  
   - Confirm with: `ng version`

4. **Git + GitHub Account**  
   - Used to clone repositories and push your contributions.  
   - [Install Git](https://git-scm.com/downloads)  
   - [Create a GitHub account](https://github.com/join) if you don’t have one.

5. **Google Cloud Platform (GCP) VM**  
   - You’ll be assigned or asked to create a Debian 12 virtual machine on Google Cloud.  
   - This will host a cloud instance of Planet, running Dockerized services like CouchDB and ChatAPI.  
   - Must have SSH access and Docker installed.

6. **Fauxton (CouchDB Admin Interface)**  
   - Automatically included in CouchDB containers.  
   - Accessible at `http://localhost:2200/_utils` for development.

7. **VS Code or other IDE with Git and SSH support**

---

> These tools will allow you to run **Planet** on three networked systems: your local laptop, a Raspberry Pi, and a Google Cloud VM. This mirrors how OLE deployments work in the field and allows you to experiment with syncing data and communities across devices.

---

# The Steps

Social coding is a huge part of any open source and collaborative project, and [treehouses](https://github.com/treehouses) is no different. In the following series of steps, you will learn about Markdown, Docker, Bash, Vim, Git, GitHub, GitHub issues, and GitHub pull requests.

Because these steps are simple, we expect high-quality work, which may take a longer time. We want to see that you are capable of using or learning how to use these tools (writing good GitHub issues, creating pull requests, using Markdown and Docker, etc.). These steps may seem easy, but we want you to impress us with good GitHub etiquette and quality Markdown. The bare minimum would be to just passively follow the steps; you should do further reading about the tools/languages we use so you can further your understanding and relieve confusion if you're unclear about how something works. **Treat these steps as learning opportunities!** The GitHub and Markdown skills you practice here are very important for both this internship and a future software development career.

The MDwiki has plenty of resources to help you complete the steps. There is a list of useful links at the end of each step. We also created a [FAQ page](faq.md) where you can find the answers to some commonly asked questions. This page has even more [useful links and video tutorials](faq.md#Helpful_Links) that will help you become familiar with the tools/languages we use. For anything that is not on the FAQ page, Google and Stack Exchange are your friends :)

**We also want you to keep us updated regularly in the [Discord chat](https://discord.com/channels/1079980988421132369/1229437557843169280) as you complete these steps. We will ask you to send us messages, links, and screenshots along the First Steps, and we will use this to track your progress, so please do not forget to do so.**

A very large part of these steps is finding problems with these steps and this MDwiki, so take note of any issues that you run into or suggestions for improvement while doing these steps.

There is no official deadline to complete these steps, but most candidates who are approved for the internship program finished the steps within 7-8 days. Good luck!


## Step 0 - Introductory Steps

1. Complete the [New Virtual Intern Application form](http://apply.treehouses.io). If you have already done this after being invited to join the team then good job, you're all set!

2. Log into your [GitHub account](https://github.com/) then watch [treehouses.github.io repo](https://github.com/treehouses/treehouses.github.io) and Follow [Dogi](https://github.com/dogi) and [Jesse](https://github.com/jessewashburn) on GitHub.

In GitHub, we "[Watch](https://help.github.com/en/articles/watching-and-unwatching-repositories)" organization repositories and ["Follow"](https://help.github.com/en/articles/following-people) individuals. Look for the "Watch" button at the top right of the page when you are in a repository.  Also, follow each other to see what others in the group are doing. (Click on the image to enlarge.)   

### Setting up your environment

We interact with the Raspberry Pi via a command terminal, which is natively available for both Mac and Linux based systems. However, if you are on a Windows device, [Git Bash](https://git-scm.com/download/win) is highly recommended.

### Working with Vi & Vim (Optional)

Vim is a lightweight and powerful terminal-based text editor. It's especially useful when working directly on the Raspberry Pi or virtual machines where graphical interfaces may not be available.

- Learn more about Vim [here](https://danielmiessler.com/study/vim/#textobjects)
- Practice using Vim in your terminal by typing `vimtutor`

While Vim is optional, learning it can make you more efficient in low-resource environments.

### Recommended Alternative: Visual Studio Code (VS Code)

For local development, debugging, and remote access to your Pi or Google VM, [Visual Studio Code](https://code.visualstudio.com/) is a highly recommended editor. With extensions like:

- **Remote - SSH** (for editing files on your Pi or VM)
- **Prettier** (for formatting code)
- **GitHub** (for pushing/pulling code)

VS Code offers a user-friendly and powerful coding environment.

> If you're more comfortable in a GUI editor, go with VS Code. If you're curious about terminal power tools, give Vim a shot.

**NOTE:** You can skip ahead to Step 3 while you are waiting for your Raspberry Pi to come in the mail.

## Step 1 - Setting up your Google Cloud VM

This step will walk you through creating a virtual machine (VM) on Google Cloud Platform (GCP), configuring it securely, and preparing it for Planet development.

---

### 1. Enable Required APIs

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. In the top search bar, search for **Compute Engine API**
3. Click into it, and click **Enable**
4. Wait for it to activate (this may take a few moments)

---

### 2. Add Your SSH Public Key

1. Search for **"Metadata"**
2. Click **"Metadata"** under **Compute Engine**
3. Navigate to the **"SSH KEYS"** tab
4. Click **"Edit"**, then **"Add Item"**
5. Paste your full public SSH key, formatted like:

   ```
   ssh-ed25519 AAAAC3... yourusername
   ```

   > You must append a space and your **username** at the end of the key to satisfy Google Cloud’s required format.

6. Share your key with the team via Discord
---

### 3. Create the VM Instance

1. In the console, go to **Compute Engine > VM Instances**
2. Click **"Create Instance"**
3. Use the following settings:

   - **Name**: `ole-vm`
   - **Region**: Select one near you (e.g., `us-east1`)
   - **Machine Type**: `e2-medium` (2 vCPU, 4 GB RAM)
   - **Boot Disk**:
     - Image: `Debian 12 (Bookworm)`
   - **Firewall**:
     - ✅ Check **Allow HTTP**
     - ✅ Check **Allow HTTPS**

4. Leave all other settings as defaults
5. Click **"Create"**

> The VM will typically cost $25–$35/month depending on location and usage.

---

### 4. Create Firewall Rule

1. In the console, search for **"Firewall"** and go to **VPC Network > Firewall**
2. Click **"CREATE FIREWALL RULE"**
3. Set the following:

   - **Name**: `planetdev-rules`
   - **Targets**: All instances in the network
   - **Source IPv4 Ranges**: `0.0.0.0/0`
   - **Protocols and ports**:
     - ✅ Check TCP
     - Ports: `2200,3000,5000`

4. Click **"Create"**

---

### 5. SSH Into the VM

You can SSH into your VM in **three different ways**:

#### Option A: Google Cloud Console

- Go to **Compute Engine**
- Click the **SSH** button next to your VM

#### Option B: Local Terminal (with SSH key)

```bash
ssh -i ~/.ssh/id_ed25519 yourusername@<EXTERNAL_IP>
```

#### Option C: VS Code with Remote SSH

1. Install **Remote - SSH** extension in VS Code
2. In the Command Palette:  
   `Remote-SSH: Connect to Host...`
3. Enter your VM's external IP and SSH key when prompted

---

### 6. Install Required Tools on Your VM

Connect to the VM and run:

```bash
sudo apt-get update && sudo apt-get install git unzip
```

Then follow Docker’s Debian installation guide here:  
https://docs.docker.com/engine/install/debian/#install-using-the-repository

> You can also reference:  
> https://open-learning-exchange.github.io/#!pages/vi/vi-docker-development-tutorial.md

---

### ✅ 7. Node.js and Angular Setup

> ⚠️ Important: **Do not install Node.js as root.** Use your regular user account.

Install Node.js v14 and Angular CLI v10:

```bash
curl -fsSL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
npm install -g @angular/cli@10
```

Then follow the official tutorial to install and configure the Planet development environment:

[Planet Docker Development Tutorial](https://open-learning-exchange.github.io/#!pages/vi/vi-docker-development-tutorial.md)

This includes:

- Downloading the Planet dev Docker config
- Running CouchDB and ChatAPI services
- Setting up CouchDB with CORS
- Cloning and configuring the `planet` repo

Make sure to complete that guide before moving to the next step.

---

### 8. Running Planet in the Background

Start a `screen` session to keep the frontend running after you disconnect:

```bash
screen
ng serve
```

Once the frontend is running, press `Ctrl + A`, then `D` to detach.

---

### 9. Planet Configuration

- When configuring your Planet instance in the browser, choose **Nation** (not Community)
- Avoid common passwords like `12345`, `admin`, etc.

---

### ✅ 10. Share Access

- Send your VM **external IP address** and CouchDB **username/password** to your team
- Your VM is now part of the development network!


---

## Step 2 - Installing and Finding Your Raspberry Pi
**NOTE:** You can skip ahead to Step 4 while you are waiting for your Raspberry Pi to come in the mail.

There are 3 sections in this step:
1. [Setting up your Raspberry Pi](pi-setup.md)
2. [Using treehouses Remote](treehouses-remote.md)
3. [Finding your Pi](find-pi.md)


## Step 3 - Use SSH and Tor to Remotely Control Your Raspberry Pi

The Systems team uses SSH (Secure Shell) to securely and remotely control the Raspberry Pis we work with.  SSH works by providing an admin protocol that allows users to control and modify their remote servers over the Internet.  Follow the [Raspberry Pi SSH  & Tor Tutorial](sshpi.md) to learn how.


## Step 4 - System Tutorial

### Docker

Docker is a computer program that performs operating-system-level virtualization also known as containerization. In this step, you will learn the basics of interacting with Docker and Docker Compose through the command-line interface and basic commands for maintaining your Planet installation.
Follow the directions in the [Docker Tutorial](dockertutorial.md)


## Step 5 - Other Services Running from a Raspberry Pi

### Nextcloud over Tor

Follow the [Nextcloud and Tor Tutorial](nextcloud-tor.md) to set up the Nextcloud service on your Pi, and access it via Tor.  


## Step 6 - Markdown and Fork Tutorial

Follow the instructions on [GitHub and Markdown](githubandmarkdown.md)

Make sure that you've linked to your github.io and pull request in the [Discord [chat](https://discord.com/channels/1079980988421132369/1229437557843169280)]. Also, include the `raw.githack` link in your pull request `https://raw.githack.com/YourUserName/YourUserName.github.io/YourBranchName/#!pages/vi/profiles/YourUserName.md`

**NOTE**: The `raw.githack` link is case sensitive to your username.

> Once you complete Step 3 you will have:

* 1 Pull request made

Check your progress [here](trackprogress.md)


## Step 7 - GitHub Issues Tutorial

Follow the directions at [Git Repositories](gitrepositories.md) to keep your username.github.io and your local repository up to date.

Follow the [GitHub Issues tutorial](github-issues.md) to create at least one issue. Post a link in [Gitter](https://gitter.im/treehouses/Lobby) whenever you create an issue or when you comment on someone else's issue. You are encouraged to post as many issues as you can for improving the page as well as for personal practice. No issue is too big or too small to be filed and it is OK if you are not sure how to fix it yourself. If you know how to solve an issue, be sure to provide a detailed account of your research and show how to fix it. It is ok to file an issue about minor typos and very small changes, but do not make this the case for all of the issues that you file. You can also work on issues that you didn't create.

Make sure you have created at least one issue, resolved it, commented on an issue you didn't create and have a pull request with the fix merged. You may continue making Issues, Pull requests and Comments, or move on to the next step, while you are waiting for your pull request to be merged. The approval process for your Step 6 fix may take time, but it is OK to continue working.

**NOTE**: When posting a link in the Gitter, it may be helpful to tag the newest interns since they are likely the most active.

> Once you complete Step 6 you will have:

* 2 pull requests made (one at step 3 and one at step 6)
* 1 comment added (on an issue you didn't create)
* 1 issue created

Check your progress [here](trackprogress.md)

Please note that creating and working on Issues are not exactly bound by the "Step" you are in. Feel free to move on to other steps, and make more Issues and Pull Requests while you wait on OLE approval for your merge(s).


## Step 8 - Create Issues and Pull Requests

In this step, we will adopt the motto of "Practice makes Perfect". You will follow the same steps as in **Step 6**, continuing to improve this Markdown Wiki so that it is educational, yet easy to understand for future interns.

You should:

* Add comments to three issues other than your own (somebody else's issue)
* Create three new issues (in addition to those you have already created in previous steps)
  * Get approval to work on the issues you have created. **Make sure someone from the System's team confirms that you should work on the issue BEFORE you start to work on it.**
* Resolve the three issues by making the necessary changes in your repo with three separate pull requests.

Just as your learning with this Wiki was made possible by the efforts of previous interns, now we turn to you to continue that tradition and help future interns take their First Steps. Through this step, you should try to further improve our Markdown Wiki, with better explanations, formatting fixes, and more! You must have made your pull requests and have them each approved by at least two other OLE team members/interns in order for it to be merged to the upstream repository. Just as before, announce your Pull Request on the Gitter chat so other members can review it. You may need to make some additional corrections. Learn by teaching - or editing our teaching tool, in this case!

**NOTE**: When you are fixing an issue, mention the issue number you are fixing in the title of your pull request and make a new branch for every new issue from the master branch.

> Once you complete Step 8, you should have:

* 5 merged pull requests (one at step 3, one at step 6 and three at step 8)
* 4 comments made on *issues you didn't create* (one at step 6 and three at step 8)
* 4 issues created (one at step 6 and three at step 8)

**NOTE**: You can track your progress with the number of pull requests and issues [here](trackprogress.md).

## Step 9 - Be Part of the Team

Next thing is to post a screenshot of your completed progress to the Gitter chat room. Click [here](trackprogress.md) to find your completed progress.
Message us ("@/all" and "@dogi") and ask about adding yourself to the virtual intern list found in [team.md](team.md) and setting up a meeting so you can become a part of the team as soon as possible.

Make sure to read through the [intern orientation document](orientation.md) before the meeting.
