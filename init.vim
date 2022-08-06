
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set termguicolors

"Nerdtree keys
nnoremap <C-t> :NERDTreeToggle<CR> 

let g:python3_host_prog= '~/virenv/base3.8/bin/python'

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

nnoremap <Leader>f :Files <CR>
nnoremap <Leader>r :Ag <CR>
nnoremap <Leader>w :BLines <CR>


nnoremap <C-S> :update <CR>
inoremap <C-S> <Esc> :update <CR>i
