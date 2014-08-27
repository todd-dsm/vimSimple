" An example for a vimrc file.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  PURPOSE: This is the system vimrc example file, written by Bram Moolenaar,
"						but reduced down to only what's necessary.
"   AUTHOR: Todd E Thomas
"     DATE: 2012/12/27
" MODIFIED:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURATION PARAMETERS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set leader to a comma; it's an easier reach than the backslash
"""
let mapleader = ","

"""
" Apply settings to evim (A version of the vi editor for the X Window System)
"""
" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif


"""
" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
"""
set nocompatible

"""
" allow backspacing over everything in insert mode
"""
set backspace=indent,eol,start

"""
" Set some basic configuration options
"""
set history=50									" keep 50 lines of command line history
set showcmd											" display incomplete commands
set incsearch										" do incremental searching


"""
" Don't use Ex mode, use Q for formatting
"""
map Q gq


"""
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
"""
inoremap <C-U> <C-G>u<C-U>

"""
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
"""
if &t_Co > 2 || has("gui_running")
  syntax on
	set ignorecase
	set smartcase
  set hlsearch
endif

"""
" Only do this part when compiled with support for autocommands.
"""
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

  augroup END

else

	set autoindent		" always set autoindenting on
	set copyindent		" copy the previous indentation on autoindenting

endif " has("autocmd")

"""
" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
"""
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
