# How to handle aspiring interns

02, December 2019 • [pattanawadee88](https://github.com/pattanawadee88)

---

This blog is about how to work with aspiring interns. Your jobs are 
* Check Gitter chat as much as you can
* Welcome all new aspiring intern 
* Reviewing issues and pull requests in [treehouses.github.io](https://github.com/treehouses/treehouses.github.io)
* Merging pull requests
* Answer all the questions when they have problems (they might send you a private message so please regularly check your Gitter  )

## How to welcome all new aspiring intern
If you see new aspiring interns send a message `@/all Hello Team my name is .... I'd like to become a virtual intern. What is the next step?`, you need to welcome them and send `https://treehouses.io/#!./pages/vi/sshpi.md` to them. To they can start working on the First Steps. 

## How to review Pull Requests and Issues
One of your responsibilities as an intern is to review and help aspiring interns with their issues and pull requests on [treehouses.github.io](https://github.com/treehouses/treehouses.github.io) 
So, it would be very important to understand how to review pull requests.

1. **Check branches:** the aspiring interns should create a new branch every time when they start working on a new issue (one issue per one pull request)

    `Warning: they should not work on their master branch!`

1. **Review files:** you can comment, approve, and request changes in the 'Files Changed'. For this step, you should take your time to review a file. Do not rush :)
1. **Check the raw.githack link:** the raw.githack link is very important for us for reviewing interns' works. It should be in this pattern `https://raw.githack.com/YourUserName/YourUserName.github.io/YourBranchName/#!pages/vi/profiles/YourUserName.md`. 

Every time you comment on an issue or review a pull request, message those involved on the Gitter chat with a link to the issue / pull request. For example: 
```
@username_of_intern please see my comments (URL link of the issue or pull request)
```
Also, if you find any issue that must be addressed with a pull request, do not forget to use the Request changes option when starting your review.

## How to merge Pull Requests
The pull request can be merged if at least two other people have approved the pull request and there are no more changes requested by another intern.

1. **Select squash and merge**
1. **Delete all the commit messages:** It is very crucial to delete all the commit messages. `You must not forget this step!`
1. **Check title:** In the title of pull requests must included a keyword to automatically close the issue, for example, `(fix #issue number)` or `(fixes #issue number)`. [READ MORE ABOUT CLOSING ISSUES USING KEYWORDS](https://help.github.com/en/github/managing-your-work-on-github/closing-issues-using-keywords) 
    * if you accidently merged PRs which not included closing keywords, you need to manually close the issue and link it to the original pull request.
    * title needs to be lowercase letter `we do not want uppercase letters in the title of PRs`
    
Every time you merge the pull requests, please send a message to the interns on the Gitter chat with a link to the issue and merged link. For example:

```
@username_of_intern please look at (URL link of the issue) and (URL link of the merged link)
```

## Working Routine
We recommend you follow this basic daily routine:

1. [Check gitter chat](https://gitter.im/treehouses/Lobby)
1. Review any issues or pull requests that have been added or changed on [treehouses.github.io](https://github.com/treehouses/treehouses.github.io) since last time you reviewed.
1. Make pull requests as early as possible so you can get feedback as you work.
1. Join the Google hangout session at [http://talk.ole.org]( http://talk.ole.org). At the Hangout meeting, we will discuss about our projects. If you have any questions, you can also ask the team at the meeting. For Treehouses meeting, we have three sessions which are...

* Happy Hacking Hangout on Monday
* Raspberry Pi Hangout on Wednesday
* Secret Hacking Hangout on Friday. 

**NOTE**:
• if you are not be able to join the hangout, please left a message to Dogi. 
• Before leaving the hangout, you need to do check out with Dogi.
• Share you screen every time 

## Active System Teams Projects
### [cli](https://github.com/treehouses/cli): 
cli is Command-Line Interface for the treehouses system image, it allows different commands to be entered in the Raspberry Pi terminal. 
For example, 
```
root@treehouses:~# treehouses help
```
`treehouses help` is a command that gives you a more detailed info about the command or will output this

### [builder](https://github.com/treehouses/builder)
builder is a repository that contains scripts of the latest Raspbian image by installing packages, purging packages and executing custom commands, and then finally creates a bootable .img file that can be burned to the microSD card.

For this project, you have to work with [Travis](https://travis-ci.org/treehouses?utm_medium=notification&utm_source=github_status). You can learn more abut Travis [HERE](https://docs.travis-ci.com/user/for-beginners/)
