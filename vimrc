" ~/.vimrc
" Maintainer: arno <apithon@free.fr>

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

colorscheme contact

" Options {{{1
" portée globale {{{2

" Compatibilité Vi {{{3
" Fonctionne en tant que Vim plutôt que Vi.
" Modifie plusieurs options, doit donc être réglé très tôt.
set nocompatible

" Empèche l'écriture sur un fichier en lecture seule.
set cpoptions+=W
" }}}3

set undodir=$XDG_CACHE_HOME/vim/undo

set encoding=utf-8
set swapsync=   " Sans celà le disque est solicité à chaque modif.

set backspace&  " Restaure le réglage par défaut.

set history=500

" suffixes {{{3
" Files with these suffixes get a lower priority when multiple files match a
" wildcard.
set suffixes+=.aux,.log,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set suffixes+=.dvi,.ps,.pdf
" image formats
set suffixes+=.jpg,.jpeg,.gif,.bmp,.pbm,.pgm,.ppm,.tga,.xbm,.xpm,.tif,.tiff,.png,.fli,.gl,.dl,.xcf,.xwd,.svg
" audio formats
set suffixes+=.ogg,.mp3,.wav,.mka,.flac
" video formats
set suffixes+=.mpg,.mpeg,.avi,.ogm,.ogv,.m2v,.wmv,.VOB,.mkv,.m2t,.ts,.flv,.mp4"}}}
" suffixes }}}3

" ligne de statut {{{3
" Voir l'option "statusline" pour régler plus en détail.
set showmode
set showcmd
set ruler
" ligne de statut }}}3

" recherche {{{3
set incsearch
set ignorecase smartcase
if &t_Co > 2 || has("gui_running")
  set hlsearch
endif
" recherche }}}3

" Réaffecte le terminal détecté, quand utilisé dans tmux.
" Entraine un léger bug sur la couleur du fond mais permet d'avoir l'italic.
" Une autre option serait de réafecter t_ZH,t_ZR (d'autres ?) mais je crains
" les effets de bord (voir `:h term' et `:set termcap')
if &term == "screen-256color"   " valeur affectée par tmux
  let &term = "rxvt-unicode-256color"
endif

if &t_Co > 2 || has("gui_running")
  syntax on
endif

set visualbell

set scrolloff=3
set sidescrolloff=1 sidescroll=1

set listchars=tab:»·,trail:·,nbsp:␣
set listchars+=precedes:<,extends:>

set showbreak=~

set cryptmethod=blowfish

" Mode de complétion
set wildmenu
let wildmode = "longest:full,full"

" Programme utilisé pour formater le texte avec `gq`.
" Le formatage habituel de vim peut être obtenu avec `gw`.
set formatprg=par\ w55\ e1

" portée locale à la fenêtre {{{2

set list
set nowrap
set linebreak
"set relativenumber " numérote les lignes relativement à la ligne courante

" portée locale au buffer {{{2

" Indentation {{{3
" (voir la recette "Indenting lines" p.42 du livre vim-recipes)
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab    " option globale !
" Indentation }}}3

" Définit quelles bases considérer pour les commandes CTRL-A et CTRL-X
set nrformats=alpha,hex

" }}}
" }}}

" Fonctions {{{1

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" }}}

" AutoCommandes {{{1

if has("autocmd")
  filetype plugin indent on

  autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  " Also don't do it when the mark is in the first line, that is the default
  " position when opening a file.
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

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

  "au BufReadCmd *.epub call zip#Browse(expand("<amatch>"))
  autocmd BufWritePost ~/.config/vim/vimrc   source ~/.config/vim/vimrc

endif " has("autocmd")

" }}}

" Mapping {{{1

let mapleader = ","

" Tab fait un Esc, Maj+Tab fait un Tab
inoremap <Tab> <Esc>
inoremap <S-Tab> <Tab>
" Même chose, mais en mode visuel
vnoremap <Tab> <Esc>
vnoremap <S-Tab> <Tab>

" Déplacements facilités dans les tags
"noremap é <C-J>
noremap ê <C-T>
noremap à <C-O>

" [HJKL] -> {CTSR}
" ————————————————
" {cr} = « gauche / droite »
noremap c h
noremap r l
" {ts} = « haut / bas »
noremap t j
noremap s k
" {CR} = « haut / bas de l'écran »
noremap C H
noremap R L
" Corollaire : repli suivant / précédent
noremap zt zj
noremap zs zk
" Déplacement entre fenêtres
noremap ét <C-w>j
noremap és <C-w>k
noremap éc <C-w>h
noremap ér <C-w>l
noremap éw <C-w>w
noremap éW <C-w>W
noremap éè <C-w>t
noremap éb <C-w>b
noremap ép <C-w>p
noremap éP <C-w>P
" Déplacement des fenêtres
noremap éC     <C-w>H
noremap <C-W>C <C-w>H
noremap éR     <C-w>L
noremap <C-W>R <C-w>L
noremap éT     <C-w>J
noremap <C-W>T <C-w>J
noremap éS     <C-w>K
noremap <C-W>S <C-w>K
noremap éÈ     <C-w>T
noremap <C-W>È <C-w>T


" {HJKL} <- [CTSR]
" ————————————————
" {J} = « Jusqu'à »            (j = suivant, J = précédant)
noremap j t
noremap J T
" {H} = « Change »             (h = attend un mvt, H = jusqu'à la fin de ligne
noremap h c
noremap H C
" {L} = « Remplace »           (l = un caractère slt, L = reste en « Remplace
noremap l r
noremap L R
" {K} = « Substitue »          (k = caractère, K = ligne)
noremap k s
noremap K S
" Corollaire : correction orthographique
noremap ]k ]s
noremap [k [s
" <URL:vimhelp:K>
noremap S K
" Évite un conflit avec le plugin manpageview
nunmap K

" Désambiguation de {g}
" —————————————————————
" ligne écran précédente / suivante (à l'intérieur d'une phrase)
noremap gs gk
noremap gt gj
" tab suivant / précédent
noremap gè gt
noremap gÈ gT

noremap gT gJ

" Défilement du texte avec les touches fléchées.
noremap <Up> <C-y>
noremap <Down> <C-e>
noremap <Left> 3zh
noremap <Right> 3zl
" }}}

" Plugins {{{1
" plugin buftabs {{{
" http://www.vim.org/scripts/script.php?script_id=1664
let g:buftabs_only_basename=1
" }}}
" plugin UTL {{{
" <URL:config:#r=hints>
" Utilise des noms de groupe standard pour mettre en valeur les liens
" (voir <URL:vimhelp:group-name>)
  au BufWinEnter * hi link UtlTag Comment
" au BufWinEnter * hi link UtlUrl Underlined
  au BufWinEnter * hi UtlUrl cterm=underline

  let g:utl_cfg_hdl_scm_http_system = "silent !luakit '%u#%f' &"
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
  let wiki.path = '~/Documents/wikis/main/'
  let wiki.nested_syntaxes = {'python': 'python', 'sh': 'sh',
        \ 'lisp': 'lisp', 'vim': 'vim', 'perl': 'perl',
        \ 'ruby': 'ruby', 'roff': 'nroff'}
  let wiki.ext = '.w'

  let DwarfFortress = {}
  let DwarfFortress.path = '~/Documents/jeux/Dwarf_Fortress/vimwiki/'
  let DwarfFortress.ext = '.w'

  let simulation = {}
  let simulation.path = '~/Documents/wikis/simulation'
  let simulation.ext = '.w'

  let Pokemon = {}
  let Pokemon.path = '~/Documents/jeux/Pokémon/vimwiki/'
  let Pokemon.ext = '.w'

  let g:vimwiki_list = [wiki, DwarfFortress, simulation, Pokemon]
  let g:vimwiki_ext2syntax = {'.w': 'vimwiki'}

  " BUG: Je ne comprends pas pourquoi ça ne fonctionne pas.
  let g:vimwiki_global_ext = 0
" }}}
" plugin Calendar {{{
  let g:calendar_keys = { 'goto_today':'T', 'redisplay':'l',
        \ 'goto_prev_month':'<', 'goto_next_month':'>',
        \ 'goto_prev_year':'(',  'goto_next_year':')'}
  let g:calendar_monday = 1
" }}}
" plugin Project {{{
" <url:helptags:project-flags>
" g : map <F12> pour ouvrir / fermer la fenêtre de Project.
let g:proj_flags  = 'imstg'
" }}}
" plugin GoldenView {{{
" Je préfère qu'il soit désactivé par défaut. D'une
" parcequ'il fache le plugin Project. De deux, pour
" prendre le temps d'apprendre à utiliser correctement
" ce que propose Vim avant de chercher une béquille.
let g:goldenview__enable_at_startup = 0
" }}}

" }}}

runtime macros/matchit.vim

set secure
" vim: foldmethod=marker expandtab ts=2 sw=2 nowrap
