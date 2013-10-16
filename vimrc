" ~/.vimrc
" Maintainer:	Arnaud Pithon <apithon@free.fr>
" Last Change:	

" Pour le mapping de touches se renseigner sur mapleader
let mapleader = ","

" Mode de complétion
set wildmenu
let wildmode = "longest:full,full"

source $VIMRUNTIME/macros/matchit.vim

if has("autocmd") " {{{1

  autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
  "au BufReadCmd *.epub call zip#Browse(expand("<amatch>"))

endif " }}}

hi StatusLine   cterm=italic    ctermfg=black     ctermbg=grey
hi StatusLineNC cterm=italic    ctermfg=black     ctermbg=darkgrey
hi VertSplit    ctermfg=white

" plugin Utl {{{
" <URL:config:#r=hints>
" Utilise des noms de groupe standard pour mettre en valeur les liens
" (voir <URL:vimhelp:group-name>)
"au BufWinEnter * hi link UtlTag PreProc
"au BufWinEnter * hi link UtlUrl Underlined
"au BufWinEnter * hi UtlUrl cterm=underline
"
let g:utl_cfg_hdl_scm_http_system = "!elinks '%u#%f'"
let g:utl_cfg_hdl_scm_mailto = "silent !x-term -e mutt '%u'"
let g:utl_cfg_hdl_mt_generic = '!rifle "%p"'
" }}}

set secure
" vim: foldmethod=marker expandtab ts=2 sw=2 nowrap
