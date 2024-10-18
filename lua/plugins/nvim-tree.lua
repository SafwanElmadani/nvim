return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {
            git = {
                ignore = false,
              },
        }
        vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>") -- toggle file explorer
        vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>") -- toggle file explorer
        vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>") -- toggle file explorer
    end,
}
