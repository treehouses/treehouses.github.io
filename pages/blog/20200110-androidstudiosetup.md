# How To Setup Android Studio 

10, January 2020 • [LordJashin32](https://github.com/LordJashin32)

---

This blog is about how to setup [Android Studio](https://en.wikipedia.org/wiki/Android_Studio) for the [treehouses remote](https://github.com/treehouses/remote) repository.
These projects rely on the [Java](https://en.wikipedia.org/wiki/Java_(programming_language\)) programming language and Android Studio is an Integrated Development Environment (IDE) for Android Apps. 

---

## Download Java

[JRE](https://en.wikipedia.org/wiki/Java_virtual_machine#Java_Runtime_Environment) is required for Java programming in Android Studio. 
Android Studio relies on JRE to compile and create [APKs](https://en.wikipedia.org/wiki/Android_application_package) for Android Devices. 

1. Since we are getting JRE we might as well get Java too. Java runs on all platforms and uses the motto "Write once, run anywhere" (WORA). [Download link](https://www.java.com/en/download/).

2. Pickup JRE for your computer. Note you may have to create an Oracle account in order to download JRE.
[Download link](https://www.oracle.com/technetwork/java/javase/downloads/jre8-downloads-2133155.html).

3. Install Java and Java Runtime Environment. If you need help installing it. Please read some of the many
documents on Oracle's website including some [here](https://docs.oracle.com/goldengate/1212/gg-winux/GDRAD/java.htm).

4. Verify Java is installed by running ```java -version``` in your favourite terminal. For Windows this would be
your command prompt (cmd.exe).

---

## Download Android Studio

1. Android Studio is available for Linux, Mac, and Windows platforms. Go ahead and download the installer. 
[Download Link](https://developer.android.com/studio).

2. Install Android Studio by running the installer. Make sure you select
Android Virtual Device in the components section of the install becuase you 
will need this to run an emulator to test your APKs you build.

---

## Download treehouses Remote 

1. Go ahead and clone the [treehouses remote](https://github.com/treehouses/remote) repository to a folder somewhere on your computer.

---

## Importing the project

1. Open Android Studio. 

![](./images/20200105-android-studio.png)

2. Click Import Project (Gradle, Eclipse ADT, etc.)

3. Navigate to your local clone. Select your Main directory that contains
your AndroidManifest.xml file. E.g. ```remote\app\src\main```

![](./images/20200105-import-project.png)

4. Click Ok

5. Click Import project from external model

6. Select the 2nd option (Gradle) (With the elephant icon)

![](./images/2020105-select-gradle.png)

7. Click the 3 dots button (...) next to Gradle Project: to pull up
a file/folder browser. Select the folder containing your Gradle directory. E.g. ```C:\Users\nmnmhjmj\Desktop\remote```
Which just so happens to be the folder for your repository.

![](./images/20200105-gradle-folder.png)

8. Click Finish!

---

## Running the project

1. Now you should see the project do a build and if everything is working correctly all green checkmarks.

![](./images/20200105-green-checks.png)

2. You will need to setup a build configuration to run your project (Shift + F10 to run).

![](./images/20200105-build-config.png)

3. You will need to setup a emulator device for the project to run the apk on using AVD manager.

![](./images/20200105-avd-manager.png)

4. Finally you should be able to hit the big green play button (Run) and get the following.

![](./images/20200105-run-apk.png)
