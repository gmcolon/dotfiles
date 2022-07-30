" Set neovim python
let g:python3_host_prog="/usr/local/bin/python3"

runtime coc-init.vim

let g:is_win = (has('win32') || has('win64')) ? v:true : v:false
let g:is_linux = (has('unix') && !has('macunix')) ? v:true : v:false
let g:is_mac = has('macunix') ? v:true : v:false
