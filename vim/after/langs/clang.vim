"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for Engagement: C-lang
" AUTHOR:   Todd E Thomas
" DATE:     2015/09/06
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('autocmd')
  " Read project specific .vimrc securely
  set exrc
  set secure
  " Set FileType
  au BufRead,BufNewFile   *.h,*.c     set ft=c
  " Tabs are 4 spaces; no wrap
  au FileType             c     setlocal ts=4 noet sw=4 sts=4
  " Highlight the right margin
  set colorcolumn=110
  highlight ColorColumn ctermbg=darkgray
  " Auto-completion: ON
  au FileType             c     set omnifunc=ccomplete#Complete
endif
