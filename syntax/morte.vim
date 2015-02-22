" Vim syntax file
" Language: Morte
" Maintainer: Flaviu Andrei Csernik
" Latest Revision: 22 February 2015

if exists("b:current_syntax")
  finish
endif

syntax keyword mtTodo contained TODO FIXME NOTE
highlight link mtTodo Todo

syntax match   mtComment "\v--.*$" contains=mtTodo
highlight link mtComment Comment

syntax match mtConst "\v(:)@<=\s*[*]"
syntax match mtConst "\v(:)@<=\s*BOX"
highlight link mtConst Constant

syntax match   mtId "\v\s*([a-zA-Z_][a-zA-Z0-9_]*|[\!\#\$\%\&\*\+\.\/\<\=\>\?\@\\\^\|\-\~])\s*(:)@="
highlight link mtId Identifier

syntax match mtForall "\\/"
syntax match mtForall "\v\|\~\|"
syntax match mtForall "forall"
syntax match mtForall "Π"
syntax match mtForall "∀" 
highlight link mtForall Keyword

let b:current_syntax = "morte"
