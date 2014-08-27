vimSimple Configuration
=========

This is a distribution of plug-ins and mappings for those that would like to get up and running quickly with Vim as an IDE for:
* Bash
* Python, and
* Web-specific languages such as 
 * HTML
 * CSS
 * JavaScript, et al.

It is designed to provide minimal working environment using the most currently-maintained / popular plug-ins and the most common mappings. Features include:
* A modular layout
* A .vimrc file provided by the Linux (Fedora/Ubuntu) OS but minimized
* Color Schemes (not made EZ - yet)
* Common options; EG:
 * Display line numbers and ruler
 * Language-specific code-completion
* Extended options; EG:
 * Code Folding
 * Toggle-pasting with F2
 * Language-specific tabs/spaces
 * Common text width of 80 characters for all filetypes (excluding a few)
 * Auto-completion
 * Auto-trims trailing white space
 * Popular key remappings for easier use, and
* Much, much more

...and it's easily customizable. Once you know your way around, just update it with your own preferences.


What vimSimple does NOT do:
* It does not work with vi; you'll need to upgrade to a full-blown Vim.
* This is only for Vim via Gnome-Terminal or Apple Terminal.app. If you're not using vim from the Terminal, you're pissing in the wind and that's something you can do alone.
* This is not for MacVim. I do own a Mac but install Vim via Homebrew.
* It doesn't work with Windows; ~~Fuck Windows~~; Windows is not a priority for me.


## Warning
I am new with vimL and github; this is a work-in-progress and mostly for my own benefit. All suggestions are welcome but bitchers need not bother.

That said, I use this configuration every day and vimSimple really shines with the above languages.

But, I would like to add tailored support for more languages like:
* Ruby
* Perl
* PHP
* C (and c-like languages)
 * C++
 * Go
 * Swift

If you have something you would like included then please submit them. Please keep your submissions _simple_ so that they are optimized to perform well.


## Over-view
vimSimple is only a few configuration files. The real power is felt when it
leverages the hard work of others that have given us wonders such as:
* [Pathogen]
* [syntastic]
* [PySmell]
* [vim-snipmate]
* [snipmate-snippets]

All of which do great things for vim. Eventually, more will be on the way.

## Upgrading vimSimple
Before an upgrade, the vimSimple installer will make a backup of your
vim-specific files and dump them in your home directory for posterity:
`$HOME/my_old_vim.tgz`. Your `$HOME/.viminfo` file will remain intact.

Also, keep all of your personal customizations in `$HOME/.vim/my_configs.vim` and you should never lose anything. This file has been reserved for you and the vimSimple installer will never touch it.

## Removing vimSimple
If it's not for you, vimSimple can be removed rather easily:
`$ rm -rf ~/.vimrc .vim/`


## Issue Tracking
There is only the GitHub issue tracker; no mailing list, but sometimes on IRC in the vim channel.

While vimSimple should work with older versions and other OSs (Slackware,
whatever) I have not tested any other variants. If fixes are easier, you will
see them sooner; if not - you'll get them when there's time.

2 things will speed up issue resolution:
* Showing your work, and
* Providing a fix.

Outside of that, issues should be submitted as any other bug: with accurate root-cause included.

Any 'Requests For Enhancement' should be submitted with the title thus:
"RFE: $enhancement-description"

I'm keep myself very busy so please don't freak if these requests take time to process. I have tested it with Ubuntu as well but if your requests don't ALSO work on Fedora (and I can't think of why they wouldn't) they will be closed without resolution. Please keep in mind...

I'm really doing this for me.


## Pre-requisites

1) Upgrade to Vim:
```
Fedora: sudo yum -y install vim-common vim-enhanced
Ubuntu: sudo apt-get install vim vim-common
```

2) Install git:
```
Fedora: sudo yum install git
Ubuntu: sudo apt-get install git
```

3) Install PIP (for Python):
```
Fedora: sudo yum install python-pip
Ubuntu: sudo apt-get install python-pip
```

4) vimSimple requires that you install some Python Eggs:
```
Fedora: sudo pip-python install pep8 pyflakes flake8
Ubuntu: sudo apt-get install python-pip
```

5) Install vimSimple:
```
curl -Lo- Fix-URL | bash
```

NOTE: the installer will append these lines to the bottom of your .bashrc file:
```
# User specific aliases and functions
export EDITOR='/usr/bin/vim'
```

6) Optional: Follow the instructions displayed in the terminal after the install.

That's it - now all you have to do is find a project and get coding.

# Usage and Instructions
Check the vimSimple (Github) Wiki page or the docs directory:
```
ls -l ~/.vim/docs/
```

# Props
I did this alone - but I didn't. A great many people configured vim brilliantly before I decided to cobble vimSimple together - and I test-drove a lot of 'em. 
Without their examples vimSimple wouldn't exist:

[Janus]
My installer is based on theirs; and I don't know how many hours of testing it it took but thank you for working it out.

This README is also based on theirs. Monkey see, monkey do.

[nvie] showed me the light of modular design, inventive commenting, and cold folding. I've applied these concepts to programming but it hadn't occurred to me that it could also apply to a vim configuration. My eyes are open a little wider now.

[tpope]: vim-pathogen is genius for a) what it does, and b) the simplicity of its design; there, I said it.

[Steve Losh] Simplicity is everywhere. Steve Losh found some and I've borrowed from it.

[Eduan Lávaque]: Great little statusline - and simple.

[vim-scripts] - with the AutoComplPop plugin, Vim will begin to automatically display popup menu for auto-completions.

NOTE: AutoComplPop is certainly counter to the whole 'simplicity' theme but with so many variables, and my fading memory, I find it somewhat annoying but mostly useful. The maintainer hasn't touched it for 2 years now. Perhaps I will look into making this a longer-term project or remove it altogether.


A thanks to you all, and all to come - I'm not done thieving yet ;-)


# License

### This code is free to use under the terms of the Thelema license.

"Do as thou wilt~"

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[Pathogen]:https://github.com/tpope/vim-pathogen
[syntastic]:http://github.com/scrooloose/syntastic
[PySmell]:http://github.com/orestis/pysmell
[vim-snipmate]:http://github.com/garbas/vim-snipmate
[snipmate-snippets]:http://github.com/honza/snipmate-snippets
[Janus]:http://github.com/carlhuda/janus
[nvie]:http://github.com/nvie/vimrc
[tpope]:http://github.com/tpope/vim-pathogen
[Steve Losh]:http://stevelosh.com/blog/2010/09/coming-home-to-vim/#making-vim-more-useful
[Eduan Lávaque]:http://eduantech.com/2012/11/my-vim-statusline-how-to-do-it/
[vim-scripts]:http://github.com/vim-scripts/AutoComplPop