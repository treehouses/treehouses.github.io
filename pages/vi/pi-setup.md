# Setting up Your Raspberry Pi

## Objectives

- Burn a treehouses image on a microSD card
- Start up your Raspberry Pi

## Background Story

The Raspberry Pi (RPi) is a low-cost, single-board computer that functions like a compact desktop, capable of receiving, computing, and outputting data—without a built-in mouse, keyboard, or screen.

The Treehouses team has developed a custom [Raspberry Pi OS](https://en.wikipedia.org/wiki/Raspberry_Pi_OS) image, pre-installed with software like Docker, [@treehouses/cli](https://www.npmjs.com/package/@treehouses/cli), and other utilities to simplify the deployment and management of OLE's Planet/myPlanet apps and the Raspberry Pi server itself.

## Get Your RPi Up and Running

To start, you’ll need a microSD card and a card reader/adapter ready. The first step is to burn the Treehouses image onto the microSD card, which will be used to boot your Raspberry Pi.

### Preparing the Image

1. Download and install [balenaEtcher](https://etcher.balena.io/).
2. Visit the [treehouses download page](https://treehouses.io/#!pages/download.md) and download the latest stable image (the one with the highest version number).

### Burning the treehouses Image onto the microSD Card

![balenaEtcher flow: select image, select drive, flash](images/etcher.gif)

1. Insert the microSD card into your computer's card reader.
2. Open **balenaEtcher**:
   - Click **"Flash from file"** and select the treehouses image you downloaded.
   - Select the microSD card you inserted as the **target**.
   - Click **"Flash!"** — this process takes about 10 minutes, depending on your card and reader.
3. Once complete, you can view the contents in the `boot` partition using a file explorer.
4. Unmount and safely eject the microSD card.

**NOTE:** If you run into any issues with flashing, try check for new balenaEtcher version. You can also try other image flashing tools like [Raspberry Pi Imager](https://www.raspberrypi.com/software/) or [Rufus](https://github.com/pbatard/rufus/releases) (Windows only). Keep your downloaded treehouses image, as you have to repeat this process in [Step 7](nextcloud-tor.md) later.

### Powering On the Raspberry Pi

1. With the Raspberry Pi powered off, insert the microSD card into the slot on the bottom of the device.
2. Connect the power supply to the Raspberry Pi. If your power supply has a switch, turn it on.
   - A red LED will light up, indicating that the Raspberry Pi has power.
3. Connect the Raspberry Pi to an Android device using [Treehouses Remote](https://play.google.com/store/apps/details?id=io.treehouses.remote) (recommended), or use an Ethernet cable to connect it to a router or switch.
   - These methods will be covered in detail in the following sections.

---

#### Next Section: [Using Treehouses Remote](treehouses-remote.md)
