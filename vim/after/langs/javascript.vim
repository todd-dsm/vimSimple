"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" Styles:		https://developer.mozilla.org/en-US/docs/Mozilla/Developer_guide/Coding_Style
" PURPOSE:  Rules for Engagement: JavaScript
" AUTHOR:   Todd E Thomas
" DATE:     2014/08/18
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VARIABLES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('autocmd')
  " Set FileType
  au BufRead,BufNewFile   *.js          set ft=javascript
  " Tabs are 2 spaces; no wrap
  au FileType             javascript    setlocal ts=4 sw=4 sts=4 expandtab
  " Autocompletion: ON
  au FileType             javascript    set omnifunc=javascriptcomplete#CompleteJS
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS: PANGLOSS
" The following variables control certain syntax highlighting features. You can
" add them to your .vimrc to enable/disable their features.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" javascript_enable_domhtmlcss
" Enables HTML/CSS syntax highlighting in your JavaScript file.
" Default Value: 0

"b:javascript_fold
"Enables JavaScript code folding.
"Default Value: 1

" g:javascript_conceal
"Enables concealing characters. For example, function is replaced with ƒ
"Default Value: 0

" javascript_ignore_javaScriptdoc
"Disables JSDoc syntax highlighting
"Default Value: 0
