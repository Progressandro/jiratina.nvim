if exists("g:loaded_jiratina")
  finish
endif
let g:loaded_jiratina = 1

let s:jiratina_deps_loc = expand("<sfile>:p:h") . "/../lua/jiratina/deps"
exe "lua package.path = package.path .. ';" . s:jiratina_deps_loc . "/lua-?/init.lua'"

command! -nargs=0 JiraLogin lua require("jiratina").login()
command! -nargs=0 JiraLogout lua require("jiratina").logout()
