"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for Engagement: Python
" AUTHOR:   Todd E Thomas
" DATE:     2015/09/07
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup python
  " clear augroup on load
  autocmd!
  " PEP8 Directives
  autocmd filetype python set et ts=4 sw=4 sts=4 tw=80
  " Highlight the right margin
  setlocal colorcolumn=80
  highlight colorcolumn ctermbg=darkgray
augroup END
" Pymode hack for import error
" URL: https://github.com/klen/python-mode/issues/342
let g:pymode_rope_lookup_project = 0
