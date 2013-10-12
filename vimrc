" ~/.vimrc
" Maintainer:	Arnaud Pithon <apithon@free.fr>
" Last Change:	

" Pour le mapping de touches se renseigner sur mapleader
let mapleader = ","

source $VIMRUNTIME/macros/matchit.vim

if has("autocmd")

  autocmd! BufNewFile * silent! 0r ~/.vim/skel/tmpl.%:e
  "au BufReadCmd *.epub call zip#Browse(expand("<amatch>"))

endif

hi StatusLine   cterm=italic    ctermfg=black     ctermbg=grey
hi StatusLineNC cterm=italic    ctermfg=black     ctermbg=darkgrey
hi VertSplit    ctermfg=white

set secure
" vim: foldmethod=marker expandtab ts=2 sw=2 nowrap
