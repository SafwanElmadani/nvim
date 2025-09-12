return{
    "lervag/vimtex",
    lazy = false,
    init = function()
        vim.g.vimtex_syntax_enabled = 1
        -- vim.g.vimtex_view_method = 'zathura'
        vim.g.vimtex_view_method = 'sioyek'
        vim.g.vimtex_view_general_viewer = 'okular'
        vim.g.vimtex_view_general_options = [[--unique file:@pdf\#src:@line@tex]]
        vim.g.vimtex_quickfix_enabled = 1
        vim.g.vimtex_quickfix_mode = 0

        vim.g.maplocalleader = " "
    end,
}
