# Docker Tutorial

## Objectives
- Install Docker
- Learn about Docker and Docker Compose

## Introduction

**[Docker](https://www.docker.com/what-docker)** is a computer program that performs operating-system-level virtualization also known as containerization. 
In this section, you will learn the basics of interacting with Docker and Docker Compose through the command-line interface.

The Systems team uses Docker to ensure that the tools develloped by the remote team on a wide range of devices and operating systems work the same way, so a program will not perform diffrently on computer A than computer B.

The docker cli is used when managing individual containers on a docker engine. It is the client command line to access the docker daemon api.

We install and run Docker and Docker Compose from the Vagrant virtual machine because it is quicker to get everyone up and running and easier to troubleshoot as issues come up. Docker can also be installed directly on your machine. If you are curious about how to install Docker you can [read our guide](vi-docker-installation.md). We do **not recommend** running Planet this way because we may **not be able to help** if there are issues.

We suggest you to look at [Docker CLI's reference](https://docs.docker.com/engine/reference/commandline/cli/) and [docker-compose CLI's reference](https://docs.docker.com/compose/reference/overview/) to find out more about their commands and usage.

You could also use `docker --help` and `docker-compose --help` to see brief usage instruction of other commands that you might need. It's also very helpful to run `docker COMMAND --help` or `docker-compose COMMAND --help` for information on a specific command.

 
 
The docker-compose cli can be used to manage a multi-container application. It also moves many of the options you would enter on the docker run cli into the docker-compose.yml file for easier reuse. 
It works as a front end "script" on top of the same docker api used by docker, so you can do everything docker-compose does with docker commands and a lot of shell scripting.

| `docker` manages single containers 
|--|
| **`docker-compose` manages multiple container applications**



# Docker Installation

The below guide includes steps to install Docker directly on to your machine. 


### Windows

- Please follow the official guide [Install Docker Toolbox on Windows](https://docs.docker.com/toolbox/toolbox_install_windows/).

**NOTE**: If you already have a previous version of VirtualBox installed, do not reinstall it with **Docker Toolbox**. When prompted, uncheck it. Otherwise, it might downgrade your virtual box or you might run into some errors during installation. Make sure that your virtual box is up to date after installation.


### macOS

Please follow the official [Install Docker for Mac](https://docs.docker.com/docker-for-mac/install/) guide or the brief rundown below:


### Linux

No matter your distribution of choice, you’ll need a 64-bit installation and a kernel at 3.10 or newer. 
Please find your distro at https://docs.docker.com/install/#server and follow the guide to install Docker CE.


Check your current Linux version with `uname -r` . You should see something like `3.10.[alphanumeric string].x86_64` or `4.19.43-microsoft-standard` for a windows based Linux system.


#### For:
- Disco 19.04
- Cosmic 18.10
- Bionic 18.04 (LTS)
- Xenial 16.04 (LTS)

Please use [this](https://docs.docker.com/install/linux/docker-ce/ubuntu/) set of instructions 

#### For:
- Ubuntu Xenial 16.04 LTS
- Ubuntu Wily 15.10
- Ubuntu Trusty 14.04 LTS
- Ubuntu Precise 12.04 LTS
- Debian testing stretch
- Debian 8.0 Jessie
- Debian 7.0 Wheezy (you must enable backports)

Please use [this](https://runnable.com/docker/install-docker-on-linux) set of instructions 


### Install Docker CE using the repository

##### Set Up the Repository

- Update the apt package index: `sudo apt-get update`
- Install packages to allow apt to use a repository over HTTPS
  ```
  sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
  ```
- Add Docker’s official GPG key: `curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
- Use the following command to set up the stable repository
  ```
  sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"
  ```

##### Install Docker CE

- Update the apt package index: `sudo apt-get update`
- Install the latest version of Docker CE: `sudo apt-get install docker-ce`
- Verify that Docker CE is installed correctly by running the hello-world image: `sudo docker run hello-world`

#### Install Docker Compose

Follow the official [Install Docker Compose](https://docs.docker.com/compose/install/#install-compose) guide or the brief rundown below:

- Note the latest release version number at https://github.com/docker/compose/releases/latest. e.g. `1.21.2`. You will need to replace `<latest-release-version-number>` with this in next command.
- Run this command to download the latest version of Docker Compose:
  ```
  curl -L https://github.com/docker/compose/releases/download/<latest-release-version-number>/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
  ```
- Apply executable permissions to the binary: `sudo chmod +x /usr/local/bin/docker-compose`
- Test the installation: `docker-compose --version`

---




## Docker

Please read about [Docker concepts](https://docs.docker.com/get-started/#docker-concepts) and [Docker overview](https://docs.docker.com/engine/docker-overview/) to get a sense of what Docker is.

A few common Docker CLI commands you might need for working with `treehouses` are:

- `docker ps` – show running containers
- `docker ps -a` - show all containers
- `docker logs <container-id> -f` - follow the log output of a container
- `docker images` – list images

## Docker Compose

Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s [services](https://docs.docker.com/get-started/part3/#about-services). Then, with a single command, you create and start all the services from your configuration. You can read more about Docker Compose at [Overview of Docker Compose](https://docs.docker.com/compose/overview/).


