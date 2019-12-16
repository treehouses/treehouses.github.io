# Virtual Systems Engineering Intern FAQ

## General Internship Questions

- **Q1:** [What will I be working on during this internship?](#Q1:_What_will_I_be_working_on_during_this_internship?)
- **Q2:** [What kind of software will we be using for this internship?](#Q2:_What_kind_of_software_will_we_be_using_for_this_internship?)
- **Q3:** [Where can I find more information about this internship?](#Q3:_Where_can_I_find_more_information_about_this_internship?)
- **Q4:** [What are the hours of the internship?](#Q4:_What_are_the_hours_of_the_internship?)
- **Q5:** [Is this a paid internship?](#Q5:_Is_this_a_paid_internship?)
- **Q6:** [What happens after the initial steps?](#Q6:_What_happens_after_the_initial_steps?)
- **Q7:** [If I'm an international student, how soon can I get my paperwork required by my visa?](#Q7:_If_I'm_an_international_student,_how_soon_can_I_get_my_paperwork_required_by_my_visa?)
- **Q8:** [How many pull requests and issues in total do I need to make to finish the steps?](#Q8:_How_many_pull_requests_and_issues_in_total_do_I_need_to_make_to_finish_the_steps?)
- **Q9:** [How long do I have to complete these steps?](#Q9:_How_long_do_I_have_to_complete_these_steps?)

## Technical Questions

- **Q10:** [What do I do if '&lt;YourUserName&gt;.github.io' is already in use?](#Q10:_What_do_I_do_if_'&lt;YourUserName&gt;.github.io'_is_already_in_use?)
- **Q11:** [What if you encounter *Host key verification fail*?](#Q11:_What_if_you_encounter_Host_key_verification_fail?)
- **Q12:** [Why can't I ssh into my Raspberry Pi after installing a new treehouses image?](#Q12:_Why_can't_I_ssh_into_my_Raspberry_Pi_after_installing_a_new_treehouses_image?)

---

### General Internship Questions

#### Q1: What will I be working on during this internship?

+ Virtual systems engineering interns will be helping develop OLE’s treehouses system. Treehouses allows us to share our different learning platforms via the Rasperry Pi series of single-board computer devices.

#### Q2: What kind of software will we be using for this internship?

+ As a part of this internship, you will be working with software, languages, and hardware including  Git, GitHub, Markdown, Vagrant, VirtualBox, Command Line/Terminal, Command Line/Terminal Scripts, Vim, CouchDB, Docker, and Raspberry Pis.

#### Q3: Where can I find more information about this internship?

+ More information about the internship can be found at the Virtual Software Engineer Intern listing [here](https://www.indeed.com/cmp/Open-Learning-Exchange,-Inc./jobs).

#### Q4: What are the hours of the internship?

+ This is an intensive internship that requires 16 hours of work each week. Work with your fellow interns and keep us updated in the [Gitter chat](https://gitter.im/open-learning-exchange/treehouses/Lobby).
+ The reason we have a 16 hour minimal commitment per week is that things are moving forward quickly and it might be hard for virtual interns to catch up with changes. Basically, we would have a few hours of Google Hangout sessions per week where everyone shares their screen, discusses problems, and works on issues together. Then the rest of the time is for catching up with the changes and working on issues assigned.

#### Q5: Is this a paid internship?

+ This position is unpaid, but it will provide a diverse range of experiences in the workplace. We can provide a certificate of completion, upon request. Also, academic credit can be provided through your institution (if applicable).

#### Q6: What happens after the initial steps?

+ The initial steps are meant to introduce potential interns to the Treehouses system and begin assigning you assignments! To be more clear: the initial 10 steps are a vetting process to determine whether or not people are fit for the internship, so consider it an interview for the internship. Once you have completed the 10 steps and are approved, you have officially joined the OLE interns team! We’ll add you to the interns Gitter chatroom and assign you to a team. You and your team will be working on an assignment, and we’ll switch up the assignments each week.

#### Q7: If I'm an international student, how soon can I get my paperwork required by my visa?

+ Since the first 10 steps are a vetting process, your internship technically doesn't start until you finish them. Think of the first 10 steps as a continued application process; you are not working on or adding to our organizational software, but rather showing that you have enough technical background to work with us. After you finish the first 10 steps, let us know if you need us to sign some paperwork, give you organizational information, or provide you with an offer letter for your visa compliance and we'd be more than happy to help.

#### Q8: How many pull requests and issues in total do I need to make to finish the steps?

+ To finish the initial steps, you need to make a **minimum** of 4 issues and 5 pull requests so you can get familiar with GitHub and to show us that you can write proper issues/PRs.

#### Q9: How long do I have to complete these steps?

+ There is no official deadline, so work on your own time. However, please note that most people who continued into the internship program completed the steps within 7-8 days.

### Technical Questions

#### Q10: What do I do if '&lt;YourUserName&gt;.github.io' is already in use?

+ Create an organization and use it to fork the repository:
    - Click on the '+' icon next to your account icon (top right corner in github) and select 'New organization'.
    - Name the organization '&lt;YourUserName&gt;-OLE', select 'My personal account', choose the 'Team For Open Source' option, and enter your email address to create the account.
    - Now it will prompt you for which profile to use when you fork the [treehouses repository](https://github.com/treehouses/treehouses.github.io).

#### Q11: What if you encounter Host key verification fail?
+ You encountered this error because the host key has been changed due to new installation of the raspberry pi or your host key has been changed.
+ To fix the issue, You can try the following methods:
    - remove `known_hosts` file with `rm ~/.ssh/known_hosts`
    - avoid checking for host keys with `ssh -o StrictHostKeyChecking=no <user>@<host>`
    - remove the exact key line of the offending host by looking in the output for `Offending key in /home/peter/.ssh/known_hosts:<linenumber>` and then with `sed -i <linenumber>d ~/.ssh/known_hosts` remove this exact line

#### Q12: Why can't I ssh into my Raspberry Pi after installing a new treehouses image?

+ If you run into this error you will see a message like " WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!" when you try to ssh into your Raspberry Pi after installing a new treehouses image onto it. Thankfully this is an easy fix
+ To fix this tpye the command `cd` on your local machine. Then `cd .ssh`. Open the `known_hosts` file by typing `vim known_hosts`. Inside of this file you need to find your Raspberry Pi's ip address and delete that line since that is old known host for the previous treehouses image. Save the file. Now you should be able to ssh into your Raspberry Pi wihtout an issue.

---

## Helpful Links

#### *GitHub and Markdown*


* General
    - [GitHub and Markdown Short Tutorials](https://guides.github.com/)
    - [GitHub Help](https://help.github.com/en/categories/github-pages-basics)
    - [Git Cheat Sheet (PDF)](https://education.github.com/git-cheat-sheet-education.pdf)

* First Steps
    - [GitHub's Git Tutorial](https://try.github.io/)
    - [Git-it Workshop](http://jlord.us/git-it/)
    - [Codecademy's Learn Git Course](https://www.codecademy.com/learn/learn-git)

* Intermediate
    - [Git Immersion](http://gitimmersion.com/)

* Reference/Advanced
    - [Git Pro (Book)](https://git-scm.com/book/en/v2)
    - [GitHub Tips](https://github.com/git-tips/tips/blob/master/README.md)
    - [Oh, sh*t, Git](http://ohshitgit.com/)

* Git Workflow
    - [Git Workflow - High Level](https://www.atlassian.com/git/tutorials/comparing-workflows)
    - [Git Workflow - High Level, Short](https://git-scm.com/book/en/v2/Git-Branching-Branching-Workflows)
    - [Feature Branch Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/feature-branch-workflow)

* Markdown
    - [Markdown Syntax](https://daringfireball.net/projects/markdown/syntax)
    - [Markdown Cheat Sheet (PDF)](https://enterprise.github.com/downloads/en/markdown-cheatsheet.pdf)
    - [Markdown Editor](https://jbt.github.io/markdown-editor/)


## Helpful Videos

- [GitHub & Git Foundations (Playlist)](https://www.youtube.com/watch?list=PLg7s6cbtAD15G8lNyoaYDuKZSKyJrgwB-&v=FyfwLX4HAxM)
- [Shorter Git/GitHub Tutorial (Playlist)](https://www.youtube.com/watch?v=vR-y_2zWrIE&list=PLWKjhJtqVAbkFiqHnNaxpOPhh9tSWMXIF)
- [Mastering Markdown (Playlist)](https://www.youtube.com/watch?v=Je5w18nn-e8&list=PLu8EoSxDXHP7v7K5nZSMo9XWidbJ_Bns3)
- [How to Manually Fix Git Merge Conflicts](https://www.youtube.com/watch?v=g8BRcB9NLp4) - Please note that this video will explain how to fix a merge conflict from the point of view of the repo owner who is trying to merge a pull request. However, it is helpful also when you have to fix a merge conflict on your own local and forked repos.
- [How to Use VirtualBox](https://www.youtube.com/watch?v=Dbblu_HVROk)
- [Vagrant Tutorial](https://www.youtube.com/watch?v=PmOMc4zfCSw)

