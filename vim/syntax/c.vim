
"========================================================
" Highlight	All	Math	Operator
"========================================================
" C math operators
syn match cMathOperator display "[-+/*/%=]"
" C pointer operators
syn match cPointerOperator display "->/|/."
" C logical operators - boolean results
syn match cLogicalOperator display "[!<>]=/="
syn match cLogicalOperator display "<"
syn match cLogicalOperator display ">"
syn match cLogicalOperator display "!="
syn match cLogicalOperator display "&"
syn match cLogicalOperator display "|"

" C bit operators
syn match cBinaryOperator display "/(&/||/|/^/|<</|>>/)=/="
" More C logical operators - highlight in preference to binary
syn match cLogicalOperator display "&&/|||"
syn match cLogicalOperatorError display "/(&&/|||/)="
" Math Operator
hi	cMathOperator			ctermfg=lightred
hi	cPointerOperator		ctermfg=lightred
hi	cLogicalOperator		ctermfg=lightred
hi 	cBinaryOperator		ctermfg=lightred
hi	cBinaryOperatorError		ctermfg=lightred
hi	cLogicalOperator		ctermfg=lightred
hi	cLogicalOperatorError	ctermfg=lightred

"========================================================
" Highlight	All	Functions
"========================================================
syn match cFuntions display "[a-zA-Z_]\{-1,}\s\{-0,}(\{1}"ms=s,me=e-1
hi 	cFuntions		ctermfg=lightblue
