# Planet Tutorial

## Objectives

* Understand how Planet interface is structured
* Understand basic functions of community Planet
* Add resources to your Community in order to get accustomed to the Planet interface

## Preparation
Please go to http://localhost:3100 or run `vagrant global-status` in the command line to see if your community Planet is currently running. If not, please `cd` into `planet` directory in your local machine and run `vagrant up prod`.

Do not forget to send the screenshot of your Planet community configurations ([from the earlier step when you registered your configurations](vi-configurations-vagrant.md)) to our chat. In case you forgot to take the screenshot of your configurations, login to Planet, click on manager settings (top bar person with gear icon), click on the configuration button, take a screenshot of the page, and send it to the Gitter chat.

![Clicking on "Manager"](images/edit-vi-nation-manager.png "Dashboard in your localhost")

## Watch Videos

Watch the videos below to learn the basic functions of your Planet. These videos were created a few years ago, on old system BeLL but they should do a decent job of introducing you to the Planet.

[My Dashboard](movies/vi-mydashboard.mp4)
[Library](movies/vi-library.mp4)
[Feedback](movies/vi-feedback.mp4)
[Generating Activity Reports](movies/vi-generatingactivityreports.mp4)

We suggest you play around a bit, try to explore and feel comfortable with Planet.

## Upload Resources

In this section, we will practice uploading resources to the Planet. Although there are several kinds of resources, the majority of them are PDFs, mp3s, and mp4s.

Here are three types of resources that you can download to your computer and then upload to your Planet. Right-click on each one of these links and save them to your computer.

[PDF - "Feelings"](pdf/vi-feelings.pdf)
[mp3 song - "Opposite Song"](music/vi-oppositesong.mp3)
[mp4 video - "Burka Avenger"](movies/vi-burkaavenger.mp4)

Next, go to [your community Planet](http://localhost:3100). Select `Library` from the dashboard, then select `+` icon. You will see:

![Upload resource screenshot](images/vi-add-new-resource.png)

Fill out the information:

1. Fill in all of the text boxes and drop-down menus (As this is just practice, accuracy of information is not important)
2. Be sure to **upload** one of the `PDF - "Feelings"`, `mp3 song - "Opposite Song"`, or `mp4 video - "Burka Avenger"` files.
3. Next, click on Submit. You have now uploaded the resource.
4. Find the resources in `Library`, and make sure that you can open it.
5. Repeat this until all three files have been uploaded as resources.

## Different Kinds of Updates to Your Community

There are three important kinds of updates that you may receive on the community side: upgrades, resources/courses and sync. Go to your Manager page and search for the buttons highlighted in the picture below. You may not see the `Fetch Items` button if nation has not sent anything to the community. If you do not see the other two highlighted buttons, post a message to the Gitter Chat channel to get help.

As you can see from the image below, there is an upgrade ready to be downloaded. Usually, next to the upgrade, you should also see publication(s) (we send to you from the nation) ready to be downloaded.

![Update from the nation](images/vi-planet-upgrade.png "Manager Dashboard in your localhost")
![Start to Upgrade](images/vi-start-upgrade.png "Start Upgrade")

![Fetch Items from the nation](images/vi-planet-fetch-items.png "Manager Dashboard in your localhost")

1. Click the `Upgrade` button on Manager page and it will take you to upgrade page. An upgrade refers to a software update which improves the Planet (Note: If you do not see `Upgrade` button then simply carry on). It will then ask you for verification.
2. After the upgrade is complete, undergo `vagrant halt prod` and `vagrant up prod` to restart planet.
3. If `Fetch Items` is available on the Manager page, click on it and download the courses offered (3rd picture).
4. Finally, send an activities sync to the nation using `Manage Sync`.

**NOTE**:  
• If there is an "internet connection" error when you click the "Upgrade" button, please repeat the step.  
• If new updates are not reflected, use `Command+Shift+R` or `Control+Shift+R` to clear cache and refresh.

## Take the Course

We created a course for aspiring virtual interns so that we could test the software used to build courses and find bugs/things to improve. It is your job to take the course and find out what needs to be fixed/improved from the student standpoint.

Take the course, and the last question will ask you to specify any problems or improvements/suggestions that you have. Remember, people taking these courses in remote areas of the world will probably run into the same problems if you do not raise them now and let the team know. This is a very important task, and your help is much appreciated.

**STEPS:**

1. Click on `Courses` on the top navigation
2. Find the course "Virtual Interns", select checkbox next to course and then click on `Join`
3. Click on Course to `Open`
4. Carefully finish all steps of the course

  ![Finished Planet Course](images/vi-planet-course.jpg)

5. To verify that your course answers were submitted, click on `Home`, then on `Submissions`

  ![Submissions button](images/vi-planet-submissions-button.png)
  ![View Submissions](images/vi-planet-submissions.png)

6. When you provide feedback, try to be as specific as possible, and include screenshots when necessary

![Take the Course](images/vi-take-the-course.png)
![Course Overview](images/vi-course-view.png)

If the course "Virtual Interns" is not there, check `Manage Sync` of manager settings page to see if your synchronization has been completed. Otherwise please message us and "@" an admin in the Gitter chat so we can send you the course manually.

## Useful Links

[Helpful links and videos](vi-faq.md#Helpful_Links)

## Next Section _(Step 5)_ **→**

In the next step, you will learn more about how our Git repositories work, and how to sync your own repository to keep up-to-date.

#### Return to [First Steps](vi-first-steps.md#Step_4_-_Planet_Tutorial)
