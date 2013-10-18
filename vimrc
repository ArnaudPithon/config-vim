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

" plugin UTL {{{
" <URL:config:#r=hints>
" Utilise des noms de groupe standard pour mettre en valeur les liens
" (voir <URL:vimhelp:group-name>)
" au BufWinEnter * hi link UtlTag PreProc
" au BufWinEnter * hi link UtlUrl Underlined
" au BufWinEnter * hi UtlUrl cterm=underline

  let g:utl_cfg_hdl_scm_http_system = "silent !konqueror '%u#%f' &"
  let g:utl_cfg_hdl_scm_mailto = "silent !x-term -e mutt '%u'"
  let g:utl_cfg_hdl_mt_generic = '!rifle "%p"'
  let g:utl_cfg_hdl_mt_application_pdf = 'silent !okular %p#%f &'
" }}}
" plugin UltiSnips {{{
  let g:UltiSnipsExpandTrigger = "<S-Tab>"
" }}}
" plugin Voom {{{ 
" <URL:vimhelp:voom_shuttle_keys>
let g:voom_return_key = '<C-Return>'
let g:voom_tab_key = '<C-Tab>'
" }}}
" plugin vimwiki {{{
let wiki = {}
let wiki.nested_syntaxes = {'python': 'python', 'sh': 'sh', 'lisp': 'lisp', 'vim': 'vim', 'perl': 'perl', 'ruby': 'ruby'}

let DwarfFortress = {}
let DwarfFortress.path = '~/Documents/jeux/Dwarf_Fortress/vimwiki/'

let g:vimwiki_list = [wiki, DwarfFortress]
" }}}

set secure
" vim: foldmethod=marker expandtab ts=2 sw=2 nowrap
