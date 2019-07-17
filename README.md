What is this?
=============

See what this is all about: [http://open-learning-exchange.github.io/](http://open-learning-exchange.github.io/).

How to Contribute
=================

First things first
------------------

Learn [Markdown](https://help.github.com/articles/github-flavored-markdown)! Then check out MDwiki's [quick start](http://dynalon.github.io/mdwiki/#!quickstart.md). 

Whenever you feel stuck, go to [MDwiki's own site](http://mdwiki.info) for further information.


One Wiki Only? Fork It.
-----------------------

First off fork this repo and call it something like `<MyProject>-wiki`.

Multiple Wikis? Clone It.
-------------------------

In case would you like to create more than one wiki for the same GitHub user or organization, then forking won't cut it. At the moment of this writing GitHub won't allow you to fork a single repository multiple times for the same account.

There's a workaround to this, however on GitHub's web interface you won't see the sign that says "forked from" in your cloned repository.

Below instructions how to clone this repository using the CLI:

**First off, create a new (empty) repository on GitHub, then;**

```bash
git clone https://github.com/exalted/mdwiki-seed.git
cd mdwiki-seed
git remote add foobar <HTTPS/SSH Clone URL of the New Repository>
git push foobar gh-pages
```

Create a New Wiki
-----------------

It all begins by creating an initial file structure for any language that you would like to support. For example, if you're interested having a wiki in English, then you will duplicate `ll_CC` folder and rename your copy to `en`. (For a complete list of languages [`ll`] and country codes [`CC`] [see here](http://msdn.microsoft.com/en-us/library/ee825488).)

`ll_CC` is a starter template folder which you shouldn't ever edit directly, since you may loose your changes when MDwiki gets updated later.

> If you want to have your wiki in more than one language, then you duplicate `ll_CC` as many times as necessary and rename each copy with the appropriate language and country code. (Country code is optional and it is only useful if you want to distinguish, for instance, American English from British English, such as: `en_US` and `en_GB`.)

Getting Started
---------------

_You should have a language wiki folder by now, if not, go back and read above to create one._

Suppose your first wiki is going to be in English, hence you must have a folder called `en`, as previously described.

1. Open `index.html` file with your favorite plain text editor (the one that is at the same level where `ll_CC` and your language folder is located, **NOT the one inside your language folder**).
1. Find where it says "Override `ll_CC` below with your default language and country code."
1. Change refresh meta tag from `url=ll_CC/` to `url=en/` **(trailing `/` is very important).**

Structure
---------

_All file references here are relative to their respective language folder._

| Name | Type | Description |
| :--- | :--- | :--- |
| `index.md` | File | Starting point (a.k.a. "home page") for your wiki. **Note this is not the `index.html`, but `index.md`**! |
| `navigation.md` | File | Various settings of your wiki (e.g., name of your wiki, items in the navigation bar at the top, etc.) |
| `config.json` | File | If you don't know what this is for, don’t touch it. |
| `pages` | Folder | Ideally, inside this folder, you create one `*.md` file for every page inside your wiki (e.g., `foo.md`, `much-longer-names-are-also-okay.md`, etc.) You can also create as many subfolders as you need, just remember to link them accordingly. |
| `uploads` | Folder | An example folder structure where you could put other files. **Although it is best to host your files somewhere else, like Dropbox, or a CDN, etc.** |

Best Practices
--------------

### Relative URLs

Instead of using absolute URLs when linking one wiki page to another, use relative URLs.

For instance if `en/pages/foo.md` page had to link to `en/pages/bar.md`, it is enough to just add `[Click here](bar.md)` in your markdown.

### Don't Host Your Uploads in Git(Hub)

Instead of hosting your uploads inside the `uploads` folder, consider using Dropbox, Google Drive, or a CDN.

### Add References to Uploads

**Whenever you can, avoid hosting your uploads using Git(Hub).**

If you _must_ add references to files hosted inside the `uploads` folder here's how to do it, for instance: `![Image Title](uploads/images/foo.png)`. Add that in your markdown and you're good to go.


How to Preview
==============

In order to preview your changes locally, prior to publishing online, you may need to take some actions. Below some starting points for each operating system, also check out MDwiki's [frequently asked questions](http://dynalon.github.io/mdwiki/#!faq.md) section for some ideas.

Mac OS
------

The easiest way to serve up static sites on a Mac is to use [Anvil](http://anvilformac.com). Go ahead and download it from their website, install and add a site using the status bar icon: simply select the folder where your wiki is located on your Mac.

If you don't want to download any apps, you can use the Terminal on your Mac and Python. To do this, go to your site folder in the Terminal app and type `python -m SimpleHTTPServer 8000`. This will start running a local server which you can navigate to by typing the URL `localhost:8000` in any web browser.

Windows
-------

Text editors like [Brackets](http://brackets.io/), and [VS Code](https://code.visualstudio.com/) and [Atom](https://atom.io/) (with extensions) can be used to preview your files locally. However, it is recommended that you use the online GitHub editor and RawGit to make and view your changes in your own branch of your fork of this repository because this is the only sure way to preview your changes for live accuracy.

Linux
-----

You can use [Prax](http://ysbaddaden.github.io/prax/). Prax is a pure ruby alternative to Pow!! that runs on GNU/Linux.


For Developers
==============

You don't need to read below here or do anything at all if you're only interested creating your own wiki. This section is for developers or maintainers of this repository.

Make changes to MDwiki
-------------

1. If you haven't already, [install Node](https://docs.npmjs.com/getting-started/installing-node).
2. Open a command prompt/shell/git bash and navigate to your repo's directory.
3. Run `npm install` to install mdwiki dependencies.
4. For development, you can run `./node_modules/.bin/grunt devel` or `grunt devel` if you have grunt installed globally.  This will start grunt watching the index.tmpl and *.js files for changes, which you can view at `localhost:35729`. The index.html file that it builds is the debug version of the html with the full js files.
5. As a note, the index.tmpl is where our custom CSS can be found.  Please only add CSS within the comment denoted section.
6. Once you have completed your changes, run `./node_modules/.bin/grunt release` to build an index.html with minified js.
