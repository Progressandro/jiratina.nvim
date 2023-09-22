if exists('g:loaded_jiratina') | finish | endif " prevent loading file twice

let s:save_cpo = &cpo " save user coptions
set cpo&vim " reset them to defaults

" command to run our plugin
command! Whid lua require'jiratina'.jiratina()

let &cpo = s:save_cpo " and restore after
unlet s:save_cpo

let g:loaded_jiratina = 1
