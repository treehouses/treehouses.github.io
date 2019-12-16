# How To Help Aspiring Virtual Interns

04, December 2019 • [pattanawadee88](https://github.com/pattanawadee88)

---

This blog is about how to help aspiring interns complete the First Steps.

As an intern, your job is to look in the Gitter chat for:
• New aspiring virtual interns in the chat to welcome them
• New pull requests by them in [treehouses.github.io](https://github.com/treehouses/treehouses.github.io) that are ready for review
• Pull requests ready to be merged (2 approvals)
• Questions and problems they are stuck on (they might send you a private message so please regularly check your Gitter)

## How to welcome all new aspiring virtual interns
If you see this message `@/all Hello Team my name is .... I'd like to become a virtual intern. What is the next step?`, you need to welcome the new intern and send this link `https://treehouses.io/#!./pages/vi/firststeps.md` so they can start working on the First Steps.

## How to review Pull Requests and Issues
One of your responsibilities as an intern is to review and help aspiring virtual interns with their issues and pull requests on [treehouses.github.io](https://github.com/treehouses/treehouses.github.io), so it's very important to understand how to review pull requests.

1. **Check branches:** the aspiring virtual interns should create a new branch every time they start working on a new issue (one issue per one pull request)

    `Warning: they should not work on the master branch!`

    Always check to see that a pull request has been made on a new branch before reviewing it or approving it.

1. **Check the raw.githack link:** Ensure they have included a raw.githack link and check the link to make sure their change is working. It should be in this pattern `https://raw.githack.com/YourUserName/YourUserName.github.io/YourBranchName/#!pages/vi/profiles/YourUserName.md`.

1. **Review files:** you can comment, approve, and request changes in the 'Files Changed' tab on their pull request. For this step, you should take your time to review a file. Do not rush :)

Every time you comment on an issue or review a pull request, message those involved on the Gitter chat with a link to the issue or the pull request so the aspiring virtual intern can see the comment. For example:
```
@username_of_intern please see my comment (URL link of the issue or pull request)
```
Also, if you find any issue that must be addressed with a pull request, do not forget to use the Request Changes option when starting your review.

## How to merge Pull Requests
The pull request can be merged if at least two other people have approved it and there are no more changes requested by another intern.

1. **Select squash and merge**
1. **Delete all the commit messages:** It is very crucial to delete all the commit messages. `You must not forget this step!`
1. **Check title:** The title of pull request must included a keyword to automatically close the issue, for example, `(fix #issue number)` or `(fixes #issue number)`. [READ MORE ABOUT CLOSING ISSUES USING KEYWORDS](https://help.github.com/en/github/managing-your-work-on-github/closing-issues-using-keywords)
    * if you accidently merge a PR that does not include closing keywords, you need to manually close the issue and link it to the original pull request.
    * The title should also be in lowercase letters `we do not want uppercase letters in the title of PRs`

Every time you merge a pull request, please send a message to the intern on the Gitter chat with a link to the issue and merged link. For example:

```
@username_of_intern please look at (URL link of the issue) and (URL link of the merged link)
```

## Work Routine
We recommend you follow this basic daily routine:

1. [Check gitter chat](https://gitter.im/treehouses/Lobby)
1. Review any issues or pull requests that have been added or changed on [treehouses.github.io](https://github.com/treehouses/treehouses.github.io) since the last time you reviewed.
1. Make pull requests as early as possible so you can get feedback as you work.
1. Join the Google hangout sessions at [http://talk.ole.org]( http://talk.ole.org). At the Hangout meeting, we will discuss our projects. If you have any questions, you can also ask the team at the meeting. For the Treehouses meeting, we have three sessions which are ...
• Happy Hacking Hangout on Monday
• Raspberry Pi Hangout on Wednesday
• Secret Hacking Hangout on Friday


**NOTE**:
• If you are unable to join a hangout, just message dogi in advance.
• Before leaving the hangout, everyone must do a quick check-out with dogi.
• Make sure you are sharing your screen during the hangout

## Active Systems Team Projects
### [cli](https://github.com/treehouses/cli):
cli is the Command Line Interface for the treehouses system image. It allows different commands to be entered in the Raspberry Pi terminal.
For example,
```
root@treehouses:~# treehouses help
```
`treehouses help` is a command that gives you more detailed info about the command.

If you are interested in coding in bash and working on the cli, check out the [cli issues](https://github.com/treehouses/cli/issues) on github. Once you have reviewed the issues, talk to dogi on potentially being assigned one to work with. If there aren't any issues you are ready for, you can get familiar by testing someone else's [pull request](https://github.com/treehouses/cli/pulls). Look at [this blog](20190930-reviewprs.md) for steps on how to review PR's on the cli and [this blog](20190831-newfeature.md) for how to create a new feature for the cli.

### [builder](https://github.com/treehouses/builder)
builder is a repository that contains scripts of the latest Raspbian image by installing packages, purging packages and executing custom commands, which then finally creates a bootable .img file that can be burned to a microSD card.

For this project, you have to work with [Travis](https://travis-ci.org/treehouses?utm_medium=notification&utm_source=github_status). You can learn more abut Travis [HERE](https://docs.travis-ci.com/user/for-beginners/)

If you are interested in working on builder and with docker, let dogi know and in the meantime review [this blog](20190921-builder.md) on how to create a new script for builder

### [Remote](https://github.com/treehouses/remote)
treehouses remote is our Android app that communicates with a headless Raspberry Pi mobile server running treehouses image via Bluetooth.
Download treehouses on your android device and take a look at the app. If you are part of the remote team, you will be working specifically with this app, working on new features and fixing bugs. Look at [the issues](https://github.com/treehouses/remote/issues) on remote and speak to dogi about working with this team.
