" syncolor.vim
" <url:vimhelp:syncolor>

hi default Search term=reverse ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=NONE

" Met en valeur l'espace fine insécable
hi FineNbSp ctermbg=darkgray guibg=lightred
match FineNbSp / /

" vimdiff {{{2
" L'éclaircissement du bleu foncé est excellent dans le terminal
" pour distinguer les répertoires mais dégueulasse dans vimdiff :
highlight DiffAdd    ctermbg=17
highlight DiffDelete ctermbg=32
highlight DiffChange ctermbg=53
highlight DiffText   ctermbg=1
" }}}2

hi StatusLine   cterm=italic    ctermfg=black     ctermbg=grey
hi StatusLineNC cterm=italic    ctermfg=black     ctermbg=darkgrey
hi VertSplit    ctermfg=white

if exists("vimpager")
  hi Normal ctermfg=246 ctermbg=233
  setlocal nolist linebreak
  set notitle
endif
