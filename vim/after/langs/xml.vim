"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for Engagement: XML
" AUTHOR:   Todd E Thomas
" DATE:     2014/08/18
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VARIABLES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('autocmd')
  " Set FileType
  au BufRead,BufNewFile   xml     set ft=xml
  " Tabs are 2 spaces; no wrap
  au FileType             xml     setlocal ts=2 sw=2 sts=2 expandtab
  " Autocompletion: ON
  au FileType             xml     set omnifunc=xmlcomplete#CompleteTags
endif
