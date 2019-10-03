# Reviewing PRs on the CLI repository

30, September 2019 • [Xavierh93](https://github.com/xavierh93)[vmnet8](https://github.com/vmnet8)

---

As a system's engineer you may need to work with the [treehouses cli](https://github.com/treehouses/cli) (command line interface). 

Here are step by step instructions on how to review Pull Resquests (PR) for the Treehouses/CLI repository.

## Step 1: Check the pull request title and description

Make sure the issue number that the pull request is fixing is in the pull request title. An example is shown below.

![](images/20190930-prtitle.png)


## Step 2: Verify that there is a branch for the pull request

 The pull request should have its own branch for the issue fix. You can find which branch the pull request is on right beneath the title of the pull request in the blue box.

![](images/20190930-branchpr.png)

## Step 3: There are no unnecessary file/line changes in the pull request

Click on the files changed tab beneath the branch in the previous step. On this page you can see all the changes that have been made in this pull request including all the files that were changed and every line that was added or removed from each file. Green lines indicate lines that were added while red lines indicate which lines were removed. Directly above the green "Review Changes" box is a green number that indicates how many lines were added followed by a red number that indicates how many lines were removed in total in the pull request.

![](images/20190930-fileschanged.png)

_**NOTE:**_ You can change from a unfied view to a split view by clicking the gear icon located beneath the *Files Changed* tab.

## Step 4: There are no merge conflicts

If you scroll down on the main conversation page, beneath the *Review Required* there will be a Box that lets you know if there are any merge conflicts and if there is, a list of the conflicting files.

![](images/20190930-mergeconflicts.png)


## Step 5: The pull request fixes the issue

Before you can submit your review of the pull request you must verify that it is actually fixing the issue it refers to in the title. If it is a new feature that is being added you will have to test the feature on your raspberry pi. In order to do this you will need to ssh into your raspberry pi and switch to the branch that the feature is added on via `git checkout <branchname>`.

## Step 6: The commits are associated with a Github Account

Click on the *Commits* tab. This will  display all the commits for this pull request. You will need to verify that all commits were made by the same Github account.

![](images/20190930-commits.png)

<<<<<<< HEAD
## Step 7: Test the cli code
The next step is testing the code to make sure it works as expected. For example, we will test the command `bluetoothid` below.  
The first thing you can check is that all checks have passed on the Github PR page. If all the checks have passed it means the code passed the travis and codeclimate test.If it shows pending or failed, the developer who pushed the PR will have to fix it before you can continue to test the code.

![](images/20191002-check_travis.jpg) 

**Testing the code**

1.  Log into your raspberry Pi via SSH

2.  If you dont already have the cli repository cloned to your rPi you will need to do so now. Clone the repo  by typing
  `git clone https://github.com/treehouses/cli.git`
  You can also clone the repository via the SSH option.

3. Switch to the branch 
   `git checkout bluetoothid`
  Check that you are in the correct branch by typing:
   `git branch`
    
4.  Check which treehouses version you are on by typing the command `treehouses version`. You may need to update your treehouses by typing `treehouses upgrade`.

5. Find where the `treehouses` /cli.sh file is.
~~~
pi@pi:~ $ which treehouses
/usr/bin/treehouses
pi@pi:~ $ ls -al `which treehouses`
lrwxrwxrwx 1 root root 42 Sep 27 06:41 /usr/bin/treehouses -> ../lib/node_modules/@treehouses/cli/cli.sh
~~~

6. Execute the cli command:
View the help page of the command to see it's usage:
~~~
root@xavierelon:/home/pi/cli# ./cli.sh help bluetoothid

Usage: cli.sh bluetoothid [number]

Displays Raspberry Pi's Bluetooth Host ID and Number.
Optionally displays Bluetooth ID individually.

Example:
~~~
  cli.sh bluetoothid
      treehouses-9012
  cli.sh bluetoothid number
      9012
~~~

Run the command:
~~~
root@xavierelon:/home/pi/cli#  ./cli.sh bluetoothid
xavierelon-8941
root@xavierelon:/home/pi/cli# treehouses bluetoothid number
8941
~~~

As you can see the `bluetoothid` command works.
     
## Step 8: (Optional) Request Changes

If you find any issue that needs to be addressed with another commit, you can use the `Request Changes` option when creating your review. Make sure to leave a comment about what needs to be addressed in the change. 
=======
## Step 7: test codes
Before giving the comments to the PR, you need to test code whether it works.
for example, we will test the new command `speedtest`.  
first you can check on the github pull request page in the middle, there is a "all checks have passed, it means the code passed the travis and codeclimate test.If it shows pending or failed, you just wait the developer to fix the bug first, then you continue to test the code. 

![](images/20191002-check_travis.jpg) 

1.  go to your local machine,log in your PI.
2.  clone the repo github.com/treehouse/cli in your local machine (using https url is okay, because you don't need to push back to repo)
  `git clone https://github.com/treehouses/cli.git`
3. check which branch does new command speedtest in, then switch to that branch
   `git checkout speedtest`
  
   `git branch`
    please double check you are in the right working branch.
4.  check the PI version
```
     pi@pi:~ $ treehouses version
     1.8.4
```
5. find the `treehouses` is the link file with /cli.sh
```
pi@pi:~ $ which treehouses
/usr/bin/treehouses
pi@pi:~ $ ls -al `which treehouses`
lrwxrwxrwx 1 root root 42 Sep 27 06:41 /usr/bin/treehouses -> ../lib/node_modules/@treehouses/cli/cli.sh
```
     So before the speedtest command be merged and burned in the new image, you can't use `treehouse speedtest` to execute it, you need do like following.
6.  execute cli command:
```
pi@pi:~/git_repo/cli $ ./cli.sh speedtest --help
...............

pi@pi:~/git_repo/cli $ ./cli.sh speedtest --list
...............
20045) Geek Patrol (Durban, South Africa) [17391.77 km]
1714) iSPACE (Durban, South Africa) [17391.77 km]
...............
pi@pi:~/git_repo/cli $ ./cli.sh speedtest --server 20045
Retrieving speedtest.net configuration...
Retrieving speedtest.net server list...
Retrieving information for the selected server...
Hosted by Geek Patrol (Durban) [17391.77 km]: 442.538 ms
Testing download speed................................................................................
Download: 38.72 Mbit/s
Testing upload speed......................................................................................................
Upload: 2.24 Mbit/s 
```
   It shows the speedtest works well.
     
## Step 8: (Optional) Request Changes

If you find any issue that needs to be addressed with another commit, you can use the `Request Changes` option when creating your review. Make sure to leave a comment about what needs to be addressed in the change. 
>>>>>>> 6f494ae1643f003e40cffcda3acfe107f1c3b839

![](images/20190930-requestchanges.png)

## Step 8: Submit Review

If everything in the pull requests checks out submit your review and leave a comment for feedback. Make sure you click the `Approve` radio box when submitting.

![](images/20190930-approve.png)
