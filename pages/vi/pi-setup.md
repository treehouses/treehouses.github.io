# Setting up your Raspberry Pi

## Objectives

* Burn a treehouses image on a microSD card
* Start up your Raspberry Pi

## So What is the Raspberry Pi?
The Raspberry Pi is a low cost single board computer.  Think of it as a downsized desktop tower, with the ability to receive, compute and output data and information, just without a mouse, keyboard or screen.

The treehouses Raspberry Pi image is a modified [Raspbian](https://en.wikipedia.org/wiki/Raspbian) image, with additional software for OLE's Planet program.  The Raspberry Pi can boot from this image using a microSD card.

### How the treehouses team uses the Pi:  
1. The Raspberry Pi is loaded with an operating system developed by the treehouses team.
2. The Raspberry Pi is used in the field to allow devices to connect to it.
3. Through this connection, these devices can access educational materials (Planet).

## Get your RPi Up and Running
After getting your microSD cards and card reader/adapter, your first step will be to burn a treehouses image onto a microSD card, which you will later use to boot up your Raspberry Pi.

### Preparing the image:
1. Download and install [Etcher](https://etcher.io)
1. Go to https://treehouses.io/#!pages/download.md
1. Download the latest stable image (the one with the highest version number)

### Burning the treehouses image onto the microSD card:
![](images/etcher.gif)

1. Insert a microSD card into your computer's card reader
1. Open Etcher
    * Click on `Select Image`
    * Select the treehouses image that you have just downloaded
    * Select the microSD card you have just inserted
    * Click "Flash!".  The process will take approximately 10 minutes to complete.
1. Once it's done burning, you can view the contents in the `boot` partition of your microSD card using a file explorer.
1. Unmount and safely eject the microSD card from your computer.

**NOTE:** If you run into any issues with flashing, try and update Etcher. You can also try [Raspberry Pi Imager](https://www.raspberrypi.org/downloads) or [Rufus](https://github.com/pbatard/rufus/releases) (Windows only). Keep your downloaded treehouses image, as you have to repeat this process in [Step 7](https://treehouses.io/#!./pages/vi/nextcloud-tor.md).

### Powering on the Raspberry Pi:
1. With the Raspberry Pi still off, insert the microSD card into the card reader on the bottom.
1. Connect the power cable, and if your device has a power switch, turn it on.
    * A red "power" LED should turn on.
1. Connect it to an android device using [Treehouses Remote](https://play.google.com/store/apps/details?id=io.treehouses.remote) (preferred) or use an ethernet cable to connect it to a router.

---
#### Next Section: [Using Treehouses Remote](treehouses-remote.md)
