"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for Engagement: C-Lang
" AUTHOR:   Todd E Thomas
" DATE:     2015/09/07
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup cc
  " clear augroup on load
  autocmd!
  " SET: tabs > spaces: 2 of each - total of 110
  autocmd filetype cc set et ts=4 sw=4 sts=4 tw=110
  "setlocal colorcolumn=110
  autocmd filetype c,cpp set colorcolumn=110
  highlight colorcolumn ctermbg=darkgray
augroup END
