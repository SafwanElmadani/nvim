-- require('settings')    -- lua/settings.lua
-- require('maps')        -- lua/maps.lua
-- require('statusline')  -- lua/statusline.lua

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "c" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
  },
}

