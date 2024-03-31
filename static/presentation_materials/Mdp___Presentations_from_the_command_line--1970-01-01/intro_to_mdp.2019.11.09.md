%title: Intro to mdp
%author: John Kennedy
%date: 09 Nov 2019

-> # Intro to mdp <-

## Terminal based presentation tool
```
                 __  __ ____  ____  
                |  \/  |  _ \|  _ \ 
                | |\/| | | | | |_) |
                | |  | | |_| |  __/ 
                |_|  |_|____/|_|    
                    
```

--------------------------------------------------
-> # Agenda <-
==============

* What is mdp?
* Installing mdp
* Creating presentations
* Running presentations

-------------------------------------------------
-> # What is mdp?  <-

* mdp could be thought of as a markdown presentation software
* Supports basic markdown formatting
* Runs on most Linux, Mac, FreeBSD, and Winders (with WLS or Cygwin)
* Needs `ncursesw` to compile from source (`libncurses5-dev` and `libncursesw5-dev` on Raspbian)
* Also available in repos for Ubuntu, Debian, Brew (Mac), Slack, and Arch
* Source and documentation can be found on [GitHub](https://github.com/visit1985/mdp/)

-------------------------------------------------
-> # Installing mdp from packages <-

* On Arch, you can use the existing *AUR* package.
* On Cygwin you can use the existing package from the setup program.
* On Debian, you can use the existing DEB package, or run `apt-get install mdp`.
* On FreeBSD, you can use the `port misc/mdp`.
* On OS-X, use the existing Homebrew Formula by running `brew install mdp`.
* On Slackware, grab the SlackBuild here: (http://slackbuilds.org/apps/mdp/), or run `sbopkg -i mdp`.
* On Ubuntu, you can use the existing DEB package, or run `apt-get install mdp`.

-------------------------------------------------
-> # Installing from source <-

```
$ git clone https://github.com/visit1985/mdp.git
$ cd mdp
$ make
$ make install
$ mdp sample.md
```

-------------------------------------------------
-> # Creating Presentations <-
* Presentations creating in text editor using abbreviated basic Markdown with some extras
  * Disclaimer - I have not tried all the different markdown tags so you have something to play with
* Any terminal sharing app will work
* Can be created anywhere

-------------------------------------------------
-> # Limitations <-
* Obviously no graphics/video/audio
* Very limited text formatting (based on type of terminal

-------------------------------------------------
-> # Title, Author, and Date header and footer <-
```
%title: Intro to mdp
%author: John Kennedy
```
* title will be top centered
* author will be bottom left
* Bottom right will show slide count

-------------------------------------------------
-> # Slide break <-
```
-------------------------------------------------
```
* Horzontal rule is one way
* There are others but I personally think the rule makes source more readable

-------------------------------------------------
-> # Centering text <-
```
-> # Centering text <-
```
* Used on all the slide titles in this presentation

-------------------------------------------------
-> # Ignoring markdown tags <-
\`\`\`
* To ignore blocks of text
* Backslash \\ will escape single tags

-------------------------------------------------
-> # Headings <-
\#
* Hash tag
  * May or may not highlight depending on terminal
* Single hash for Heading 1, double for Heading 2, etc

-------------------------------------------------
-> # Lists <-
\*
* Unordered list
* Will display as +-
\1.
* Ordered (numbered) list

-------------------------------------------------
-> # Highlight text <-
\*\*
  **Highlight**
* Not on first character of line
* Open and close around text to highlight
\*\* Text to highlight \*\*
* Single \* supposedly will put in italics but possibly not on this terminal
  *Italics*

-------------------------------------------------
-> # Links <-
```
[Google](https://google.com)
```
* [Google](https://google.com)
* [NoVaLUG](http://novalug.org)
* Link referenced at bottom

-------------------------------------------------
-> # Thanks <-
* There will be links in the uploaded version of this presentation

-------------------------------------------------


-> # Conclusion  <-

mdp supports *other* **formatting**, too. Give it a try!
