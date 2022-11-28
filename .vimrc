set paste
set guicursor=
set number relativenumber
"foldsettings
set foldmethod=syntax
"needs to be set to a large number
set foldlevelstart=20
set nofoldenable
" disable mouse clicks
set mouse=
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

try
    " undercurl support
    let &t_Cs = "\e[4:3m"
    let &t_Ce = "\e[4:0m"
catch
endtry
" Change the cursor in different modes
let &t_SI = "\e[1 q"
let &t_SR = "\e[1 q"
let &t_EI = "\e[1 q"
" vim hardcodes background color erase even if the terminfo file does
" not contain bce. This causes incorrect background rendering when
" using a color theme with a background color.
let &t_ut=''


