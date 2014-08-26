" PYTHON: Set FileType
au BufRead,BufNewFile {py,pyc}  set ft=python
set modeline

" Tabs are 4 spaces
au FileType python setlocal ts=4 et sw=4 sts=4 tw=80


" Enable code completion
autocmd FileType python     set omnifunc=pythoncomplete#Complete


" Enable PySmell python auto-completion
python << EOF
import os
import sys
import vim
sys.path.append("/Library/Python/2.7/site-packages/")
EOF
"exe ":source ~/.vim/bundle/pysmell/pysmell.vim"
"autocmd FileType python set omnifunc=pysmell#Complete
