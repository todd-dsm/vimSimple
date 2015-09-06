"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for Engagement: C-lang
" AUTHOR:   Todd E Thomas
" DATE:     2015/09/06
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('autocmd')
  " Set FileType
  au BufRead,BufNewFile py,pyc  set ft=python
  " Tabs are 4 spaces
  au FileType python setlocal ts=4 et sw=4 sts=4 tw=80
  " Highlight the right margin
  set colorcolumn=80
  highlight ColorColumn ctermbg=red
  " Auto-completion: ON
  autocmd FileType python     set omnifunc=pythoncomplete#Complete
" Pymode hack for import error
" URL: https://github.com/klen/python-mode/issues/342
let g:pymode_rope_lookup_project = 0
" Enable PySmell python auto-completion
python << EOF
import os
import sys
import vim
sys.path.append("/Library/Python/2.7/site-packages/")
EOF
"exe ":source ~/.vim/bundle/pysmell/pysmell.vim"
"autocmd FileType python set omnifunc=pysmell#Complete
endif
