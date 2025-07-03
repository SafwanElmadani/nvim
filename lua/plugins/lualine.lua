
return {
    "nvim-lualine/lualine.nvim",
    -- event = "VeryLazy",
    event = "VimEnter",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require('lualine').setup {
            options = {
                icons_enabled = true,
                theme = 'powerline',
            }
        }
    end,
}
