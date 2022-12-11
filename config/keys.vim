
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

nnoremap <Leader>t :set nonumber norelativenumber \| set signcolumn=no<CR>
nnoremap <Leader>tt :set number relativenumber \| set signcolumn=yes:1<CR>

nnoremap <Leader>cc :set cursorline! \| set cursorcolumn!<CR>
hi CursorLine   cterm=NONE ctermbg=0 ctermfg=NONE
hi CursorColumn   cterm=NONE ctermbg=0 ctermfg=NONE

"insert newline under
"nmap oo o<Esc>k 
"insert newline above
"nmap OO O<Esc>j
nmap m nzz
nmap M Nzz
