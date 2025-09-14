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
    
        -- default leader is '\'
        -- vim.g.maplocalleader = " "
        -- to start or stop compiling: \ll'
        -- jump to the line in the pdf: \lv
        -- to clean: \lc
        -- show errors/warnings in quickfix list: \le
        -- To compile manually:
            -- latexmk -pdf myfile.tex
            -- to clean: latexmk -c
    end,
}
