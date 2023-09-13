require("lazy_plug_manager")
require("core.mappings").setup()
require("core.mynvimsettings") -- lua/mynvimsettings.lua


if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    require("core.neovidesettings")
end
