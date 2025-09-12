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

        -- Highlight overrides
        local function set_highlights()
            -- vim.api.nvim_set_hl(0, "CursorLine",   { bg = "#45475a" })
            -- vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#45475a" })
            vim.api.nvim_set_hl(0, "CursorLine",   { bg = "#353746" })
            vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#353746" })

        end

        -- Apply immediately if a catppuccin-* colorscheme is already loaded
        if vim.g.colors_name and vim.g.colors_name:match("^catppuccin%-") then
            set_highlights()
        end

        -- Re-apply whenever colorscheme changes
        vim.api.nvim_create_autocmd("ColorScheme", {
            callback = function(args)
                if args.match:match("^catppuccin%-") then
                    set_highlights()
                end
            end,
        })
        --- set default theme
        vim.cmd.colorscheme "catppuccin-mocha"
    end,
}
