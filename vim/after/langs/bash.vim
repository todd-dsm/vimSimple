""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:	Rules for Engagement: BASH
" AUTHOR: 	Todd E Thomas
" DATE:			2014/08/18
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VARIABLES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('autocmd')
	" Set FileType
	au BufRead,BufNewFile		sh			set ft=sh
  " Tabs are 4 spaces; Wrap at 79 characters
	au FileType							sh			setlocal ts=4 sw=4 sts=4 expandtab tw=79
  " Autocompletion: ON
	au FileType					    sh			set omnifunc=bashcomplete#Complete
endif
