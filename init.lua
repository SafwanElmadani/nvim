
require("lazy_plug_manager")
require("core.mappings").setup()
require("core.mynvimsettings") -- lua/mynvimsettings.lua


vim.cmd [[
source $HOME/.config/nvim/config/gruvbox.vim
source $HOME/.config/nvim/config/airline.vim
]]

