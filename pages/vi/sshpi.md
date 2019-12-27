# SSH Tutorial

## Objectives

* Set up your SSH key
* Log into your Pi with Root
* Set up Tor


### Create your SSH key
Follow these steps to create your SSH key:
- [Generate a new SSH key and add it to the ssh-agent](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)  
- [Add the SSH key to your GitHub account](https://help.github.com/en/articles/adding-a-new-ssh-key-to-your-github-account)

**NOTE**: With `cat ~/.ssh/id_rsa*` you can check your SSH key pair. Both parts (private and public) of your recently created SSH key should show up. Please be sure that your (private) key is protected by a passphrase and has been created on your computer; **not** on the Raspberry Pi.

A trick to whether github is configured correctly is to navigate to `https://github.com/<yourgithubusername>.keys` in a browser - your public SSH key should show up there.

### Log in with the Pi user

Once you start up your Raspberry Pi and find its **local IP address**, you can connect to it from your computer using your Terminal. Windows users should use Git Bash.  

Run the following:  
`ssh pi@[local IP address]`

When you connect through SSH for the first time, you will be prompted to accept the RSA key fingerprint, type “yes” to continue.  The Pi user's default password is "raspberry".  You should see something like this:
```bash
$ ssh pi@192.168.0.101
The authenticity of host '192.168.0.101 (192.168.0.101)' can't be established.
ECDSA key fingerprint is SHA256:BzmwLK14V/EVa0m/0/SYFtGM/60zm7mFe5vVCWAxqe4.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added '192.168.0.101' (ECDSA) to the list of known hosts.
Enter passphrase for key '/Users/username/.ssh/id_rsa':
Linux treehouses 4.19.58-v7+ #1245 SMP Fri Jul 12 17:25:51 BST 2019 armv7l

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Thu Aug 15 03:24:59 2019 from 192.168.0.100

SSH is enabled and the default password for the 'pi' user has not been changed.
This is a security risk - please login as the 'pi' user and type 'passwd' to set a new password.

pi@treehouses:~ $
```
**NOTE**: Every time you use a new image on your RPI, the `known_hosts` file must be updated for ssh to connect without an error. Instructions can be found on the [FAQ](https://treehouses.io/#!pages/vi/faq.md) page.

### Add ssh key to the Raspberry Pi

To add your SSH key to your Raspberry Pi you first need to copy your public key. Since you did copy this same key to already github you can see it by navigating with your browser to `https://github.com/<yourgithubusername>.keys` or by running linux/macosx from command line you can run `wget -O- -q https://github.com/<yourgithubusername>.keys`.

Now you can add the public key to run: `sudo treehouses sshkey add "your SSH key"` (copy-paste your SSH key in between the quotes) or just `sudo treehouses sshkey addgithubuser <yourgithubusername>`.

In the future on ssh login it will ask you for your sshkey passphrase where as before used the default password for pi user "raspberry".

### Log in by Root

To log into root, you can run `sudo -s` while logged into the Pi user, or with the keys over SSH directly into it by running `ssh root@[local IP address]` instead of `ssh pi@[local IP address]`.

### Rename Pi by Github Name

To rename your Raspberry Pi, run `treehouses rename "username"` and replace `username` with your Github username.

## Tor
Tor is a computer network run by volunteers worldwide. Each volunteer runs what is called a relay, which is just a computer that runs software allowing users to connect to the Internet via the Tor network.

Before hitting the open Internet, the Tor Browser will connect to several different relays, wiping its tracks each step of the way, making it difficult to figure out where, and who, you really are.

First start by watching this [video](https://www.youtube.com/watch?v=6czcc1gZ7Ak) on the Tor browser
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

To activate Tor, SSH into your Raspberry Pi with `root`, and run `treehouses tor add 22`, `treehouses tor add 80`, and `treehouses tor notice on`.  To view the Tor address of your Pi, run `treehouses tor`, then copy-paste this address into your Tor Browser, to make sure it works; you should see a configuration page for Planet Learning, one of our other services.

---
#### At the end of this section, post the code of your successful SSH terminal to the [Gitter chat](https://gitter.im/treehouses/Lobby)

It may look like this:
```
ssh root@192.168.0.101
The authenticity of host '192.168.0.101 (192.168.0.101)' can't be established.                                                                                                                                                    
ECDSA key fingerprint is SHA256:OQcmJteKgWOmNiK6OlrZ3CxC5+T/KMKowQ5qNHn9NOI.                                                                                                                                                      
Are you sure you want to continue connecting (yes/no)? yes                                                                                                                                                                        
Warning: Permanently added '192.168.0.101' (ECDSA) to the list of known hosts.                                                                                                                                                    

The programs included with the Debian GNU/Linux system are free software;                                                                                                                                                         
the exact distribution terms for each program are described in the                                                                                                                                                                
individual files in /usr/share/doc/*/copyright.                                                                                                                                                                                   

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
Last login: Thu Aug 22 23:20:37 2019 from unknown.comcast.net
root@treehouses:~#
```

---

You can find instructions on Code and Syntax Highlighting [here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet#code-and-syntax-highlighting)

---
#### Return to [First Steps](firststeps.md#Step_2_-_Use_SSH_and_Tor_to_remotely_control_your_Raspberry_Pi)
