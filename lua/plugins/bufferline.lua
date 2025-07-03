return {
    'akinsho/bufferline.nvim',
    event = "VeryLazy",
    version = "*", 
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function ()
        vim.opt.termguicolors = true
        require("bufferline").setup{}
    end,
}
