"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LANGUAGE-SPECIFIC CONFIGURATION
" PURPOSE:  Rules for Engagement: Puppet
" URL:      https://docs.puppetlabs.com/guides/style_guide.html
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
  au BufRead,BufNewFile   pp      set ft=puppet
  " Tabs are 2 spaces;
  au FileType             pp      setlocal ts=2 sw=2 sts=2 noexpandtab
  " Autocompletion: OFF / There is no Puppet auto-completion at this time
  " If there were, it would look something like this:
  "au FileType             pp      set omnifunc=puppetcomplete#CompletePuppet
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIGURAITION PARAMETERS:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
