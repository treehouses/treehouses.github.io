# Nextcloud with Tor Tutorial

## Objectives

* Practice using ssh and Treehouses Remote  
* Practice running Docker container
* Learn how to use Tor to remotely access your Raspberry Pi  

## Introduction

[Nextcloud](https://nextcloud.com/) is a customizable file-storage service similar to Dropbox, or Google Drive, but hosted privately from your own Raspberry Pi.  It has add-on features such as text editors, messaging services, video players, and much more. You will start up [Nextcloud container](https://hub.docker.com/_/nextcloud/) with docker. By using [Tor](https://torproject.org) to open up the port occupied by Nextcloud, you will be able to access it without needing to be on the same Wifi network.

## Prepare Treehouses image

Download the latest treehouses image from http://download.treehouses.io, then use [balenaEtcher](https://etcher.io) to flash the image onto your SD card.

`Warning: Use a new SD Card for these steps; otherwise you will encounter errors.`

In your file explorer, navigate to the `boot` drive, and open the `autorunonce` file in a text editor of your choice.  Delete everything, and paste this in:
	
```bash
#!/bin/bash

treehouses rename 'username'
treehouses expandfs
treehouses button bluetooth


treehouses bridge 'wifiname' 'treehouses' 'wifipassword'

reboot
```
Replace `username` with your Github username,and replace `wifiname` and `wifipassword` with your wifi name and password that you are connecting.Save the file, and safely eject the SD card.

**NOTE**: You must modify the `autorunonce` file _before_ using the SD card with the Raspberry Pi. Failure to do this step correctly will cause "Planet Learning" - another OLE service - to load when starting Tor. Don’t hesitate to ask other members in the [Gitter chat](https://gitter.im/treehouses/Lobby) if you are not able to load Nextcloud _after attempting this step again_.  


## Install Tor 

### macOS

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

### Windows & Linux

Install [Tor](https://www.torproject.org/download/)

## Start up Nextcloud

Plug the microSD into your Raspberry Pi, and power it on.  The red LED should turn on, indicating that the Raspberry Pi is connected to power.  Once the green LED next to it on your Raspberry Pi stabilizes into a solid green, you should see "treehouses" appear in available Wifi networks.  Connect to it, and make sure that you have an internet connection by opening up another web page.  

Find the Raspberry Pi's IP address in your network settings (it will probably be `192.168.2.1`).  Open up your terminal or command prompt, and run `ssh root@[IP address]` to enter the root of your Pi.  Run 
```
docker run -d -p 8080:80 --name nextcloud --restart=unless-stopped nextcloud
```
to pull the [Docker image for Nextcloud](https://hub.docker.com/_/nextcloud/), and start up the container - this will take a few minutes.  To check if the container is running, run `docker ps`:
```bash
root@treehouses:~# docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                  NAMES
b9484a8d681e        nextcloud           "/entrypoint.sh apac…"   12 minutes ago      Up 12 minutes       0.0.0.0:8080->80/tcp   nextcloud
```
Now that the container has been created, you can stop and start it with `docker stop nextcloud` and `docker start nextcloud`.  To view all running and stopped containers, run `docker ps -a`.

**NOTE**: If you encounter an SSH error when attempting to log into your Raspberry Pi, see [FAQ #Q11](faq.md#Q11:_What_if_you_encounter_Host_key_verification_fail%3F) for potential solutions.

## Start up Tor

As we have run Nextcloud on port 8080, that's the port that we will have to open up with Tor.  While still in the root of treehouses, run `treehouses tor add 80 8080`, `treehouses tor notice on`, then `treehouses tor` to find the tor address.  You should see something like this:
```bash
root@treehouses:~# treehouses tor add 80 8080
Success: the port has been added
root@treehouses:~# treehouses tor notice on
OK.
root@treehouses:~# treehouses tor
b3pesvpay2ouaxl556jwbknf32qlurspdregg672lgm5wjk5gejuonid.onion
```
To see the full list of `treehouses tor` commands, run `treehouses help tor`.  

In the Tor browser on your computer, navigate to the .onion address.  For instance, I would navigate to `b3pesvpay2ouaxl556jwbknf32qlurspdregg672lgm5wjk5gejuonid.onion` in my Tor browser.  If the Nextcloud container is up and running, you should see the Nextcloud set up page:  

![](images/nextcloud-login.png)

Once you reach this page, send a screenshot of the window (including the URL) in the Gitter chat.

## Wrap up    

![](images/nextcloud-dashboard.png)

After you have created an admin account and logged in, you can play around with the settings, add users, install apps to augment your Nextcloud experience, and more.  As long as your Raspberry Pi is connected to internet, and the Docker container is running, you will be able to access Nextcloud through the same Tor address (if you forget it, you can always ssh into your Pi and run `treehouses tor`).

---
#### Return to [First Steps](firststeps.md#Step_7_-_other_Services_running_from_a_Raspberry_Pi)
