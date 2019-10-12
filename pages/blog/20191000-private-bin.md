# Install Privatebin on Raspberry Pi by treehouses image

Oct 09, 2019 • [hiroTochigi](https://www.github.com/hiroTochigi)  

---

This tutorial lets you install Privatebin on your Raspberry Pi by a treehouses image. The treehouses image already has Tor Hidden Service and Docker so you can easily configure Privatebin on your Raspberry Pi through your Onion Server with Docker. You can use Privatebin through your Tor Browser with your Onion address. You can learn a simple example of a way to use Docker and a configuration of the installed software on your Onion address.

### Prerequisite 
* Raspberry Pi with treehouses
* Tor Browser
* ssh connection to your Raspberry Pi

## Step 1 - Download Codes by Git

Download a Docker file of Privatebin for Raspberry Pi and the latest Privatebin code

```
git clone https://github.com/uGeek/docker-privatebin
cd docker-privatebin
git clone https://github.com/PrivateBin/PrivateBin
```

The first command downloads a Dockerfile of Privatebin for Raspberry Pi. After that, download the latest Privatebin code in docker-privatebin directory.

## Step 2 - Tweak Dockerfile for Tor Browser

Let’s look at Dockerfile.
Type

```
vim Dockerfile
```

You get the below text

![](images/20191000-Dockerfile.png)

This Dockerfile builds an image of Privatebin based on Apache server. However, it has a problem; In October/2019, the Privatebin of this Dockerfile does not support Tor Browser. Fortunately, the latest code supports Tor Browser. Therefore, you need to use the latest Privatebin code which you git-cloned.

### Add ADD Command
Add one line between FROM command and RUN command
ADD PrivateBin var/www/PrivateBin

This command adds the local PrivateBin directory in /var/www directory as the same name: PrivateBin
This Privatebin code is the latest so you can use it through Tor Browser.

### Delete Three Lines
Delete the three lines

1. curl -L https://github.com/PrivateBin/PrivateBin/archive/master.zip > /var/www/master.zip && \
1. unzip -q master.zip && \
1. rm -rf master.zip

```
curl -L https://github.com/PrivateBin/PrivateBin/archive/master.zip > /var/www/master.zip && \
```

This code downloads a master.zip file from Privatebin archive repository and stores in /var/www directory as the same name: master.zip. However, the master.zip code is not the latest code. You do not want to use this image, so delete the line. 

```
unzip -q master.zip && \
rm -rf master.zip
```

This two codes deal with zip file. The first code decompresses the master.zip. The second code deletes master.zip. However, you git-cloned the uncompressed Privatebin, so these codes are not only used anymore but also produce errors.    

### Modify Three Lines
Change three lines

1. apt-get install -y unzip zlib1g-dev libpng-dev && \` → `apt-get install -y zlib1g-dev libpng-dev && \
1. mv PrivateBin-master html && \`→ `mv PrivateBin html && \
1. a2enmod rewrite && \`→ `a2enmod rewrite

The first modification is optional. You do not need to use upzip in this Dockerfile.
The second and third modifications are crucial. 
The second command changes from the first directory name to html. If there is not the first name, you get an error.
The third command must be the last command in the first `RUN command. && \` means that there is a next command. If there is `&& \` but no command proceeds, you get an error.

After that you should have the below Dockerfile.

![](images/20191000-Dockerfile-after.png)

## Step 3 - Make Docker Image

Type the below command

```
docker build -t privatebin
```

The command docker `build .` builds Docker image from Dockerfile if there is a Dockerfile in the current directory. 
`-t privatebin` means that put the name: privatebin on the built image
You can see it from the below command.

```
docker images
```

You should get the similar result

![](images/20191000-Docker-Image.png)

You can identify the image by name: REPOSITORY:TAG or IMAGE ID
The privatebin image is identified by privatebin:latest or 46542ae566e0 

## Step 4 - Make and Run Docker Container from the Built Image

### Check the Used Port Number

Before making the container, you need to decide what port number you use. You cannot use the same port number twice, so you need to know the used port numbers. 
Type the below command

```
docker ps -a
```

You should get the similar result.

![](images/20191000-Docker-ps-before.png)

You can see 0.0.0.0:80->80/tcp and 0.0.0.0:2200->5984/tcp. 80 and 2200 are already used so you cannot use them. If you use the used port number, you get an error. 

Note: You should not use port numbers from 0 – 1023, too. They are called well-known ports and they are already reserved by other systems. Even though you could make a container, you might not be able to use it.

### Make Container with Port Mapping

Type the below command

```
docker run –name privatebin -p 8080:80 -d privatebin:latest
```

This command make a container from privatebin:latest image. 
Then, type `docker ps`  

You get

![](images/20191000-Docker-ps-after.png)

`docker run` makes a container from an image and lets the container running. In this case, the image is privatebin:latest. Also, put the name: privatebin on the container (`--name privatebin`), and -d indicates that the container runs background. 
`-p 8080:80` indicates the port 8080 of the host machine (localhost) connects to the port 80 of the container. If you accesses to localhost:8080 by curl, you will get HTML content. 

```
curl localhost:8080
```

You will get the similar result like the below.

![](images/20191000-Private-Bin-Source.png)

If you can see `<title>PrivateBin</title>`, your container works correctly.

## Step 5 - Access Privatebin from Tor Browser
treehouses already has Tor Hidden Service. Tor Hidden Service lets your device have an unique Onion address which is available within Tor network. You can easily register your Privatebin container by treehouses CLI function: treehouses tor.  After configuring your container to Tor Hidden Service, you can use your Privatebin service through Tor Browser.   

###  Connect your container port and your Onion Address port
treehouses has tor function to manage Tor configuration.
Type the below command

```
treehouses tor add 8080
```

You should get a similar message.

![](images/20191000-Add-Tor.png)

It means that you succeed adding port number 8080.
Let’s be more clear about it. Type the below command.

```
treehouses tor list
```

You will get the similar result.

![](images/20191000-List-Tor.png)

An external port number is used to communicate with a local port number over your Onion Address. The above example tells that the external port 2200 connects to the local port 2200, and the external port 80 connects to the local port 80. 
The external port 8080 connects to the local port 8080. The local port 8080 attached to your Privatebin container because you can access to Privatebin over 127.0.0.1:8080.

### Discover Your Onion Address

The treehouses tor functions let you know your Onion address.
Type the below commandi.

```
treehouses tor
```

Then, you will get the similar results.

![](images/20191000-Onion-Address.png)

The second line: alaoxeoomzhafttkk7kseqsxe4sub5hya7gjbgu4bjgs3p5ejuxvbzyd.onion is Onion address (This address is already invalid).

![](images/20191000-Success.png)

Congratulation!! You can use your own Privatebin.

