" Vim color file
" Maintainer: Arno
" Last Change: 
"
" Basé sur wombat256mod
" http://www.vim.org/scripts/script.php?script_id=2465
"
" <url:vimhelp:group-name>

set background=dark

if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "contact"

" General colors
hi Normal	ctermfg=252		ctermbg=234		cterm=none
hi Cursor	ctermfg=228		ctermbg=234		cterm=reverse
hi Visual	ctermfg=251		ctermbg=239		cterm=none
hi VisualNOS	ctermfg=251		ctermbg=236		cterm=none
hi Search	ctermfg=black		ctermbg=darkyellow	cterm=none
hi Folded	ctermfg=103		ctermbg=237		cterm=none
hi Title	ctermfg=230					cterm=bold
hi StatusLine	ctermfg=black		ctermbg=grey		cterm=italic
hi VertSplit	ctermfg=darkgrey	ctermbg=238		cterm=none
hi StatusLineNC	ctermfg=black		ctermbg=darkgrey	cterm=italic
hi LineNr	ctermfg=241		ctermbg=232		cterm=none
hi SpecialKey	ctermfg=241		ctermbg=235		cterm=none
hi WarningMsg	ctermfg=203
hi ErrorMsg	ctermfg=196		ctermbg=236		cterm=bold

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine				ctermbg=236		cterm=none
  hi MatchParen	ctermfg=228		ctermbg=101		cterm=bold
  hi Pmenu	ctermfg=230		ctermbg=238
  hi PmenuSel	ctermfg=232		ctermbg=192
endif

" Diff highlighting
hi DiffAdd				ctermbg=17
hi DiffDelete	ctermfg=60		ctermbg=234		cterm=reverse
hi DiffText				ctermbg=53		cterm=none
hi DiffChange				ctermbg=237

"hi CursorIM
"hi Directory
"hi IncSearch
"hi Menu
"hi ModeMsg
"hi MoreMsg
"hi PmenuSbar
"hi PmenuThumb
"hi Question
"hi Scrollbar
"hi SignColumn
"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare
"hi TabLine
"hi TabLineFill
"hi TabLineSel
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu


" Syntax highlighting
hi Keyword	ctermfg=111		cterm=none
hi Statement	ctermfg=111		cterm=none
hi Constant	ctermfg=173		cterm=none
hi Number	ctermfg=173		cterm=none
hi PreProc	ctermfg=173		cterm=none
hi Function	ctermfg=192		cterm=none
hi Identifier	ctermfg=192		cterm=none
hi Type		ctermfg=186		cterm=none
hi Special	ctermfg=229		cterm=none
hi String	ctermfg=113		cterm=none
hi Comment	ctermfg=246		cterm=none
hi Todo		ctermfg=101		cterm=none


" Links
hi! link FoldColumn	Folded
hi! link CursorColumn	CursorLine
hi! link NonText	LineNr

" vim:set ts=8 sw=2 noet:
