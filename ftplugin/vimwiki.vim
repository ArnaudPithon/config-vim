" vim: fdm=marker

if exists('s:loaded')
  finish
endif
let s:loaded = 1

set expandtab
set tw=72

let g:vimwiki_browsers=['x-www-browser', 'konqueror', 'firefox']
let g:vimwiki_hl_cb_checked = 1
"let g:vimwiki_folding = 'expr'

" Keymap {{{1
nmap <Leader>wf <Plug>VimwikiFollowLink
nmap <Leader>wt <Plug>VimwikiTabnewLink
nmap <Leader>wb <Plug>VimwikiGoBackLink
nmap <Leader>wn <Plug>VimwikiNextLink
nmap <Leader>wp <Plug>VimwikiPrevLink
" }}}

" Highlight {{{1
let g:vimwiki_hl_headers = 1
hi VimwikiHeader1 ctermfg=yellow
hi VimwikiHeader2 ctermfg=darkgreen
hi VimwikiHeader3 ctermfg=darkcyan
hi VimwikiHeader4 ctermfg=darkyellow
"hi VimwikiHeader5 ctermfg=magenta
"hi VimwikiHeader6 ctermfg=green

" Redéfinit la colorisation de quelques éléments.
" <url:file:///usr/share/vim/vimfiles/syntax/vimwiki.vim>
hi link VimwikiDelText Comment
hi VimwikiItalic term=italic cterm=italic gui=italic ctermfg=magenta
hi VimwikiBoldItalic term=bold cterm=bold gui=bold,italic ctermfg=magenta
" }}}

