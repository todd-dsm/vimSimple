"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for Engagement: Bash
" AUTHOR:   Todd E Thomas
" DATE:     2015/09/07
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup sh
  " clear augroup on load
  autocmd!
  " PEP8 Directives
  autocmd filetype sh set et ts=4 sw=4 sts=4 tw=80
  " Highlight the right margin
  autocmd filetype sh set colorcolumn=80
  "highlight colorcolumn ctermbg=darkgray
augroup END
