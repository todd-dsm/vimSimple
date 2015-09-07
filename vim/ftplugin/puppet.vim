"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for Engagement: Puppet
" AUTHOR:   Todd E Thomas
" DATE:     2015/09/07
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup puppet
  " clear augroup on load
  autocmd!
  " SET: tabs > spaces: 2 of each - total of 80
  autocmd filetype puppet set et ts=2 sw=2 sts=2 tw=80
  setlocal colorcolumn=80
  highlight colorcolumn ctermbg=darkgray
augroup END
