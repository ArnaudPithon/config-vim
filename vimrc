" ~/.vimrc
" Maintainer: Arnaud Pithon <apithon@free.fr>

" Pour le mapping de touches se renseigner sur mapleader
let mapleader = ","

" Mode de complétion
set wildmenu
let wildmode = "longest:full,full"

" Mapping {{{1
" Défilement du texte avec les touches fléchées.
noremap <Up> <C-y>
noremap <Down> <C-e>
noremap <Left> 3zh
noremap <Right> 3zl
" }}}

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
  au BufWinEnter * hi link UtlTag Comment
" au BufWinEnter * hi link UtlUrl Underlined
  au BufWinEnter * hi UtlUrl cterm=underline

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
  let g:voom_return_key = '<F8>'
  let g:voom_tab_key = '<F9>'
" }}}
" plugin vimwiki {{{
" Le reste de la conf: <url:./ftplugin/vimwiki.vim>
  let wiki = {}
  let wiki.nested_syntaxes = {'python': 'python', 'sh': 'sh',
        \ 'lisp': 'lisp', 'vim': 'vim', 'perl': 'perl', 'ruby': 'ruby'}
  let wiki.ext = '.w'

  let DwarfFortress = {}
  let DwarfFortress.path = '~/Documents/jeux/Dwarf_Fortress/vimwiki/'
  let DwarfFortress.ext = '.w'

  let g:vimwiki_list = [wiki, DwarfFortress]
  let g:vimwiki_ext2syntax = {'.w': 'vimwiki'}
" }}}

set secure
" vim: foldmethod=marker expandtab ts=2 sw=2 nowrap
