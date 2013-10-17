
" Remplace les raccourcis pour naviguer entre les liens.
if !exists('s:loaded')
"  unmap <expr> <buffer> <Tab>
"  unmap <expr> <buffer> <S-Tab>
endif

" Rétabli le fonctionnement désiré pour la touche <Tab>.
if g:vimwiki_table_mappings
  iunmap   <expr> <buffer> <Tab>
  " BUG: se comporte comme un simple <Tab> !
  inoremap <expr> <buffer> <C-Tab> vimwiki#tbl#kbd_tab()
endif
inoremap <Tab>   <Esc>
inoremap <S-Tab> <Tab>

let s:loaded = 1
