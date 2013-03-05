" This file was modeled after other syntax definitions I've found on the web.
" Some syntax files try to support old versions of vim. I only care about 7.0+.
" Hopefully best practices have been followed. If not, send be a pull request!

" Check that highlighting isn't already on for this file
if exists("b:current_syntax") && b:current_syntax == "rpal"
    finish
endif

syn keyword rpalDefine let where in rec within fn
hi def link rpalDefine Define

syn match rpalFunction /\(fn\)\@<=\(\s\+\a\w*\)\+./ display
hi def link rpalFunction Function

syn match rpalBinding /\(let\s\+\)\@<=\a\w*/ display
hi def link rpalBinding Function

" Handle + - * / **, with some special casing as not to interfere with ->
syn match rpalArithmetic /+\|-\(>\)\@!\|\*\|\/\|\*\*/ display
hi def link rpalArithmetic Operator

syn keyword rpalOperator or not eq ne ls gr le ge aug and or
" handle the @, & and -> operators especially carefully
syn match rpalOperator /@\(\a\)\@=\|&\|->/ display
" Many of our operators are words. Some syntax highlighters remap these types of
" occurances to Statement (Jellybean does this with Python). I think it looks
" nicer.
hi def link rpalOperator Statement

syn match rpalInteger /\<\d\+\>/ display
hi def link rpalInteger Number

" Handle strings with possible escape sequences
syn match rpalString /'\(\\.\|[^']\)*'/ display
hi def link rpalString String

" Some of these aren't part of spec, but Bermudez's example c compiler accepts
" them, so we will too.
syn keyword rpalBuiltin Print print Istuple Isfunction Isdummy Isstring
syn keyword rpalBuiltin Isinteger Istruthvalue Conc conc ItoS Order Stern Stem
syn keyword rpalBuiltin Null
hi def link rpalBuiltin Function

syn keyword rpalConstant nil
hi def link rpalConstant Constant

if !exists("b:current_syntax")
    let b:current_syntax = "rpal"
endif
