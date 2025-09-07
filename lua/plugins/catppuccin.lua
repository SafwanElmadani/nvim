return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        -- Keymaps for quick switching
        vim.keymap.set("n", "<leader>ll", function() vim.cmd.colorscheme("catppuccin-latte") end, { desc = "Latte" })
        vim.keymap.set("n", "<leader>lf", function() vim.cmd.colorscheme("catppuccin-frappe") end, { desc = "Frappe" })
        vim.keymap.set("n", "<leader>lm", function() vim.cmd.colorscheme("catppuccin-macchiato") end, { desc = "Macchiato" })
        vim.keymap.set("n", "<leader>lo", function() vim.cmd.colorscheme("catppuccin-mocha") end, { desc = "Mocha" })
    end
}

