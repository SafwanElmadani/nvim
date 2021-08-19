source $HOME/.config/nvim/vim-plug/plugins.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/themes/airline.vim
set number
set signcolumn=no
" Start NERDTree and leave the cursor in it.
nmap <F6> :NERDTreeToggle<CR>
nnoremap <C-S> :update<cr>
inoremap <C-S> <Esc>:update<cr>gi
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
set path=.,,**
nnoremap <C-Down> :tabclose<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
