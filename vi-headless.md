# First Steps

## Headless Set up
&nbsp;
Don’t have an extra keyboard or HDMI cable? Here’s how to do a headless [Treehouses](http://download.treehouses.io/) install on your Pi.
&nbsp;
Here is the list of hardware requirements once again for you to refer to.
&nbsp;
#### Hardware requirement review:
1.  A Raspberry Pi 4
1.  A power cord for the Pi
	- Standard micro USB power cord: 2.4A for Pi 3 and Pi 3b+, 1.2A for Pi Zero W, or 15.3W for Pi 4
1.  3 Class 10 microSD cards
	- minimal 16GB, but we recommend 32GB or greater
1.  A microSD card reader
	- Check your computer if you have a slot for a card reader otherwise use a USB reader
1.  Ethernet cable or wifi dongle
1.  USB keyboard, monitor, and HDMI cable
	- Optional if using your own laptop via VNC
1.  8 GB of hard-drive space
1.  8 GB of memory (RAM)



## Step 0 - Gather Items

You just flashed the latest treehouses image on your SD card and now you want to get it running. 

Gather your Pi, the SD card, an ethernet cable, your laptop, and the Pi's power cord.

## Step 1 - SSH file

Place your SD card into your laptop and open the boot file.

Enable [SSH](https://en.wikipedia.org/wiki/Secure_Shell) by placing a file named “ssh” (without any extension) onto the boot partition of the SD card

On mac: 
1. Open textedit file
2. make plain text
3. select “save” and
4. deselect “if no ext. is provided, use .txt”
5. rename “ssh” and save inside boot file

## Step 2: Get your RPi Up and Running

Unmount your SD card and place it inside the RPi. 
Now connect the Pi to your laptop via ethernet cable and plug in it's power cord. 

Give it a few minutes to get started and check for the flashing green light to make sure the image burned correctly. 

## Step 3: Accessing Treehouses 

Now you will open up your terminal or command prompt. To configure your Pi, you will need the IP address. To do this, enter the command:
~~~
ping treehouses.local
~~~
Once the IP address appears press Ctrl + C.

Copy the IP address and paste it into the command below.

SSH into the Pi by using:
~~~
ssh pi@enter_IP_address_here
~~~
You will now see a message that reads 
>Authenticity of host can't be established, are you sure you want to continue? (yes/no)
>
You will enter yes and then be prompted for a password which in all cases for RPis is "raspberry" until you change it.

## Step 4: Download RealVNC

Download [RealVNC](http://realvnc.com/en/connect/download/vnc/) here

Once it finishes downloading, open it up and enter the IP address from earlier in the search bar. Your Pi desktop should appear. 

It may give you an error at first, so ensure VNC is turned on in Treehouses by going back to terminal and entering:

~~~
sudo -s
Treehouses vnc on
reboot
~~~
Reboot will restart the Pi so you will need wait a few minutes and then SSH back into it using:

~~~
ssh pi@treehouses.local
~~~

## Step 5:  View your Treehouses desktop

Once you're back inside Treehouses, open up RealVNC again and enter the Pi's IP address once more, the desktop should now appear. You will be prompted for a password (raspberry) and a few more prompts, but otherwise everything should now be up and running. 
