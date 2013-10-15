" Vimoutliner color file
" Maintainer:	Arnaud Pithon
" Last Change:	2013 Oct 15
"
" Adapté pour Vimoutliner à partir de wombat256

set background=dark

hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "wombat256 VO"

" General colors
hi Normal		ctermfg=254		ctermbg=234		cterm=none		guifg=#f6f3e8	guibg=#242424	gui=none
hi Cursor		ctermfg=none	ctermbg=241		cterm=none		guifg=NONE		guibg=#656565	gui=none
hi Visual		ctermfg=7		ctermbg=238		cterm=none		guifg=#f6f3e8	guibg=#444444	gui=none
" hi VisualNOS
" hi Search
hi Folded		ctermfg=103		ctermbg=238		cterm=none		guifg=#a0a8b0	guibg=#384048	gui=none
hi Title		ctermfg=7		ctermbg=none	cterm=bold		guifg=#f6f3e8	guibg=NONE		gui=bold
hi StatusLine	ctermfg=7		ctermbg=238		cterm=none		guifg=#f6f3e8	guibg=#444444	gui=italic
hi VertSplit	ctermfg=238		ctermbg=238		cterm=none		guifg=#444444	guibg=#444444	gui=none
hi StatusLineNC	ctermfg=243		ctermbg=238		cterm=none		guifg=#857b6f	guibg=#444444	gui=none
hi LineNr		ctermfg=243		ctermbg=0		cterm=none		guifg=#857b6f	guibg=#000000	gui=none
hi SpecialKey	ctermfg=244		ctermbg=236		cterm=none		guifg=#808080	guibg=#343434	gui=none
hi NonText		ctermfg=244		ctermbg=236		cterm=none		guifg=#808080	guibg=#303030	gui=none

" Vim >= 7.0 specific colors
if version >= 700
hi CursorLine					ctermbg=236		cterm=none						guibg=#2d2d2d
hi MatchParen	ctermfg=7		ctermbg=243		cterm=bold		guifg=#f6f3e8	guibg=#857b6f	gui=bold
hi Pmenu		ctermfg=7		ctermbg=238						guifg=#f6f3e8	guibg=#444444
hi PmenuSel		ctermfg=0		ctermbg=192						guifg=#000000	guibg=#cae682
endif


" Syntax highlighting
hi Keyword		ctermfg=111		cterm=none		guifg=#8ac6f2	gui=none
hi Statement	ctermfg=111		cterm=none		guifg=#8ac6f2	gui=none
hi Constant		ctermfg=173		cterm=none		guifg=#e5786d	gui=none
hi Number		ctermfg=173		cterm=none		guifg=#e5786d	gui=none
hi PreProc		ctermfg=173		cterm=none		guifg=#e5786d	gui=none
hi Function		ctermfg=192		cterm=none		guifg=#cae682	gui=none
hi Identifier	ctermfg=192		cterm=none		guifg=#cae682	gui=none
hi Type			ctermfg=192		cterm=none		guifg=#cae682	gui=none
hi Special		ctermfg=194		cterm=none		guifg=#e7f6da	gui=none
hi String		ctermfg=113		cterm=none		guifg=#95e454	gui=italic
hi Comment		ctermfg=246		cterm=none		guifg=#99968b	gui=italic
hi Todo			ctermfg=245		cterm=none		guifg=#8f8f8f	gui=italic


" Links
hi! link FoldColumn		Folded
hi! link CursorColumn	CursorLine


" vimoutliner spécifique

hi OL1 guifg=antiquewhite	ctermfg=yellow
hi OL2 guifg=lightblue	ctermfg=darkgreen
hi OL3 guifg=violet	ctermfg=darkcyan
hi OL4 guifg=red	ctermfg=darkyellow
hi OL5 guifg=antiquewhite	ctermfg=magenta
hi OL6 guifg=lightblue	ctermfg=green
hi OL7 guifg=violet	ctermfg=lightblue
hi OL8 guifg=red	ctermfg=cyan
hi OL9 guifg=white	ctermfg=white

"" colors for tags
hi outlTags guifg=darkred	ctermfg=darkred

"" color for body text
hi BT1 guifg=lightgrey	ctermfg=grey
hi BT2 guifg=lightgrey	ctermfg=grey
hi BT3 guifg=lightgrey	ctermfg=grey
hi BT4 guifg=lightgrey	ctermfg=grey
hi BT5 guifg=lightgrey	ctermfg=grey
hi BT6 guifg=lightgrey	ctermfg=grey
hi BT7 guifg=lightgrey	ctermfg=grey
hi BT8 guifg=lightgrey	ctermfg=grey
hi BT9 guifg=lightgrey	ctermfg=grey

"" color for pre-formatted text
hi PT1 guifg=blue	ctermfg=blue
hi PT2 guifg=blue	ctermfg=blue
hi PT3 guifg=blue	ctermfg=blue
hi PT4 guifg=blue	ctermfg=blue
hi PT5 guifg=blue	ctermfg=blue
hi PT6 guifg=blue	ctermfg=blue
hi PT7 guifg=blue	ctermfg=blue
hi PT8 guifg=blue	ctermfg=blue
hi PT9 guifg=blue	ctermfg=blue

"" color for tables 
hi TA1 guifg=darkviolet	ctermfg=darkred
hi TA2 guifg=darkviolet	ctermfg=darkred
hi TA3 guifg=darkviolet	ctermfg=darkred
hi TA4 guifg=darkviolet	ctermfg=darkred
hi TA5 guifg=darkviolet	ctermfg=darkred
hi TA6 guifg=darkviolet	ctermfg=darkred
hi TA7 guifg=darkviolet	ctermfg=darkred
hi TA8 guifg=darkviolet	ctermfg=darkred
hi TA9 guifg=darkviolet	ctermfg=darkred

"" color for user text (wrapping)
hi UT1 guifg=darkred	ctermfg=white
hi UT2 guifg=darkred	ctermfg=white
hi UT3 guifg=darkred	ctermfg=white
hi UT4 guifg=darkred	ctermfg=white
hi UT5 guifg=darkred	ctermfg=white
hi UT6 guifg=darkred	ctermfg=white
hi UT7 guifg=darkred	ctermfg=white
hi UT8 guifg=darkred	ctermfg=white
hi UT9 guifg=darkred	ctermfg=white

"" color for user text (non-wrapping)
hi UB1 guifg=darkgray	ctermfg=darkblue
hi UB2 guifg=darkgray	ctermfg=darkblue
hi UB3 guifg=darkgray	ctermfg=darkblue
hi UB4 guifg=darkgray	ctermfg=darkblue
hi UB5 guifg=darkgray	ctermfg=darkblue
hi UB6 guifg=darkgray	ctermfg=darkblue
hi UB7 guifg=darkgray	ctermfg=darkblue
hi UB8 guifg=darkgray	ctermfg=darkblue
hi UB9 guifg=darkgray	ctermfg=darkblue

"" colors for experimental spelling error highlighting
"" this only works for spellfix.vim with will be cease to exist soon
hi spellErr gui=underline guifg=yellow	cterm=underline ctermfg=yellow
hi BadWord gui=underline guifg=yellow	cterm=underline ctermfg=yellow

" vim:set ts=4 sw=4 noet:
