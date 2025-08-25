return {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
    config = function()
        vim.cmd[[
            " set to 1, nvim will open the preview window after entering the Markdown buffer
            " default: 0
            let g:mkdp_auto_start = 0
            " set to 1, the nvim will auto close current preview window when changing
            " from Markdown buffer to another buffer
            " default: 1
            let g:mkdp_auto_close = 0
            " preview page title
            " ${name} will be replace with the file name
            let g:mkdp_page_title = '${name}'

            " open preview in a new window
            function OpenMarkdownPreview (url)
              " execute "silent ! firefox --new-window " . a:url
              execute "silent ! brave-browser --new-window --app=" . a:url
            endfunction
            let g:mkdp_browserfunc = 'OpenMarkdownPreview'
        ]]
        vim.keymap.set("n", "<leader>md", function() vim.cmd("MarkdownPreview") end)
    end,
}
