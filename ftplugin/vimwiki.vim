" vim: fdm=marker

setlocal expandtab
setlocal tw=72

let g:vimwiki_browsers=['konqueror', 'firefox']
let g:vimwiki_hl_cb_checked = 1
let g:vimwiki_folding = 'expr'
setlocal foldlevel=1

" Keymap {{{1
  "nmap <Leader>wf <Plug>VimwikiFollowLink
  nmap <buffer> <LocalLeader>wt <Plug>VimwikiTabnewLink
  nmap <buffer> <LocalLeader>ws <Plug>VimwikiSplitLink
  nmap <buffer> <LocalLeader>wv <Plug>VimwikiVSplitLink
  nmap <buffer> <kHome>         <Plug>VimwikiGoBackLink
  nmap <buffer> <LocalLeader>wn <Plug>VimwikiNextLink
  "nmap <Leader>wp <Plug>VimwikiPrevLink
" }}}
