"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for Engagement: Ruby
" AUTHOR:   Todd E Thomas
" DATE:     2015/09/07
" RUBOCOP later: https://github.com/bbatsov/rubocop
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup ruby
  " clear augroup on load
  autocmd!
  " SET: tabs > spaces: 2 of each - total of 80
  autocmd filetype ruby set et ts=2 sw=2 sts=2 tw=80 wm=0
  setlocal colorcolumn=80
  highlight colorcolumn ctermbg=darkgray
augroup END
