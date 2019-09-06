# Adding a New Feature

Aug 31, 2019 • [irisb1701](https://github.com/irisb1701)

---

As a system's engineer you may need to work with the treehouses cli (command line interface). 

Here are step by step instructions on how to create a new feature for treehouses.

## Determining a New Feature:

Example situation:
As you're testing the new image for treehouses you notice your raspberry pi is getting hot. You know anything past 85°C may damage your pi so you'd like to monitor its core temperature.

You already know the raspberry pi command `vcgencmd measure_temp` will return its core temperature in celsius.

Looking at the treehouses cli commands, you notice there aren't any commands involving detecting temperature and decide it would be a useful addition.

Now that you have an idea for a new command, you will create a new issue and when approved, can create a new branch and begin working on it.


## Step 0 - Vim

Vim is an easy way to test your code. Here are instructions on how to use it.

1. Download Vim  (or type `brew install vim` in your terminal)
1. Create a new file `vim newfile`
1. ![](../../images/vim_file.png)
1. The new file will automatically open, now press i on your keyboard to edit it
1. Include `#!/bin/bash` at the top
1. Copy the above script and press `:wq` to save it and exit
1. Now enter the command `chmod 755 newfile` so you can run it
1. Enter `./newfile`
1. You should now see what the function returns. This is how you can easily test your functions
1. ![](../../images/vim_commands.png)


## Step 1: Creating your new Command
Your function can be as simple as just calling the `vcgencmd measure_temp` command, however this command will return something like "temp=60.00'C".
You may want to modify it.

1. Your first line will define a function which we will call temperature
1. Inside the function we will call `vcgencmd measure_temp` by simply writing in the command
1. ![](../../images/vgenc.png)
1. This can be the end of the function, however we want to modify what is returned
    1. First lets put the `vcgencmd measure_temp` command in a variable and call it "reading" so we can refer to it: `reading=$(vcgencmd measure_temp)`
    1. Lets make a new variable called number0 referring `reading` to remove "temp=": `number0=${reading:5}`
    1. Now let's make a third variable callled number which refers to number0 to remove `'C`: `number=${number0/%??/}`
    1. Now if we echo $number we will get the pure number.
    1. We're going to finish the function by using `echo $number"°C"`
    1. This returns our desired output which may look something like 65.34°C
    1. ![](../../images/no_case.png)

## Step 2: Subcommands
Additionally you may want to add subcommands to return different temperature scales such as Fahrenheit or Kelvin.
For example `treehouses temperature` will return the temperature in a default setting, but `treehouses temperature fahrenheit` will return it in Fahrenheit. The command `fahrenheit` is your subcommand.

Shown below is how to create subcommands using cases

![](../../images/case.png)

For convenience, the function above does not actually convert celsius to fahrenheit or kelvin, just displays a short message. However two new subcommands have just been added.
Now instead of your command being just `treehouses temperature` it can now also be `treehouses temperature fahrenheit` or `treehouses temperature kelvin`


## Step 3:  The 4 Files That Must Be Added/Modified in the Cli Repo

You will now add/modify these 4 files to your branch of the cli repo. Remember to only make changes to your own branch and make sure you are on it before pushing these changes.

1. **README.md**: First you will include your command in the README.md file in the cli Repo
    1. Place the new command either at the end of the list or near commands it is similar to
    1. Copy the structure of the previous commands and include a description
    1. In brackets [] place any optional subcommands divided by a pipe |
    1. In angled brackets <> place mandatory subcommands
        1. A mandatory subcommand for example would be <on|off>, for some commands one or the other must be selected
        1. An optional subcommand would be, like in this case, choosing to see the temperature in Fahrenheit or Kelvin which you don't necessarily have to do to run the command
        1. It should look like this: `echo "  temperature [fahrenheit|kelvin]     displays raspberry pi's CPU temperature"`

1. **help.sh**: Now go into cli/modules and modify the help.sh file in the exact same way you modified the README.md file

1. **cli.sh**: Next you will modify the cli.sh file
    In this file you will include two entries, a filepath and a case that calls the command. Place your new entries here in the same spots you placed it in the README.md

    1. For the filepath, your new entry will look like this `source "$SCRIPTFOLDER/modules/temperature.sh"`
    1. Below you will see cases.
        1. Copy the format of the other cases to create a new one for temperature
        1. Inside you will include `temperature "$2"` ($0 is `treehouses`, $1 is `temperature` and "$2" is for our subcommands.)
            Without this, your command will not run when you call it.
        1. If your command is affected by a condition then you will include a second entry.
           We want to include `checkrpi` inside right above `temperature "$2"`. Checkrpi detects if our command is being used with a raspberry pi or a non-raspberry pi environment (vagrant for example).
           Since our command is specifically related to the Pi, this condition ensures that the user will see a message saying it cannot be run if attempted with a nonrpi environment.
        1. Your entry will look like this:
        ![](../../images/cli_addition.png)


1. **Modules**: Lastly you will add your temperature.sh file into the modules folder. This is the file that has the source code for your new feature.
    1. Inside the file you will make sure you have a second function called function temperature_help
    1. Each command has a help function that when called will display a description of the command and show examples of its usage.
    1. Using a different command's help function as a template you can easily create one for your own command
    1. Your final temperature.sh file should look like this:
    ![](../../images/temp_function.png)
    ![](../../images/temp_help.png)

Now go ahead and push all the changes you've made to your branch on Github.

## Step 4: Testing Your Command

  1. Now get your Pi running.
  1. Once you are connected to treehouses in your terminal, git clone the cli repo using `git clone https://github.com/treehouses/cli.git`
  1. Make cli your current directory using `cd cli`
  1. Now go to your branch using `git checkout <whatever you named your branch>`
  1. Enter `git branch` for safe measure to see that you really are on your branch
  1. Now you can test out your new command and subcommands: `treehouses temperature`, `treehouses temperature fahrenheit`, and `treehouses temperature kelvin`
  1. You may have to use `./cli.sh` instead of `treehouses` until your branch is approved: `./cli.sh temperature`
  1. If your command didn't work the way you intended it to, you can always fix your files
  1. Cd into cli/modules using `cd modules` and open your desired file using vim: for example `vim temperature.sh`
  1. You can now modify your file by pressing `i` and exiting by pressing esc then typing `:wq`
  1. Test your file again using `./cli.sh temperature` until it works how you intended it to
  1. Once everything is working perfectly, go ahead and create a pull request

  Congrats! You just created your first feature!
