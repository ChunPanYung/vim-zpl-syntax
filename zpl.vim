" Vim syntax file
" Language: Zebra Programming Language

" Do not load this file if filetype is already defined
if exists("b:current_syntax")
    finish
endif
" Set filetype, also put the following line to: filetype.vim
au BufRead,BufNewFile *.zpl set filetype=zpl

" Matches
syn match locationNumber '\d\+,\d\+,'
syn match locationNumber '[-+]\d\+,[-+]\d\+'

" Keywords
syn match labelBlock '\^XA'
syn match labelBlock '\^XZ'
syn match lineComment '\^FX.*$'

syn match location '\^FO' nextgroup=locationNumber skipwhite

syn match dataCell '\^FD'
syn match dataCell '\^FS'

syn match globalFont '\^CF'

syn match scanCode '\^B[A-Z]'
syn match graphicBox '\^GB' nextgroup=locationNumber skipwhite

" set current syntax to variable
let b:current_syntax = "zpl"

" highlight them all
hi def link labelBlock       Constant
hi def link lineComment      Comment

hi def link location         Type
hi def link dataCell         Identifier

hi def link globalFont       Statement
hi def link scanCode         Special
hi def link graphicBox       Special
