""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  PURPOSE: The main (root) vimrc file. This file sets global variables, sources
"						in other configuration files, and controls processing.
"   AUTHOR: Todd E Thomas
"     DATE: 2012/12/27
" MODIFIED:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURATION PARAMETERS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set foundational Parameters
set encoding=utf-8
set runtimepath+="$HOME/.vim/"


" Manage Plug-ins with Pathogen
silent! call pathogen#infect()
silent! call pathogen#helptags()


" Base/System configuration; the most basic settings
source $HOME/.vim/vimrcs/system.vim


" Extend Vim configuration globally
source $HOME/.vim/vimrcs/extended.vim


" Customize Vim on a per-language basis
source $HOME/.vim/after/loadlangs.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User-defined configurations; this file will never be over-written
" Put your stuff here:
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    source $HOME/.vim/my_configs.vim
catch
endtry
