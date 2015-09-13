"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for Engagement: JavaScript
" AUTHOR:   Todd E Thomas
" DATE:     2015/09/07
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup javascript
  " clear augroup on load
  autocmd!
  " SET: tabs > spaces: 2 of each - total of 110
  autocmd filetype javascript set et ts=2 sw=2 sts=2 tw=110
  setlocal colorcolumn=110
  highlight colorcolumn ctermbg=darkgray
augroup END
