# Using treehouses remote

## Objectives

* Download treehouses remote
* Connect to treehouses via Bluetooth

## Installation
On an android device, find the [treehouses remote](https://play.google.com/store/apps/details?id=io.treehouses.remote) app on the Google Play Store download it.

![](remoteiconsml.jpg)

`the app may ask for your device location, feel free to decline`

## Use treehouses remote to connect to Raspberry Pi via Bluetooth

1. After downloading the app go to your Android device's Bluetooth pairing screen
1. Scan and pair with the Pi device (look for `treehouses`)
1. Open the `Treehouses Remote` app
1. Click on "Connect to RPI"
1. Select your Raspberry Pi ( `treehouses-version`)

1. Once you have connected to your Raspberry Pi, click the three "bars" on the top left of your screen this will give you a whole host of options to interact with your Raspberry Pi.
1. Go to Terminal
  1. Just like a computer terminal the Treehouses Remote app allows you to interact with your Raspberry Pi using Cli (command line interface)
1. in the Terminal Window type `treehouses detectrpi` amd "send" it 
  1. you can also access this command without writing it by clicking on the `Commands` button at the top right of your screen, these are a set of pre-entered commands you can use.
  
1. Now type `treehouses default network`
  1. Here we are getting things in place to get internet access 
1. Type `treehouses bridge "name of your wifi" treehouses "your wifi password" 

 #### Congrats you have just connected to your Raspberri Pi! 
  
`Note for later: You will need to unpair and re-pair eveytime you use a new Image version`
## Next Section: [Finding your Pi](find-pi.md)
