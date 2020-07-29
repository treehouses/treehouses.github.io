[1mdiff --git a/pages/blog/20200610-githubandroidstudiowindows.md b/pages/blog/20200610-githubandroidstudiowindows.md[m
[1mindex bc78fa8..988c476 100644[m
[1m--- a/pages/blog/20200610-githubandroidstudiowindows.md[m
[1m+++ b/pages/blog/20200610-githubandroidstudiowindows.md[m
[36m@@ -1,82 +1,82 @@[m
[31m-# How To Setup Github to work with Android Studio on a Windows Machine [m
[31m-[m
[31m-Created on 10, June 2020 • [ali18997](https://github.com/ali18997)[m
[31m-[m
[31m----[m
[31m-[m
[31m-This blog is about how to setup [GitHub](https://github.com/) while working on [Android Studio](https://en.wikipedia.org/wiki/Android_Studio) for the [treehouses remote](https://github.com/treehouses/remote) repository using a Windows Machine.[m
[31m-To follow the steps here you should have Android Studio setup properly as per the [How To Setup Android Studio](./20200110-androidstudiosetup.md) blog post.[m
[31m-[m
[31m----[m
[31m-[m
[31m-## Download GitHub Desktop App [m
[31m-[m
[31m-1. GitHub Desktop is available for the Windows platform. **Download** it [here](https://desktop.github.com/)[m
[31m-[m
[31m-2. Install GitHub Desktop by running the installer and wait for it to finish installation[m
[31m-[m
[31m-3. Click **Sign into Github.com** on the welcome screen and sign in with your GitHub account[m
[31m-[m
[31m-![](./images/20200610-github-welcome.png)[m
[31m-[m
[31m----[m
[31m-[m
[31m-## Setting up the treehouses remote repository  [m
[31m-[m
[31m-1. Click **Repository** on the Menu bar and click **Repository settings** in the list.[m
[31m-[m
[31m-![](./images/20200610-github-repo-setting.png)[m
[31m-[m
[31m-2. Select **Remote** and enter **https://github.com/treehouses/remote.git** as the URL and click **Save**.[m
[31m-[m
[31m-![](./images/20200610-remote-link.png)[m
[31m-[m
[31m----[m
[31m-[m
[31m-## Importing the project in Android Studio[m
[31m-[m
[31m-1\. Open Android Studio[m
[31m- [m
[31m-![](./images/20200610-android-studio-start.png)[m
[31m-[m
[31m-2\. Click **Import Project (Gradle, Eclipse ADT, etc.)**[m
[31m-[m
[31m-3\. Navigate to where the GitHub Desktop stored the remote repository locally. By default its in the `GitHub\remote` directory inside your Documents folder. Select the remote folder with Android icon and click **OK**[m
[31m- [m
[31m-![](./images/20200610-android-studio-import.png)[m
[31m- [m
[31m----[m
[31m-[m
[31m-## Making Changes and Pull Requests[m
[31m-[m
[31m-1\. By Default you would be on the Master branch, so you should make a new branch to make your changes. Give it a name and click **New Branch**[m
[31m-[m
[31m-![](./images/20200610-branch.png)[m
[31m-[m
[31m-2\. Click **Create branch**[m
[31m-[m
[31m-![](./images/20200610-branch2.png)[m
[31m-[m
[31m-3\. Your Android Studio project will automatically be switched to this new branch. Make the changes and when you come back they will automatically be detected by GitHub Desktop. Give your commit a description and click **Commit to "your branch name"**[m
[31m-[m
[31m-![](./images/20200610-commit.png)[m
[31m-[m
[31m-4\. Click **Publish Branch**[m
[31m-[m
[31m-![](./images/20200610-publish.png)[m
[31m-[m
[31m-5\. Click **Create Pull Request**[m
[31m-[m
[31m-![](./images/20200610-create-pr.png)[m
[31m-[m
[31m-6\. It will open it on a browser where you can complete the Pull Request[m
[31m-[m
[31m----[m
[31m-[m
[31m-## Testing Pull Requests of Others:[m
[31m-1. Select the Pull Request you want to test in GitHub Desktop. Click on it and wait for it to fetch that branch. Once it is done, Android Studio will automatically be configured to work on that branch and you can build/run the code to test the pull request.[m
[31m- [m
[31m-![](./images/20200610-pr.png)[m
[31m-[m
[31m-[m
[31m----[m
[32m+[m[32m# How To Setup Github to work with Android Studio on a Windows Machine[m[41m [m
[32m+[m
[32m+[m[32mCreated on 10, June 2020 • [ali18997](https://github.com/ali18997)[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32mThis blog is about how to setup [GitHub](https://github.com/) while working on [Android Studio](https://en.wikipedia.org/wiki/Android_Studio) for the [treehouses remote](https://github.com/treehouses/remote) repository using a Windows Machine.[m
[32m+[m[32mTo follow the steps here you should have Android Studio setup properly as per the [How To Setup Android Studio](./20200110-androidstudiosetup.md) blog post.[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Download GitHub Desktop App[m[41m [m
[32m+[m
[32m+[m[32m1. GitHub Desktop is available for the Windows platform. **Download** it [here](https://desktop.github.com/)[m
[32m+[m
[32m+[m[32m2. Install GitHub Desktop by running the installer and wait for it to finish installation[m
[32m+[m
[32m+[m[32m3. Click **Sign into Github.com** on the welcome screen and sign in with your GitHub account[m
[32m+[m
[32m+[m[32m![](./images/20200610-github-welcome.png)[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Setting up the treehouses remote repository[m[41m  [m
[32m+[m
[32m+[m[32m1. Click **Repository** on the Menu bar and click **Repository settings** in the list.[m
[32m+[m
[32m+[m[32m![](./images/20200610-github-repo-setting.png)[m
[32m+[m
[32m+[m[32m2. Select **Remote** and enter **https://github.com/treehouses/remote.git** as the URL and click **Save**.[m
[32m+[m
[32m+[m[32m![](./images/20200610-remote-link.png)[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Importing the project in Android Studio[m
[32m+[m
[32m+[m[32m1\. Open Android Studio[m
[32m+[m[41m [m
[32m+[m[32m![](./images/20200610-android-studio-start.png)[m
[32m+[m
[32m+[m[32m2\. Click **Import Project (Gradle, Eclipse ADT, etc.)**[m
[32m+[m
[32m+[m[32m3\. Navigate to where the GitHub Desktop stored the remote repository locally. By default its in the `GitHub\remote` directory inside your Documents folder. Select the remote folder with Android icon and click **OK**[m
[32m+[m[41m [m
[32m+[m[32m![](./images/20200610-android-studio-import.png)[m
[32m+[m[41m [m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Making Changes and Pull Requests[m
[32m+[m
[32m+[m[32m1\. By Default you would be on the Master branch, so you should make a new branch to make your changes. Give it a name and click **New Branch**[m
[32m+[m
[32m+[m[32m![](./images/20200610-branch.png)[m
[32m+[m
[32m+[m[32m2\. Click **Create branch**[m
[32m+[m
[32m+[m[32m![](./images/20200610-branch2.png)[m
[32m+[m
[32m+[m[32m3\. Your Android Studio project will automatically be switched to this new branch. Make the changes and when you come back they will automatically be detected by GitHub Desktop. Give your commit a description and click **Commit to "your branch name"**[m
[32m+[m
[32m+[m[32m![](./images/20200610-commit.png)[m
[32m+[m
[32m+[m[32m4\. Click **Publish Branch**[m
[32m+[m
[32m+[m[32m![](./images/20200610-publish.png)[m
[32m+[m
[32m+[m[32m5\. Click **Create Pull Request**[m
[32m+[m
[32m+[m[32m![](./images/20200610-create-pr.png)[m
[32m+[m
[32m+[m[32m6\. It will open it on a browser where you can complete the Pull Request[m
[32m+[m
[32m+[m[32m---[m
[32m+[m
[32m+[m[32m## Testing Pull Requests of Others:[m
[32m+[m[32m1. Select the Pull Request you want to test in GitHub Desktop. Click on it and wait for it to fetch that branch. Once it is done, Android Studio will automatically be configured to work on that branch and you can build/run the code to test the pull request.[m
[32m+[m[41m [m
[32m+[m[32m![](./images/20200610-pr.png)[m
[32m+[m
[32m+[m
[32m+[m[32m---[m
