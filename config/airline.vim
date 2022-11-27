" airline statusline config
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" dont show buffer in tab after closing
let g:airline#extensions#tabline#show_buffers = 0
" enable powerline fonts
let g:airline_powerline_fonts = 0

let g:airline#extensions#tabline#formatter = 'unique_tail'

" theme
let g:airline_theme= 'dark'
" always show tabs
set showtabline=2
"end airline config
