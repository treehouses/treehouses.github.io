# Docker Installation

The below guide includes steps to install Docker directly on to your machine. This part is optional and included if you are curious about running Docker on your OS. Note that in order to run `planet`, you will need Docker Community Edition installed.

---

### Windows

- For **64bit Windows 10 Pro, Enterprise and Education 1607 Anniversary Update, Build 14393 or later**, please use one of the following 2 methods to installs Docker for Windows:
  - Follow the official [Install Docker for Windows](https://docs.docker.com/docker-for-windows/install/) guide
  - [Chocolatey](https://chocolatey.org/) – the package manager for Windows was installed to your machine in the previous step. Please read [What to know before you install
](https://docs.docker.com/docker-for-windows/install/#what-to-know-before-you-install) and run `choco install docker-for-windows`
- If you do not have Windows version specified above, you will need to install [Docker Toolbox](https://docs.docker.com/toolbox/overview/). Please follow the official guide [Install Docker Toolbox on Windows](https://docs.docker.com/toolbox/toolbox_install_windows/).

**NOTE**: If you already have a previous version of VirtualBox installed, do not reinstall it with **Docker Toolbox**. When prompted, uncheck it. Otherwise, it might downgrade your virtual box or you might run into some errors during installation. Make sure that your virtual box is up to date after installation.

### macOS

Please follow the official [Install Docker for Mac](https://docs.docker.com/docker-for-mac/install/) guide or the brief rundown below:

#### What to know before you install

- **System Requirements**: Docker for Mac launches only if all of these requirements are met.
  - 2010 or newer Mac machine
  - Run the following command in a terminal: `sysctl kern.hv_support` and look for result **kern.hv_support: 1**
  - macOS El Capitan 10.11 and newer macOS releases
  - At least 4GB of RAM
  - VirtualBox prior to version 4.3.30 must NOT be installed.
- If your system **does not** satisfy requirements above, you can install [Docker Toolbox](https://docs.docker.com/toolbox/overview/), which uses Oracle VirtualBox instead of HyperKit. Please follow the official guide [Install Docker Toolbox on macOS](https://docs.docker.com/toolbox/toolbox_install_mac/).

- What the install includes: The installation provides Docker Engine, Docker CLI client, Docker Compose, Docker Machine, and Kitematic.

#### Install and run Docker for Mac

- Download [Docker for Mac](https://store.docker.com/editions/community/docker-ce-desktop-mac) (sign-up for free Docker ID required.)
- Double-click Docker.dmg to open the installer, then drag Moby the whale to the Applications folder.
- Open Docker from the Applications folder/Launchpad/Spotlight to start Docker.
  - You will be prompted to authorize Docker with your system password after you launch it. Privileged access is needed to install networking components and links to the Docker apps.
  - The whale in the top status bar indicates that Docker is running, type `docker` in terminal to see if it works.
- You are up and running with Docker for Mac.

### Linux

Please find your distro at https://docs.docker.com/install/#server and follow the guide to install Docker CE.

Below is a brief rundown is for **Ubuntu 16.04** :

#### Prerequisites

- **OS requirements** 64-bit version of one of these Ubuntu versions:
  - Artful 17.10 (Docker CE 17.11 Edge and higher only)
  - Xenial 16.04 (LTS)
  - Trusty 14.04 (LTS)
- **Uninstall older versions of Docker** `sudo apt-get remove docker docker-engine docker.io`

#### Install Docker CE using the repository

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

## MacOS Note

> If you see the following error when installing Planet, open the `planet.yml` file and change the path `/etc/planet` to `/Users/<username>/planet`. To check the path you can run the following command `cd ~` and `pwd`.

``` ➜ docker git:(master) docker-compose -f planet.yml -p planet up -d --build
Starting planet_couchdb_1 ... done
Starting planet_planet_1 ... error
Starting planet_db-init_1 ...

ERROR: for planet_planet_1 Cannot start service planet: b'Mounts denied: \r\nThe path /etc/planet\r\nis not shared from OS X and is not known to Docker.\r\nYou can configure sharStarting planet_db-init_1 ... done

ERROR: for planet Cannot start service planet: b'Mounts denied: \r\nThe path /etc/planet\r\nis not shared from OS X and is not known to Docker.\r\nYou can configure shared paths from Docker -> Preferences... -> File Sharing.\r\nSee https://docs.docker.com/docker-for-mac/osxfs/#namespaces for more info.\r\n.'
ERROR: Encountered errors while bringing up the project.
```
