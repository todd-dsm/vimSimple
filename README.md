
vimSimple
=========
A modular .vimrc configuration with a tree structure like a Unix/Linux filesystem.

This is a wad of plug-ins and mappings for those that would like to get up and running quickly with Vim as an IDE for:
* Bash
* Python, and
* Web-specific languages such as
 * HTML
 * CSS
 * JavaScript, et al.

Everything is super-simple - except the installation; I'm working on that.

It is designed to provide minimal working environment using the most currently-maintained / useful plug-ins with the most common mappings. Features include:
* A modular layout
* A .vimrc file provided by the Linux (Fedora/Ubuntu) OS but minimized
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
* It doesn't work with Windows; ~~not my problem~~; Windows is not a priority for me.


## Warning
###I am new with VimL and github; this is a work-in-progress and mostly for my own benefit and learning.

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

## Pre-requisites

1) Upgrade to Vim and install git:
* Fedora: `sudo yum -y install vim-common vim-enhanced git`
* Ubuntu: `sudo apt-get install vim vim-common git`
* OS X: `brew install vim git`
 * I do: `brew install git vim --override-system-vi --without-nls --with-lua --with-mzscheme --with-tcl`

2) Install vimSimple:(in a test enviroment first)
```bash
git clone --recursive -j10 https://github.com/todd-dsm/vimSimple.git code/vimsimple
ln -s code/vimSimple/vim .vim
ln -s code/vimSimple/vimrc .vimrc
```

Update Your python.vim with a path to your site-packages:
`vi /tmp/vimsimple/vim/after/langs/python.vim`
* Fedora: `/usr/lib64/python2.7/site-packages`
* Ubuntu: `???`
* OS X: (if installing in)
 * System: `/Library/Python/2.7/site-packages/`
 * Homebrew: `/usr/local/lib/python2.7/site-packages`


# Usage and Instructions
Check the vimSimple (Github) [Wiki](https://github.com/todd-dsm/vimSimple/wiki) page or the docs directory:
```
ls -l ~/.vim/docs/
```

