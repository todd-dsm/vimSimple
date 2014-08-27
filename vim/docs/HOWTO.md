# vimSimple: HOWTO

## Modes

* VIM has three modes:
	* When you open Vim, before doing anyting, you are in normal mode.
  * insert mode- stuff you type is added to the buffer
  * normal mode- keys you hit are interpreted as commands
  * visual mode- allows you to select blocks of text
* To enter insert mode, hit `i`
* To exit insert mode, hit `<ESC>` (Escape key)
* To enter visual mode, hit `v`
* To exit visual mode, hit `<ESC>` (Escape key)
* Once you've escaped, you're in normal mode.

## Useful commands

* Open an existing file or create a new one by `$ vi filename.file_extension`
	EG: `vi yo.sh` or,
* `$ vi /path/to/filename.file_extension`
	EG: `vi ~/projects/yo.sh` or, `$ sudo vi /etc/config_file`
	(enter insert mode to make changes, then)
* Use `:w` to write your changes after editing a file in vim
* Use `:q` to quit vim
* Use `:wq` together to write, then quit vim
* Certain commands are prefixed with a `<Leader>` key, which maps to `,`
	(the comma) in vimSimple; the comma is just easier to reach, that's all.
* Keyboard [cheat sheet](http://walking-without-crutches.heroku.com/image/images/vi-vim-cheat-sheet.png).

## Vim Tutorials

* Type `vimtutor` into a shell to go through a brief interactive
  tutorial inside VIM.
* Official Vim [help.txt] (http://vimdoc.sourceforge.net/htmldoc/help.html)
* Read the slides at [VIM: Walking Without Crutches](http://walking-without-crutches.heroku.com/#1).
* Watch the screencasts at [vimcasts.org](http://vimcasts.org/)
* Watch Derek Wyatt's energetic tutorial videos at [his site](http://www.derekwyatt.org/vim/vim-tutorial-videos/)
* Read wycats' perspective on learning Vim at
  [Everyone who tried to convince me to use vim was wrong](http://yehudakatz.com/2010/07/29/everyone-who-tried-to-convince-me-to-use-vim-was-wrong/)
* Read this and other answers to a question about vim at StackOverflow:
  [Your problem with Vim is that you don't grok vi](http://stackoverflow.com/questions/1218390/what-is-your-most-productive-shortcut-with-vim/1220118#1220118)


# Features

This Vim distribution includes a number of packages built by others.

## Base Customizations

vimSimple ships with a number of basic customizations for vim:
* Always-On Configuration:
	* Line numbers
	* Ruler (line and column numbers)
	* Lines Wrap at 80 characters by default; exceptions are configured per-need. except for Bash and HTML.
	* Line Wrapping is turned off for Bash and HTML.
	* Tabs are 4-spaces by default. Exceptions are configured per-need.
	* Tab exceptions: 2-space-width tab (actual tabs) for: Bash and HTML.
	* White space is auto-trimmed from line endings.
* Interactive Commands
	* `<F2>` toggles paste mode [vim paste problem] (http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste)
	* Show trailing whitespace with: `,+l` (comma+lower-case L)
	* Toggle line numbers: `,+N` (comma+upper-case N)
	* Clear highlights from last search: `,+.` (comma+period)
	* Searching highlighted, incremental, and case insensitive
	* Code Folding:
		* Wrap code in {{{ code }}} (see ~/.vim/vimrcs/extended.vim for an example) then
		* `za` to toggle (fold and unfold) individual code blocks.
		* `zc` to close individual code blocks and `zo` to unfold them.
		* `zM` to fold all and `zR` to unfold all.
		* But `zm` and `zr` (lower-case) seems to work as well.


## This Vim distribution includes a number of packages built by others.

[Pathogen] (http://github.com/tpope/vim-pathogen)

[Syntastic] (https://github.com/scrooloose/syntastic/)
Syntastic is a syntax checking plugin that runs buffers through external syntax
checkers as they are saved and opened. If syntax errors are detected, the user
is notified and is happy because they didn't have to compile their code or
execute their script to find them.

[PySmell] (http://github.com/orestis/pysmell)
PySmell is a python IDE completion helper. It tries to statically analyze Python
source code, without executing it, and generates information about a project's
structure that IDE tools can use.

[vim-snipmate] (http://github.com/garbas/vim-snipmate)
snipMate aims to be a concise vim script that implements some of TextMate's
snippets features in Vim.

[snipmate-snippets] (http://github.com/honza/snipmate-snippets)
This repository contains snippets files for various programming languages.


### This code is free to use under the terms of the Thelema license.

"Do as thou wilt~"

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
