return {
    "nvim-tree/nvim-tree.lua",
    -- cmd = { "NvimTreeToggle", "NvimTreeFindFile" },
    keys = {
      { "<leader>ee", "<cmd>NvimTreeToggle<CR>", desc = "Toggle NvimTree" },
      { "<leader>ef", "<cmd>NvimTreeFindFile<CR>", desc = "Focus Current File in NvimTree" },
    },
    version = "*",
    -- lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup {}
        vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>") -- toggle file explorer
        vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>") -- toggle file explorer
        vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>") -- toggle file explorer
    end,
}
