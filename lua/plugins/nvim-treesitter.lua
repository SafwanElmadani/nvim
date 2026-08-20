-- this plugin has the highest impact on performance
-- migrated to the `main` branch (old `master` branch is archived, no Neovim 0.12 support)
return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter").install({
            "c", "cpp", "lua", "python", "vim", "vimdoc", "query", "bash",
            "html", "javascript", "markdown", "markdown_inline", "typescript",
            "yaml", "go",
        })

        local max_filesize = 1024 * 1024 -- 1 MB

        vim.api.nvim_create_autocmd("FileType", {
            callback = function(args)
                local buf = args.buf
                local lang = vim.treesitter.language.get_lang(vim.bo[buf].filetype)
                if not lang then
                    return
                end
                local ok, loaded = pcall(vim.treesitter.language.add, lang)
                if not (ok and loaded) then
                    return
                end

                -- skip very large files for performance
                local ok, stats = pcall(vim.uv.fs_stat, vim.api.nvim_buf_get_name(buf))
                if ok and stats and stats.size > max_filesize then
                    return
                end

                vim.treesitter.start(buf, lang)
                -- needed along with vim.opt.smartindent = false to fix python indentation
                vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
            end,
        })
    end,
}
