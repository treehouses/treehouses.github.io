# Android Screen Sharing

25, September 2019 • [CalebProvost](https://github.com/CalebProvost); based off of [Genymobile’s documentation](https://github.com/Genymobile/scrcpy)

---

## About This Method
There are many ways to connect and share a device's screen. This blog will use the open source application `scrcpy` for its ability to use the device through the screen sharing and its user support. There will be two main steps in getting `scrcpy` to work; getting the application onto your computer, and setting up USB Debugging on your android device. The latter of the two requires the Android device to be at least Android 5.0.
To make things easier, this tutorial style blog has been written so you can skip to your system’s OS and follow the steps from there.

## Get scrcpy
#### Windows
1. The easiest for Windows users is to download one of the links provided. &#8594; [x64](https://github.com/Genymobile/scrcpy/releases/download/v1.10/scrcpy-win64-v1.10.zip) | [x32](https://github.com/Genymobile/scrcpy/releases/download/v1.10/scrcpy-win32-v1.10.zip)
1. Unzip the file and store the directory wherever desired.
1. Continue to the [USB Debugging](20190925-mobilescreenshare.md#USB_Debugging) section with your android device ready.

#### Mac
1. Macs will need [Homebrew](https://brew.sh/) installed. If you don't already have this installed, open the terminal and run the command `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`.
1. scrcpy will need Homebrew dependent packages installed to run: `brew install sdl2 ffmpeg` and `brew install pkg-config meson`.
1. Allow `adb` accessable to PATH by using ` brew cask install android-platform-tools`.
1. Next, download the source files needed to run scrcpy [here](https://github.com/Genymobile/scrcpy/archive/master.zip) and extract the directory where desired.
1. Download the [server](https://github.com/Genymobile/scrcpy/releases/download/v1.10/scrcpy-server-v1.10.jar) and store it within the directory you just extracted. <div class="alert alert-info">Note: If prompted by your browser to keep or discard the download, select keep.<div>
1. Specify the path with `meson` by running the following commands: 
``` 
meson <directory> --buildtype release --strip -Db_lto=true -Dprebuilt_server=/<path-to-directory>/scrcpy-server.jar
cd <directory>
ninja
sudo ninja install
```
1. Now that you have `scrcpy`, continue to the [USB Debugging](20190925-mobilescreenshare.md#USB_Debugging) section with your android device.<div class="alert alert-info">Note: It might be necessary for you to create your own server (which will require Java 8 from Caskroom to be installed):<pre class="md-text" style="margin-bottom: -10px;">brew tap homebrew/cask-versions
brew cask install java11
export JAVA_HOME="$(/usr/libexec/java_home --version 1.11)"
export PATH="$JAVA_HOME/bin:$PATH"</pre></div>


#### Linux
An easy option for Linux users is to install snap and install the .snap package through it.
To install and build the dependencies manually, follow the below steps pertaining to your distribution of Linux:

##### Debian/Ubuntu/Mint
1. Install dependencies by running the following series of commands: 
```
sudo apt install adb ffmpeg libsdl2-2.0-0 make gcc git pkg-config meson ninja-build libavcodec-dev libavformat-dev libavutil-dev libsdl2-dev openjdk-8-jdk
```
    * If you are running an older version of Debian/Ubuntu, then you’ll need to install meson through pip3 by running command `sudo apt install python3-pip && pip3 install meson`.
1. Download the [server application](https://github.com/Genymobile/scrcpy/releases/download/v1.10/scrcpy-server-v1.10.jar) and install it in `/usr/local/bin`.
1. The next download will be the [source code](https://github.com/Genymobile/scrcpy/archive/v1.10.tar.gz) which will need to be extracted to the home directory of your system and remove the version number from the directory.
1. Proceed to build the application by running the following commands:
```
cd scrcpy
meson build --buildtype release --strip -Db_lto=true  -Dprebuilt_server=../scrcpy-server-v1.10.jar
cd build
ninja
sudo ninja install
```
1. Continue to the [USB Debugging](20190925-mobilescreenshare.md#USB_Debugging) section with your android device.

##### Fedora
1. First you’ll need to enable [RPM fusion free](https://rpmfusion.org/) with the following command: 
```
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
```
1. Now build the client dependencies with `sudo dnf install SDL2-devel ffms2-devel meson gcc make`.
1. Once the client dependencies are finished, build the server dependencies: `sudo dnf install java-devel`.
1. Continue to the [USB Debugging](20190925-mobilescreenshare.md#USB_Debugging) section with your android device.

## USB Debugging
#### Enable Developer Mode
1. Open your Android device's settings and select "About Phone" or "About Device".
1. Locate "Build Number" within the settings referencing system software (sub settings are different per device).
1. Press the "Build Number" 7 times where it should state developer mode unlocked.
![](images/20190925-Android-Setting.png)

#### Enable USB Debugging
1. Now that you have developer mode unlocked, go to newly aquired developer settings (within the main settings page).
1. Scroll down to "USB Debugging" and enable the option.
![](images/20190925-Android-Debugging.png)

## Use scrcpy!
1. Connect your android device to your PC.
1. A pop-up will ask for confirmation to allow connection with your PC, accept it.![](images/20190925-Android-Allow-Debug.png)
1. Next, start scrcpy in the method designed for your OS:
    * Windows: Open the directory you saved from the .zip file and execute `scrcpy-noconsole.exe`.
    * Mac: Open terminal and enter `scrcpy`.
    * Linux: Open terminal and enter `scrcpy`.
