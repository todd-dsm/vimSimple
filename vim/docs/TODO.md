# vimSimple To-Do List
Again, I love Janus and everything it does but somethings need to be done in a
different (simpler) way.

## The list (in no particular order)
* Janu customizations for vim:
* `<C-P>` inserts the directory of the current file into a command
* Automatically resize splits when resizing the Vim window (GUI only)
* `<leader>ew` expands to `:e (directory of current file)/` (open in the current buffer)
* `<leader>es` expands to `:sp (directory of current file)/` (open in a horizontal split)
* `<leader>ev` expands to `:vsp (directory of current file)/` (open in a vertical split)
* `<leader>et` expands to `:tabe (directory of current file)/` (open in a new tab)
* Write a privileged file with `:SudoW` or `:SudoWrite`, it will prompt for sudo password when writing
* `<leader>fef` formats the entire file
* `<leader>u` converts the entire word to uppercace
* `<leader>l` converts the entire word to lowercase
* `<leader>cd` changes the path to the active buffer's file
* `<leader>md` creates the directory of the active buffer's file
  (For example, when editing a new file for which the path does not exist.)
* `gw` swaps the current word with the following word
* `<leader>ul` underlines the current line with `=`
* `<leader>tw` toggles wrap
* `<leader>fc` finds the next conflict marker (tested with Git conflicted files)
* Remap `<Down>` and `<Up>` to `gj` and `gk` (Wrapped text is not considered a single long line of text.)
* `<leader>hs` toggles highlight search
* `<leader>=` adjusts viewports to the same size (`<C-w>=`)
* `<A-[` (`<D-[` on MacVim) shifts current line or selected lines rightwards
* `<A-]` (`<D-]` on MacVim) shifts current line or selected lines leftwards
* `<C-W>!` invokes kwbd plugin; it closes all open buffers in the open  windows
	but keeps the windows open

## Test and Document
Any RFE (Request For Enhancement) you want.

Tagbar is a vim plugin for browsing the tags of source code files.

## Git Support ([Fugitive](http://github.com/tpope/vim-fugitive))

Fugitive adds pervasive git support to git directories in vim. For more
information, use `:help fugitive`

Use `:Gstatus` to view `git status` and type `-` on any file to stage or
unstage it. Type `p` on a file to enter `git add -p` and stage specific
hunks in the file.

Use `:Gdiff` on an open file to see what changes have been made to that
file

**customizations**:

* `<leader>gb` maps to `:Gblame<CR>`
* `<leader>gs` maps to `:Gstatus<CR>`
* `<leader>gd` maps to `:Gdiff<CR>`
* `<leader>gl` maps to `:Glog<CR>`
* `<leader>gc` maps to `:Gcommit<CR>`
* `<leader>gp` maps to `:Git push<CR>`
