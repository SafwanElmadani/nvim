return {
    "catppuccin/nvim",
    event = "VeryLazy",
    name = "catppuccin",
    priority = 1000,
    config = function()
        vim.keymap.set("n", "<leader>lt", function() vim.cmd("colorscheme catppuccin-latte") end)
    end
}

