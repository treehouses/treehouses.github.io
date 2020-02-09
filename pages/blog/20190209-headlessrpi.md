# Raspberry Pi Headless Setup

Aug 16, 2019 • [An Pham](https://github.com/phamduchongna93)

---

Don’t have an extra keyboard or monitor?? Here’s how to do a headless Raspberry Pi setup with a [treehouses](http://download.treehouses.io/) image, which is our modified version of Debian.

## Compatible devices
1.  Raspberry Pi 4 B, 3 B/B+, or Zero W

## Step 0 - Prepare image

Download the [latest treehouses image](http://download.treehouses.io/) to your computer, and flash it onto your microSD card using [balenaEtcher](https://etcher.io).

### On Linux or Unix like system
```
lsblk 

sudo dd if= of= status=progress bs=4M
```


## Step 1: Mount the directories for editing 

First, you need to find your current subnet and ip of your network. In my case, I use the following command to find my ip and subnet. 
```
anpham@dell-laptop:~$ ifconfig wlp2s0                                                                                                            
wlp2s0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500                                                                                     
        inet 192.168.0.90  netmask 255.255.255.0  broadcast 192.168.0.255
        inet6 2601:197:a80:5274:e2c0:a959:c502:7ed2  prefixlen 64  scopeid 0x0<global>
        inet6 2601:197:a80:5274:814f:3c4c:e4cb:6a97  prefixlen 64  scopeid 0x0<global>
        inet6 fe80::8cb5:d2ec:db7d:19ad  prefixlen 64  scopeid 0x20<link>
        ether fc:77:74:80:02:23  txqueuelen 1000  (Ethernet)
        RX packets 648703  bytes 900707585 (900.7 MB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 141760  bytes 22970617 (22.9 MB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
```
`inet 192.168.0.90  netmask 255.255.255.0  broadcast 192.168.0.255`
This tells me that I'm in subnet 192.168.0.90/24, meaning the network ip come from 192.168.0.1 to 192.168.0.90. 

### On Windows

### Linux 

## Step 2: Test the images  

Once the green LED next to it on your Raspberry Pi stabilizes into a solid green, find its local IP address by typing `ping treehouses.local`,`ping treehouses.home` or `ping treehouses.lan` in your terminal or command prompt.  You'll need the local IP address to configure the  You should see something like this:
```
PING treehouses.local (192.168.1.119): 56 data bytes
64 bytes from 192.168.1.119: icmp_seq=0 ttl=64 time=69.424 ms
64 bytes from 192.168.1.119: icmp_seq=1 ttl=64 time=4.640 ms
64 bytes from 192.168.1.119: icmp_seq=2 ttl=64 time=2.945 ms
64 bytes from 192.168.1.119: icmp_seq=3 ttl=64 time=3.372 ms
```
Once you start seeing this output, you can use `Ctrl`+`C` to terminate the process.  As you can see here the local IP address of your Pi is `192.168.1.119`.  If this doesn't work, you'll need to [use another method](https://www.raspberrypi.org/documentation/remote-access/ip-address.md) to find the local IP address.

SSH into the Pi by using (substitute `IP_address` with the IP address you just found):
~~~
ssh pi@IP_address
~~~
You will now see a message that reads
```bash
Authenticity of host can't be established, are you sure you want to continue? (yes/no)
```
Enter `yes`, and you will be prompted for a password which is "raspberry" by default (you can change it later).

## Step 3: Set Up RealVNC

Download [RealVNC Viewer](https://www.realvnc.com/en/connect/download/viewer/) on your computer.

Meanwhile, enable VNC on your Pi by running the following in your terminal while SSHed in:
~~~
sudo -s
treehouses vnc on
reboot
~~~


## Step 4: start pinging your nodes to   

Open up the RealVNC Viewer, and enter the local IP address of the Raspberry Pi in the search bar.  You may be prompted to log in: username `pi`, password `raspberry`.

![](images/20190816-vnc.png)

Your Pi desktop should appear:
![](images/20190816-pidesktop.png)

Congrats!  You have now set up your headless Raspberry Pi, and can access the terminal through SSH, as well as the desktop through VNC.

## Conclusion
- This tutorial helps you to deploy a working simple treehouses node. The advantages of this approach is that you network preconfigured with certain setting.  
