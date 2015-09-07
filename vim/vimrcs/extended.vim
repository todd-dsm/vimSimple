" The Exteded configuration is for the good stuff.
" Credits should be given to all; sorry if anyone was missed:
" Vincent Driessen; the logical grouping is great {{{ - }}}
" Steve Losh; simplicity and a unique perspective; brilliant stuff.


"""
" THE STATUSLINE (Linux, Mac OS X)
"""
" Right-side of the Status Line
" *Buffer Number, Displays + (writeable) and - read-only, and File name
" *Displays filetype, file encoding.
" *Hooks for vim-fugitive: outputs current git branch of file
let &stl='%< [Buf: %n]%m %f ['
let &stl.='%{empty(&filetype)?"":&filetype.", "}'
let &stl.='%{&fenc!=""?&fenc:&enc}] %{fugitive#statusline()}'

" Left-side of the Status Line; Displays:
" *Hexadecimal value of byte under cursor
" *Line Number x of y | Column Number
" *Verticle position of cursor: Top/Botom/Percentage
let &stl.='%=[0x%02.2B] [Line: %04l/%04L | Col: %c%V] (%P) '

" Tell Vim to always put a status line in, even if there is only one window
set laststatus=2


"""
" Set a few more universally useful options
"""
set nu                  " Alwasy display line numbers
set ruler               " Always show cursor position
set nobackup            " Disable backups, writebackups, swapfiles
set nowb
set noswapfile
set showmatch           " set show matching parenthesis
set smarttab            " insert tabs on the start of a line
                        " according to shiftwidth, not tabstop

"""
" Universal Indentation: tabs converted to 4 spaces until they're not
" Exceptions are in ~/.vim/ftplugin/ files
"""
"autocmd BufRead *.* set et ts=4 sw=4 sts=4 tw=80


"""
" Toggle code-paste auto-indent with F2
"""
set pastetoggle=<F2>


"""
" Trim Trailing White Space on Save of any file type
"""
autocmd BufWritePre *.* :%s/\s\+$//e


"""
" Custom Key Mappings; {{{
"""
" Display Hidden Characters; lower-case L
nmap <leader>l :set list!<CR>

" Toggle line numbers; uppercase N, etc.
nnoremap <leader>N :setlocal number!<cr>

" Disable hlsearch results after search
nnoremap <leader>. :nohlsearch<CR><C-l>

" Use the same symbols as TextMate for tabstops and EOLs
" URL: http://vimcasts.org/episodes/show-invisibles/
set listchars=tab:▸\ ,eol:$
" More mappings can be added by following the above with a [SPACE] COMMA
"  ,eol:¬ ,whatever:xyz ,newthing:123 ,etc
" }}}


"""
" Code Folding {{{
" URL: https://github.com/nvie/vimrc/blob/master/vimrc
"""
set foldenable          " enable folding
"set foldcolumn=1       " add a fold column
set foldmethod=marker   " detect triple-{ style fold markers
set foldlevelstart=99   " start out with everything folded
"set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
                        " which commands trigger auto-unfold
set foldtext=MyFoldText()
function MyFoldText()
  let line = getline(v:foldstart)
  let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
  return v:folddashes . sub
endfunction
" }}}


"""
" Remove those net files on exit - sheesh!
"""
au VimLeave * filereadable("[path here]/.netrwhist")|call
delete("[path here]/.netrwhist")|endif
