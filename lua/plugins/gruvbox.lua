return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        -- Function to toggle between dark and light background
        local function toggle_background()
            if vim.o.background == "dark" then
                vim.o.background = "light"
            else
                vim.o.background = "dark"
            end
            vim.cmd([[colorscheme gruvbox]])
        end

        -- Set default background to dark
        -- vim.o.background = "dark"
        -- vim.cmd([[colorscheme gruvbox]])

        -- Map <leader>dt to toggle between light and dark modes
        vim.keymap.set("n", "<leader>dt", toggle_background, { desc = "Toggle light/dark theme" })
    end,
}
