
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set termguicolors

"Nerdtree keys
nnoremap <C-t> :NERDTreeToggle<CR> 
nnoremap <C-f> :NERDTreeFind<CR>

let g:python3_host_prog= '~/virenv/base3.8/bin/python'





