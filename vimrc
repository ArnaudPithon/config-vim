" ~/.vimrc
" Maintainer: Arnaud Pithon <apithon@free.fr>
" Last modified: 2013-11-04 14:13:30+0100

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

  " If buffer modified, update any 'Last modified: ' in the first 20 lines.
  " 'Last modified: ' can have up to 10 characters before (they are
  " retained).
  " Restores cursor and window position using save_cursor variable.
  " source http://vim.wikia.com/wiki/Insert_current_date_or_time
  function! LastModified() " {{{2
    "let formatDate = '%a %b %d, %Y  %I:%M%p'
    let formatDate = '%F %T%z' " ISO8601
    if &modified
      let save_cursor = getpos(".")
      let n = min([20, line("$")])
      keepjumps exe '1,' . n . 's#^\(.\{,10}Last modified: \).*#\1' .
            \ strftime(formatDate) . '#e'
      call histdel('search', -1)
      call setpos('.', save_cursor)
    endif
  endfun " }}}2
  autocmd BufWritePre * call LastModified()

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
        \ 'lisp': 'lisp', 'vim': 'vim', 'perl': 'perl',
        \ 'ruby': 'ruby', 'roff': 'nroff'}
  let wiki.ext = '.w'

  let DwarfFortress = {}
  let DwarfFortress.path = '~/Documents/jeux/Dwarf_Fortress/vimwiki/'
  let DwarfFortress.ext = '.w'

  let g:vimwiki_list = [wiki, DwarfFortress]
  let g:vimwiki_ext2syntax = {'.w': 'vimwiki'}

  " BUG: Je ne comprends pas pourquoi ça ne fonctionne pas.
  let g:vimwiki_global_ext = 1
" }}}
" plugin Calendar {{{
  let g:calendar_keys = { 'goto_today':'T', 'redisplay':'l',
        \ 'goto_prev_month':'<', 'goto_next_month':'>',
        \ 'goto_prev_year':'(',  'goto_next_year':')'}
  let g:calendar_monday = 1
" }}}

set secure
" vim: foldmethod=marker expandtab ts=2 sw=2 nowrap
