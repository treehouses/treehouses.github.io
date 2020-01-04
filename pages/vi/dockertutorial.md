# Docker Tutorial

## Objectives
- Learn about Docker and Docker Compose

## Introduction

**[Docker](https://www.docker.com/what-docker)** is a computer program that performs operating-system-level virtualization also known as containerization.  In this section, you will learn the basics of interacting with Docker and Docker Compose through the command-line interface by **ssh-ing into your Raspberry Pi**.

The Systems team uses Docker to ensure that the tools developed by the remote team on a wide range of devices and operating systems work the same way, so a program will not perform differently on different computers.

The Docker CLI is used when managing individual containers on a docker engine. It uses the client command line to access the Docker daemon api.

We suggest you to look at [Docker CLI's reference](https://docs.docker.com/engine/reference/commandline/cli/) and [docker-compose CLI's reference](https://docs.docker.com/compose/reference/overview/) to find out more about their commands and usage.

You could also use `docker --help` and `docker-compose --help` to see brief usage instruction of other commands that you might need. It's also very helpful to run `docker COMMAND --help` or `docker-compose COMMAND --help` for information on a specific command.

The docker-compose cli can be used to manage a multi-container application. It also moves many of the options you would enter on the docker run cli into the docker-compose.yml file for easier reuse. 
It works as a front end "script" on top of the same docker api used by docker, so you can do everything docker-compose does with docker commands and a lot of shell scripting.

| `docker` manages single containers 
|--|
| **`docker-compose` manages multiple container applications**



## Docker Installation

**Docker and Docker Compose are installed on your Raspberry Pi by default, and the subsequent exercises can be performed without any installations.**  The below guide includes steps to install Docker and Docker Compose directly on to your computer, in case of further development, but is entirely optional. 


### Windows
#### 10 Pro

Please follow the official guide here: [Install Docker Desktop on Windows](https://docs.docker.com/docker-for-windows/install/).

#### 7/8/10

Please follow this official guide: [Install Docker Toolbox on Windows](https://docs.docker.com/toolbox/toolbox_install_windows/).

**NOTE**: If you already have a previous version of VirtualBox installed, do not reinstall it with **Docker Toolbox**. When prompted, uncheck it. Otherwise, it might downgrade your virtual box or you might run into some errors during installation. Make sure that your virtual box is up to date after installation.


### macOS

Please follow the official [Install Docker for Mac](https://docs.docker.com/docker-for-mac/install/) guide or the brief rundown below:


### Linux

No matter your distribution of choice, you’ll need a 64-bit installation and a kernel at 3.10 or newer. 
Please find your distro at https://docs.docker.com/install/#server and follow the guide to install Docker CE.


Check your current Linux version with `hostnamectl` . Something like this will be in the terminal output:

```  
    Static hostname: <your_host_name_here>
    Icon name: computer-laptop
    Chassis: laptop
    Machine ID: <your_machine_id_here>
    Boot ID: <your_boot_id_here>
    Operating System: Ubuntu 18.04.3 LTS 
    Kernel: Linux 4.15.0-70-generic
    Architecture: x86-64
```  

You can also use `cat /etc/os-release` or `lsb_release -a`.  
Any of these three commands will tell you the information you need.

You may need to use `uname -r`.  If using a windows based linux system.  You should see something like this `4.19.4-microsoft-standard`.


#### For:
- Disco 19.04
- Cosmic 18.10
- Bionic 18.04 (LTS)
- Xenial 16.04 (LTS)

Please use [this](https://docs.docker.com/install/linux/docker-ce/ubuntu/) set of instructions 

### Install Docker Compose

Follow the official [Install Docker Compose](https://docs.docker.com/compose/install/#install-compose) guide or the brief rundown below:

- Note the latest release version number at https://github.com/docker/compose/releases/latest. e.g. `1.21.2`. You will need to replace `<latest-release-version-number>` with this in next command.
- Run this command to download the latest version of Docker Compose:
  ```
  curl -L https://github.com/docker/compose/releases/download/<latest-release-version-number>/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
  ```
- Apply executable permissions to the binary: `sudo chmod +x /usr/local/bin/docker-compose`
- Test the installation: `docker-compose --version`

---


## Docker Commands

Please read about [Docker concepts](https://docs.docker.com/get-started/#docker-concepts) and [Docker overview](https://docs.docker.com/engine/docker-overview/) to get a sense of what Docker is.

A few common Docker CLI commands you might need for working with `treehouses` are:

- `docker ps` – show running containers
- `docker ps -a` - show all containers
- `docker logs <container-id> -f` - follow the log output of a container
- `docker images` – list images

## Docker Compose

Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s [services](https://docs.docker.com/get-started/part3/#about-services). Then, with a single command, you create and start all the services from your configuration. You can read more about Docker Compose at [Overview of Docker Compose](https://docs.docker.com/compose/overview/).

**NOTE**: At the end of this step, when you have completed all the sections and executed the `docker-compose --version` command go to the Gitter [chat](https://gitter.im/treehouses/Lobby) and post which version of docker you are running.
" @/all I'm on step 4 - Docker Tutorial, I am running `docker version` and `docker compose version` "

---
#### Return to [First Steps](firststeps.md#Step_4_-_System_Tutorial)