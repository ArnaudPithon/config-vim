" Personalisation de la colorisation officielle.
" <url:file:///usr/share/vim/vimfiles/syntax/vimwiki.vim>

let g:vimwiki_hl_headers = 1

hi default VimwikiHeader1 ctermfg=yellow
hi default VimwikiHeader2 ctermfg=darkgreen
hi default VimwikiHeader3 ctermfg=darkcyan
hi default VimwikiHeader4 ctermfg=darkyellow
"hi VimwikiHeader5 ctermfg=magenta
"hi VimwikiHeader6 ctermfg=green

" Redéfinit la colorisation de quelques éléments.
hi default link VimwikiDelText Comment

hi default VimwikiItalic     term=italic cterm=italic gui=italic ctermfg=magenta
hi default VimwikiBoldItalic term=bold cterm=bold gui=bold,italic ctermfg=magenta
