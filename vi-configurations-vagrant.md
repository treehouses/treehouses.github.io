# Planet Configurations

## Objectives

* Learn about Planet and the difference between Nations and Communities
* Use Vagrant to create a local Planet Community
* Register your Community and sync it with the Nation

## Introduction

The Planet is not only a library, but also an individualized learning system, where students can select their own books and courses to target their individual goals. The two kinds of Planet apps are described below.

#### Planet Communities (Local)

* Communities are how the Planet functions on a local network, with users connecting to a community using either a laptop or a RPi and a router.
* Periodically communities sync with Nations on the internet, which includes sending and receiving educational materials.
* In step 1 you created a Planet community on your computer. As you follow the steps on this page, you will access and configure your community.

#### Planet Nations (Internet)

* Nations are Planet apps for the Internet, allowing communities to interact with each other.
* Nations are connected to many communities, and can run reports on any communities it owns.
* As you complete these instructions, an OLE administrator will complete the registration of your community with the Virtual Intern Nation.

## macOS and Ubuntu

Please go to [http://localhost:3100](http://localhost:3100) or run `vagrant global-status` in the command line to see if your community Planet is currently running. If not, please `cd` into `planet` directory in your local machine and run `vagrant up prod`. Make sure to have the correct port number(3100), or else it will not work. 

## Windows

Open browser and browse [http://localhost:3100](http://localhost:3100). You should see the user interface of application (see below).  If you get an `Unable to connect` page, check out Q13 at [FAQ](vi-faq.md#Technical_Questions).

## Database
[CouchDB](https://en.wikipedia.org/wiki/CouchDB) (also known as Apache CouchDB) is a database software that we use for the Planet. You can see the backend interface of our CouchDB at http://localhost:2300/_utils. In _utils, you have the opportunity to see all data of your Planet application.

## User Interface
To see the actual user interface, go to http://localhost:3100.
You will be shown the page below. Make sure you remember the credentials.

![Become an Administrator](images/vi-become-admin.png)

WARNING: Before you finish the registration, do not close your browser.
You cannot go to the above registration form again.
If you are in this situation, look at the ** [Second element of Troubleshooting in this page](#Troubleshooting)** 

Next, fill out the configurations. Your name must be the same and should match your Github name so we can easily locate your community in Virtual Intern Nation. Pick **Virtual Intern Nation (vi)** for nation as in the example below. **After filling out your configurations, remember to save a screenshot of the configuration page so that you can post it on the [Gitter chat](https://gitter.im/open-learning-exchange/chat) after submitting your registration request.**

![Configurations](images/vi-configuration.png)

**Note:** *To add images in the chat, just drag the image from your directory to the browser context and drop it in the messaging area or simply copy and paste the image.*

Next, you will see a form that requires the contact details of the administrator (maintainer) of the community. Please provide your contact information.

![Contact Details](images/vi-contact-details.png)

Then, click on the **"Submit"** button. Your registration request for your community will be sent to the nation side for approval. You will see the following message.

![Community Accepted into the Nation](images/vi-registration-accepted.png)

Now you can login with the admin credential you created.

Then, post to the [Gitter chat](https://gitter.im/open-learning-exchange/chat) the screenshot you took earlier.

## Troubleshooting

1. When trying to access http://localhost:3100 you may experience an error such as the following: "no_db_found". A simple solution will be using ```vagrant halt prod``` ```vagrant destroy prod``` to delete the current machine, then try ```vagrant up prod``` to rebuild it.

2. If you accidentally delete your Planet admin account, creating a new learner account on the login page will cause problems in later steps. The best way to solve this problem is to start over and create a new community. 
Run
```
vagrant halt prod
vagrant destroy -f prod
rm -rf .vagrant
git pull
vagrant up prod
```
in your planet folder. This destroys and removes your community, pulls the latest code, and starts a community from scratch.

3. In the case that you use the command `vagrant destroy prod`, your community Planet would be wiped together with the virtual machine, but  community registration would still exist on the nation side. After rebuilding your community Planet using `vagrant up prod`, fill out the configurations again with a slightly different Name (e.g. adding a number or letter to the end of your original GitHub username) so that we can still locate your community on the Nation side. Also, remember to take a screenshot of the new configuration page and post it to the [Gitter chat](https://gitter.im/open-learning-exchange/chat).

4. There is a chance upon having your account approved that the website does not recognize you as registered. You will be stuck infinitely loading and upon refresh, the page will be blank.

![Not recognized](https://user-images.githubusercontent.com/22685147/58755806-bb6fe700-84b9-11e9-8a27-d3e3ab56ffba.png)

![Blank](https://user-images.githubusercontent.com/22685147/58755807-be6ad780-84b9-11e9-86b5-c745f584ac41.png)

In order to fix this problem, simply follow the procedures stated above in bullet 3: use `vagrant destroy prod`, then `vagrant up prod`. Afterwards, use a slightly different name for your configuration, take a screenshot of the new configuration page, and post it to the [Gitter chat](https://gitter.im/open-learning-exchange/chat).

5. When you are trying to access http://localhost:3100 the page may not load at all, even if your account was configured correctly and fully approved. A first step would be to run `vagrant halt prod`. Then, you should proceed to clear the cookies from your browser. This step will be different for each browser. Finally, you should run `vagrant up prod` to restart the VM before you reopen the browser to access the Planet again. **If this does not work, follow the previous steps above to rebuild your planet account.**

## Next Section (Step 1.3) **→**

Now you have configured your community Planet, head over to [Vagrant Tutorial](vi-vagrant.md) to learn about how to interact with Vagrant through the command-line interface. You should be familiar with this since you will need to use it to control virtual machines during your internship.

#### Return to [First Steps](vi-first-steps.md#Step_1_-_Planet_and_Vagrant)
