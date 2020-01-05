# Vagrant Tutorial

## Objectives

- Learn about Vagrant
- Learn about Vagrant commands

## Introduction

**[Vagrant](https://www.vagrantup.com/) is an open-source software product for building and maintaining portable virtual software development environments.** Below, you will find some basic instructions on interacting with Vagrant through the command-line interface (CLI). You should be familiar with this since you will need to use it to control virtual machines during your internship.

## Preparation

#### Windows – Pick your command-line program

There are three command-line programs you could use to interact with Vagrant CLI:

1. **Git Bash**: This is our recommended command line program. **Git Bash** is already installed along with planet installation script. After you open **Git Bash**, you will find its default directory at `C:\Users\YOUR_USERNAME`.

2. **Command Prompt**: There are two Command Prompt options on Windows: **Command Prompt** and **Command Prompt(Admin)**. You could use either of them to access directories and interact with Vagrant CLI. The only difference is their default directory: **Command Prompt(Admin)** has `C:\Windows\system32` as default directory and **Command Prompt** has `C:\Users\YOUR_USERNAME` as the default directory.

3. **Windows PowerShell**: Windows PowerShell is a default shell interface installed on your machine, its default directory is `C:\Users\YOUR_USERNAME`.

**NOTE**: PowerShell and Command Prompt users will have to substitute forward slashes “/” with backslashes “\” throughout these introductory steps as it pertains to file paths.  
Example: If you see an instruction saying `cd desktop/treehouses/cli` instead use `cd desktop\treehouses\cli`.

#### macOS or Ubuntu - Terminal

Normally we use Terminal to interact with Vagrant CLI.

## Stay in the Right Directory

A lot of Vagrant commands require us to specify a target machine. We can also run those commands from a directory with the target machine’s Vagrant File. Otherwise, you may encounter an error like "A Vagrant environment or target machine is required." Please go to the directory that contains our Vagrant file:

- Windows users should: `cd C:\Users\YOUR_USERNAME\Desktop\treehouses\cli`.
- macOS or Linux users should: `cd` into the location where they ran `git clone` to copy the `cli` repository.

## Global Status

[`vagrant global-status`](https://www.vagrantup.com/docs/cli/global-status.html) will tell us the state of all active Vagrant environments on the system for the currently logged in user. You will see something similar to this:

```
id       name   provider   state   directory
---------------------------------------------------------------------------
0e6abb1  cli    virtualbox running  /Users/pattanawadee/cli 

The above shows information about all known Vagrant environments
on this machine. This data is cached and may not be completely
up-to-date (use "vagrant global-status --prune" to prune invalid
entries). To interact with any of the machines, you can go to that
directory and run Vagrant, or you can use the ID directly with
Vagrant commands from any directory. For example:
"vagrant destroy 1a2b3c4d"
```

The above output tells us:

- We have a Vagrant virtual machine called `cli` running in VirtualBox.
- The directory of the virtual machine's Vagrantfile is located at `/Users/pattanawadee/cli `.

## Vagrant Commands

- [`vagrant up`](https://www.vagrantup.com/docs/cli/up.html) will turn the virtual machine back on if it's currently "poweroff".
- [`vagrant suspend`](https://www.vagrantup.com/docs/cli/suspend.html) will suspend the "running" virtual machine, its state will become "saved".
- [`vagrant halt`](https://www.vagrantup.com/docs/cli/halt.html) will shut down the "running" virtual machine, its state will become "poweroff".
- [`vagrant destroy`](https://www.vagrantup.com/docs/cli/destroy.html) will delete the virtual machine entirely. To use the cli virtual machine again, we will have to rebuild a new machine from scratch using `vagrant up`.

To conserve hardware resources of your computer, you could use `vagrant halt` to shutdown the virtual machine that's running. Use `vagrant up` to turn the virtual machine back on when you need to access your cli again.

## More about Vagrant CLI

We suggest you to look at [Vagrant CLI's documentation](https://www.vagrantup.com/docs/cli/) to find out more about its commands and usage.

You could also use `vagrant --help` to see brief usage instruction of other commands that you might need.

```
Usage: vagrant [options] <command> [<args>]

    -v, --version                    Print the version and exit.
    -h, --help                       Print this help.

Common commands:
     box             manages boxes: installation, removal, etc.
     connect         connect to a remotely shared Vagrant environment
     destroy         stops and deletes all traces of the vagrant machine
     global-status   outputs status Vagrant environments for this user
     halt            stops the vagrant machine
     help            shows the help for a subcommand
     init            initializes a new Vagrant environment by creating a Vagrantfile
     login           log in to HashiCorp's Vagrant Cloud
     package         packages a running vagrant environment into a box
     plugin          manages plugins: install, uninstall, update, etc.
     port            displays information about guest port mappings
     powershell      connects to machine via powershell remoting
     provision       provisions the vagrant machine
     push            deploys code in this environment to a configured destination
     rdp             connects to machine via RDP
     reload          restarts vagrant machine, loads new Vagrantfile configuration
     resume          resume a suspended vagrant machine
     share           share your Vagrant environment with anyone in the world
     snapshot        manages snapshots: saving, restoring, etc.
     ssh             connects to machine via SSH
     ssh-config      outputs OpenSSH valid configuration to connect to the machine
     status          outputs status of the vagrant machine
     suspend         suspends the machine
     up              starts and provisions the vagrant environment
     validate        validates the Vagrantfile
     version         prints current and latest Vagrant version

For help on any individual command run `vagrant COMMAND -h`

Additional subcommands are available, but are either more advanced
or not commonly used. To see all subcommands, run the command
`vagrant list-commands`.
```

## Useful Links

[Why install Vagrant?](https://www.vagrantup.com/intro/index.html) - Explanation of some basic concepts about why Vagrant is useful for developers, operators and designers.
[Vagrant download](https://www.vagrantup.com/downloads.html)
[Wikipedia page on Vagrant](https://en.wikipedia.org/wiki/Vagrant_%28software%29)
[Other helpful links and videos](vi-faq.md#Helpful_Links)

---
#### Return to [First Steps](firststeps.md#Step_4_-_System_Tutorial)