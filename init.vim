source $HOME/.config/nvim/config/keys.vim
source $HOME/.config/nvim/config/vimsettings.vim
call plug#begin('~/.config/nvim/plugged')

" Declare the list of plugins.
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

"file and directory search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"language servers
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"theme
Plug 'morhetz/gruvbox'
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

"statusline and tab
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

"nvim lsp client
Plug 'neovim/nvim-lspconfig'

"git integrations
Plug 'airblade/vim-gitgutter'

"solidity stuff
Plug 'TovarishFin/vim-solidity'

Plug 'nathanaelkane/vim-indent-guides'

Plug 'jpalardy/vim-slime'

"For markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"lua require('init')

source $HOME/.config/nvim/config/vimslime.vim
source $HOME/.config/nvim/config/vim-indent.vim
source $HOME/.config/nvim/config/snips.vim
source $HOME/.config/nvim/config/gruvbox.vim

source $HOME/.config/nvim/config/airline.vim
source $HOME/.config/nvim/config/markdown.vim

source $HOME/.config/nvim/config/nerdtree.vim
source $HOME/.config/nvim/config/fzfconf.vim

let g:python3_host_prog='~/virenv/base3.8/bin/python'

source $HOME/.config/nvim/config/cocconf.vim
