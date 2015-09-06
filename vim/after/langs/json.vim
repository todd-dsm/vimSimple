"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for Engagement: JSON
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
  au BufRead,BUfNewFile   json    set ft=json
  " Tabs are 2 spaces; no wrap
  au FileType             json    setlocal ts=2 sw=2 sts=2 noexpandtab tw=0 wm=0
  " Autocompletion: ON
  au FileType             json    set omnifunc=jsoncomplete#CompleteTags
endif

" Disable the concealing behavior
let g:vim_json_syntax_conceal = 0
