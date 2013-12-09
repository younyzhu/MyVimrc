" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "ron"

hi Normal			guifg=cyan				guibg=black
hi NonText			guifg=brown
hi comment			guifg=green            ctermfg=darkgrey
hi constant			guifg=cyan				
hi identifier		guifg=cyan				ctermfg=blue
hi statement		guifg=lightblue	
hi preproc			guifg=green
hi constant			guifg=Red
hi Repeat			ctermfg=green 		 	ctermfg=Yellow
hi type				guifg=green				ctermfg=green
hi special			guifg=yellow
hi ErrorMsg			guifg=Black				guibg=Red
hi WarningMsg		guifg=Black				guibg=Green
hi Error			guibg=Red
hi Todo				guifg=Black				guibg=orange
hi Cursor			guibg=#60a060			guifg=#00ff00
hi Search			guibg=lightslateblue
hi IncSearch		guibg=steelblue
hi LineNr			guifg=darkgrey			ctermfg=white		ctermbg=16
hi title			guifg=darkgrey
hi StatusLineNC		guifg=lightblue			guibg=darkblue
hi StatusLine		gui=bold				guifg=cyan			guibg=blue
hi label			guifg=gold2
hi operator			guifg=orange			ctermfg=blue
hi clear Visual		guibg=lightred			
hi Visual			term=reverse			cterm=reverse	   gui=reverse
hi DiffChange	    guibg=darkgreen
hi DiffText			guibg=olivedrab
hi DiffAdd			guibg=slateblue
hi DiffDelete	    guibg=coral
hi Folded			guibg=gray30
hi FoldColumn		guibg=gray30			guifg=white
hi cIf0				guifg=gray
