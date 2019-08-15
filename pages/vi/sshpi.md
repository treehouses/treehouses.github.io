# SSH Tutorial

## Objectives

* Set up your SSH key
* Log into your Pi with Root
* Set up Tor


### Create your SSH key
Follow these steps to create your SSH key:
- [Generate a new SSH key and add it to the ssh-agent](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)  
- [Add the SSH key to your GitHub account](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)


### Log in with the Pi user

Once you start up your Raspberry Pi and find its **local IP address**, you can connect to it from your computer using your Terminal. Windows users should use Git Bash.  

Run the following:  
`ssh pi@[local IP address]`

When you connect through SSH for the first time, you will be prompted to accept the RSA key fingerprint, type “yes” to continue.  The Pi user's default password is "raspberry".


### Add ssh key to the Raspberry Pi

To add your SSH key to your Raspberry Pi, run: `treehouses sshkey add "your SSH key"` (copy-paste your SSH key in between the quotes).

### Log in by Root

To log into root, you can run `sudo -s` while logged into the Pi user, or SSH directly into it by running `ssh root@[local IP address]` instead of `ssh pi@[local IP address]`.

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

To activate Tor, SSH into your Raspberry Pi with `root`, and run `treehouses tor start` and `treehouses tor notice on`.
