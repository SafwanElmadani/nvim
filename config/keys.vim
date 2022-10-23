set number
" disable mouse clicks
set mouse=
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let g:indent_guides_indent_levels = 30
let g:indent_guides_guide_size = 1

nnoremap <Leader>ff :Files <CR>
nnoremap <Leader>rr :Ag <CR>
nnoremap <Leader>w :BLines <CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" split resize
" right
nnoremap <A-l> :vertical resize +5<CR>
" Left
nnoremap <A-h> :vertical resize -5<CR>
" up
nnoremap <A-k> :resize -5<CR>
" down
nnoremap <A-j> :resize +5<CR>

" nnoremap <C-S> :update <CR>
inoremap <C-S> <Esc> :update <CR>i

nnoremap <Leader>t :set nonumber \| set signcolumn=no<CR>
nnoremap <Leader>tt :set number \| set signcolumn=yes:1<CR>

"insert newline under
nmap oo o<Esc>k 
"insert newline above
nmap OO O<Esc>j
