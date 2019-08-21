# Setting up your Raspberry Pi

## Objectives

* Burn a treehouses image on a microSD card
* Start up your Raspberry Pi

## So What is the Raspberry Pi?
The Raspberry Pi is a low cost single board computer.  Think of it as a downsized desktop tower, with the ability to receive, compute and output data and information, just without a mouse, keyboard or screen.

The OLE Raspberry Pi image is a modified [Raspbian](https://www.raspberrypi.org/downloads/raspbian/) image, with additional software for OLE's Planet program.  The Raspberry Pi can boot from this image using a microSD card.

### How OLE uses the Pi:  
1. The Raspberry Pi is loaded with an operating system developed by the OLE team.
2. The Raspberry Pi is used in the field to allow devices to connect to it. 
3. Through this connection, these devices can access educational materials (Planet).

## Get your RPi Up and Running
After getting your microSD cards and card reader/adapter, your first step will be to burn a treehouses image onto a microSD card, which you will later use to boot up your Raspberry Pi.

### Prepping the microSD card:
1. Download the latest treehouses image that is available [here](http://download.treehouses.io)
 1. In the list scroll down and find the latest release
1. Download and install [Etcher](https://etcher.io)
![](etcher.jpg)

### Burning the treehouses image onto the microSD card:
1. Insert a microSD card into your computer's card reader
1. Open Etcher
1. Click on `Select Image`
1.  * Select the treehouses image that you have just downloaded
1.  * Select the microSD card you have just inserted 
1.  * Click "Flash!".  The process will take approximately 10 minutes to complete.
![](etcher1.jpg)

1. Once it's done burning, you can view the contents in the `boot` partition.
 1. You can access this through a your file explorer
1. Unmount and safely eject the microSD card from your computer. 

### Starting up the Raspberry Pi:
Insert the microSD card into the RPi.  Use an ethernet cable to connect it to a router, and connect the power cable.  A red "power" LED should turn on.

## Next Section: [Using Treehouses Remote](treehouses-remote.md)
