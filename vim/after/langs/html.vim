""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for engagement: HTML
" AUTHOR: Todd E Thomas
" DATE:   2014/08/18
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has('autocmd')
  " Set FileType
  au BufRead,BufNewFile html,xhtml	set ft=html
  " Tabs are 2 spaces; no wrap
  au FileType	 html		setlocal ts=2 sw=2 sts=2 expandtab tw=0 wm=0
  " Autocomplete: ON
  au FileType	 html		set omnifunc=htmlcomplete#CompleteTags
endif

" html5.vim Configuration
" Disable event-handler attributes support:
"let g:html5_event_handler_attributes_complete = 0

" Disable RDFa attributes support:
"let g:html5_rdfa_attributes_complete = 0

" Disable microdata attributes support:
"let g:html5_microdata_attributes_complete = 0

" Disable WAI-ARIA attribute support:
"let g:html5_aria_attributes_complete = 0
