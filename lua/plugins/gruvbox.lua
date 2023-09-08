return {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
        vim.keymap.set("n", "<leader>dt", function() 
         vim.o.background = "dark" -- or "light" for light mode
        -- vim.o.background = "light" -- or "light" for light mode
         vim.cmd([[colorscheme gruvbox]])
    end)
         vim.o.background = "dark" -- or "light" for light mode
        -- vim.o.background = "light" -- or "light" for light mode
         vim.cmd([[colorscheme gruvbox]])
    end,

}
