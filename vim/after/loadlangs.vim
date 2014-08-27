""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  I am (presently) only interested in the uncommented languages.
"           vimSimple currently only supports what I've had time to test.
" AUTHOR:   Todd E Thomas
" DATE:     2014/08/18
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VARIABLES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set some rules for all languages; exceptions are language-specific
set encoding=utf8
" Use Unix as the standard file type
set ffs=unix,dos,mac
" Setup some auto-formatting
set ai          "Auto indent
"set si          "Smart indent
filetype indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SOURCE-IN LANGUAGES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
source $HOME/.vim/after/langs/bash.vim
"source $HOME/.vim/after/langs/c.vim
"source $HOME/.vim/after/langs/chef.vim
source $HOME/.vim/after/langs/css.vim
source $HOME/.vim/after/langs/html.vim
source $HOME/.vim/after/langs/javascript.vim
source $HOME/.vim/after/langs/json.vim
"source $HOME/.vim/after/langs/perl.vim
"source $HOME/.vim/after/langs/php.vim
source $HOME/.vim/after/langs/puppet.vim
source $HOME/.vim/after/langs/python.vim
source $HOME/.vim/after/langs/ruby.vim
source $HOME/.vim/after/langs/vimlang.vim
"source $HOME/.vim/after/langs/xml.vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fin~ this is the end of the tour.
" enjoy.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
