scriptencoding utf-8

if exists('g:loaded_to_colored_html')
  finish
endif
let g:loaded_to_colored_html = 1

let s:save_cpo = &cpo
set cpo&vim

command! TOcoloredHTML :call tocoloredhtml#exec()

let &cpo = s:save_cpo
unlet s:save_cpo
