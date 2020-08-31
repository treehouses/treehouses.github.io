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
2. Scan and pair with the Pi device (look for `treehouses`)
3. Open the `treehouses remote` app
4. Click on "Connect to RPI"
5. Select your Raspberry Pi (`treehouses-<4-digit-number>`) ie `treehouses-8930`

6. Once you have connected to your Raspberry Pi, tap the menu button on the top left of your screen to view a whole host of options to interact with your Raspberry Pi.
7. Go to Terminal
    * Just like a computer terminal, the Treehouses Remote app allows you to interact with your Raspberry Pi using CLI (command line interface)
8. In the Terminal window type `treehouses detectrpi` and "send" it 
    * You can also access this command without writing: tap the `Commands` button at the top right of your screen to display a set of pre-entered commands you can use.
  
9. Now type `treehouses default network`
    * Here we are preparing to get internet access
10. Reboot the system by entering the command `reboot` and go back to the home screen to re-connect to your Pi
11. Back in the terminal type `treehouses bridge "wifiname" treehouses "wifipassword"`, and replace `wifiname` with the name of your wifi network, and `wifipassword` with the password.

    **Output of steps 8, 9, 10, and 11**:

    ![Treehouses Command outputs](images/treehouses-output.jpg)

    **NOTE:** If you want to add a password to the treehouses hotspot, enter the command exactly as above being sure to add a custom     hotspot password after your wifi password.

12. Reboot once again

#### Congrats, you have just connected your Raspberry Pi! 

**NOTE:** The Raspberry Pi may reboot in less than a minute, but time may vary by factors such as read/write speed of the microSD card and the particular Treehouses image being loaded.

**NOTE:** You can observe the Rapsberry Pi reboot by watching the steady red LED (labeled "PWR" in small letters on the circuit board). During a reboot, the red light should briefly wink out, then come back on. Right after rebooting, the green LED (labeled "ACT" in small letters on the circuit board) will rapidly flash as the microSD card reads the initialization steps. Once the image has fully loaded, the green LED will then begin to blink at a less rapid rate.

**NOTE:** You will need to unpair, re-pair, and restart your phone every time you use a new image version.

Lastly, navigate to Settings by clicking the top right icon and scroll down to enable the `Share Data` option as shown below:

![](images/enabledata2.png)

**NOTE:** If you are experiencing frequent Bluetooth disconnects, restart your Android device and try again.

---
#### Next Section: [Finding your Pi](find-pi.md)
