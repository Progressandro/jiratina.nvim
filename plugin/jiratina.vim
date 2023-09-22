" plugin/jiratina.vim
if exists('g:loaded_jiratina') | finish | endif

let s:save_cpo = &cpo
set cpo&vim

hi def link JiratinaHeader      Number
hi def link JiratinaSubHeader   Identifier

command! Jiratina lua require'jiratina'.jiratina()

let &cpo = s:save_cpo
unlet s:save_cpo

let g:loaded_jiratina = 1
