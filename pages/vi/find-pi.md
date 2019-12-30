# Finding your Pi

There are several ways to find the local IP address of your Raspberry Pi, which you will need to know for the subsequent steps.

## Method 0: Looking at your router

If you have access to your router's admin account, you can log into it and view the currently connected devices.  Here, you will be able to find your Raspberry Pi device (named "treehouses"), and its IP address.

## Method 1: Using treehouses remote

In the [previous step](treehouses-remote.md), you were able to access the terminal on treehouses remote using Bluetooth.  Here, run `treehouses networkmode info`.  The output in `bridge` mode will look like this:
```
wlan0: essid: wifiname, ip: 192.168.0.19, has password
ap0: essid: treehouses, ip: 192.168.2.1, has no password
```



## Method 2: Pinging your Raspberry Pi

Type `ping treehouses.local`, `ping treehouses.home` or `ping treehouses.lan` in your terminal or command prompt (Windows users will need to install [Bonjour](https://support.apple.com/kb/DL999?viewlocale=en_US&locale=en_US)). You should see something like this:
```
$ ping treehouses.local
PING treehouses.local (192.168.0.19): 56 data bytes
64 bytes from 192.168.0.19: icmp_seq=0 ttl=64 time=69.424 ms
64 bytes from 192.168.0.19: icmp_seq=1 ttl=64 time=4.640 ms
64 bytes from 192.168.0.19: icmp_seq=2 ttl=64 time=2.945 ms
64 bytes from 192.168.0.19: icmp_seq=3 ttl=64 time=3.372 ms
```
You can stop this process with `Ctrl`+`C`.

As you can see here its local IP address is `192.168.0.19`.

## Method 3: nmap command

The `nmap` command ([Network Mapper](https://nmap.org)) is a free and open-source tool for network discovery, available for Linux, macOS, and Windows.

### Installation

- Linux: in your terminal, run `sudo apt-get install nmap`
- macOS: in your terminal, run `brew install nmap`
- Windows: see the [nmap download page](http://nmap.org/download.html)

### Find your subnet

To use `nmap` to scan the devices on your network, you need to know the subnet you are connected to. First find your own IP address, in other words the one of the computer you're using to find your Pi's IP address:

- On Linux, type `hostname -I` into a terminal window
- On macOS, go to System Preferences then Network and select your active network connection to view the IP address
- On Windows, go to the Control Panel, then under `Network and Sharing Center`, click `View network connections`, select your active network connection and click `View status of this connection` to view the IP address

Now you have the IP address of your computer, you can scan the whole subnet for other devices. For example, if your IP address is `192.168.1.5`, other devices will be at addresses like `192.168.1.2`, `192.168.1.3`, `192.168.1.4`, etc. The notation of this subnet range is `192.168.1.*` (this covers `192.168.1.0` to `192.168.1.255`).

Now use the `nmap` command with the `-sn` flag (ping scan) on the whole subnet range. This may take a few seconds:

`nmap -sn 192.168.1.*`

You should see something like this:
```
Starting Nmap 7.70 ( https://nmap.org ) at 2019-08-16 17:00 EDT
Nmap scan report for hpprinter (192.168.1.2)
Host is up (0.00044s latency).
Nmap scan report for Gordons-MBP (192.168.1.4)
Host is up (0.0010s latency).
Nmap scan report for ubuntu (192.168.1.5)
Host is up (0.0010s latency).
Nmap scan report for treehouses (192.168.1.8)
Host is up (0.0030s latency).
Nmap done: 256 IP addresses (4 hosts up) scanned in 2.41 seconds
```
Here you can see the local IP address of "treehouses" is `192.168.1.8`.

## Method 4: arp command

**This will only work if the Raspberry Pi you are using is the only one on your network.**  In your command line, you can run the the `arp` command and search for the Raspberry Pi's MAC address, assuming it has not been changed or spoofed.  A MAC address is a unique device identifying number, used as a network identifier.  Run `arp -a | grep dc:a6:32` if you are using a Raspberry Pi 4, otherwise run `arp -a | grep b8:27:eb`.

You should see something like this:  
`? (10.0.0.32) at b8:27:eb:c7:60:57 on en0 ifscope [ethernet]`  
Here you can see the local IP address of the Raspberry Pi is `10.0.0.32`.

## Method 5: Fing app

The Fing app is a free network scanner for smartphones. It is available for Android and iOS.

Your phone and your Raspberry Pi have to be on the same network, so connect your phone to the correct wireless network.

When you open the Fing app, touch the refresh button in the upper right-hand corner of the screen. After a few seconds you will get a list with all the devices connected to your network. Scroll down to the entry with the name "treehouses". You will see the IP address in the bottom left-hand corner, and the MAC address in the bottom right-hand corner of the entry.

---
#### Return to [First Steps](firststeps.md#Step_1_-_Installing_and_finding_your_Raspberry_Pi)
