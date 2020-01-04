# Using treehouses remote

## Objectives

* Download treehouses remote
* Connect to treehouses via Bluetooth

## Installation
On an Android device, find the [treehouses remote](https://play.google.com/store/apps/details?id=io.treehouses.remote) app on the Google Play Store download it.

![](images/remoteiconsml.jpg)

The app may ask for your device location, feel free to decline.

## Use treehouses remote to connect to Raspberry Pi via Bluetooth

1. After downloading the app go to your Android device's Bluetooth pairing screen
1. Scan and pair with the Pi device (look for `treehouses`)
1. Open the `treehouses remote` app
1. Click on "Connect to RPI"
1. Select your Raspberry Pi (`treehouses-<4-digit-number>`) ie `treehouses-8930`

1. Once you have connected to your Raspberry Pi, tap the menu button on the top left of your screen to view a whole host of options to interact with your Raspberry Pi.
1. Go to Terminal
    * Just like a computer terminal, the Treehouses Remote app allows you to interact with your Raspberry Pi using CLI (command line interface)
1. In the Terminal window type `treehouses detectrpi` and "send" it 
    * You can also access this command without writing: tap the `Commands` button at the top right of your screen to display a set of pre-entered commands you can use.
  
1. Now type `treehouses default network`
    * Here we are preparing to get internet access
1. Reboot the system by entering the command `reboot` and go back to the home screen to re-connect to your Pi
1. Back in the terminal type `treehouses bridge "wifiname" treehouses "wifipassword"`, and replace `wifiname` with the name of your wifi network, and `wifipassword` with the password.

**NOTE:** If you want to add a password to the treehouses hotspot, enter the command exactly as above being sure to add a custom hotspot password after your wifi password.

1. Reboot once again

#### Congrats, you have just connected your Raspberry Pi! 

**NOTE:** The time it takes to reboot is about 2-4 minutes.

**NOTE:** You will need to unpair, re-pair, and restart your phone evey time you use a new image version.

---
#### Next Section: [Finding your Pi](find-pi.md)
