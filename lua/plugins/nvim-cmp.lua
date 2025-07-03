return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = { 
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'onsails/lspkind.nvim',
        -- For luasnip users.
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip'
    },
    -- enabled = false,
    config = function()
        -- Set up nvim-cmp.
        local cmp = require'cmp'

        cmp.setup({
            snippet = {
                -- REQUIRED - you must specify a snippet engine
                expand = function(args)
                    require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
                    -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
                end,
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            sources = cmp.config.sources({
                { name = 'nvim_lsp' },
                { name = 'luasnip' }, -- For luasnip users.
                -- { name = 'ultisnips' }, -- For ultisnips users.
            }, {
                { name = 'buffer' },
            }),
            -- this is where lspkind is used.
            formatting = {
                fields = { "kind", "abbr", "menu" },
                format = function(entry, vim_item)
                  local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
                  local strings = vim.split(kind.kind, "%s", { trimempty = true })
                  kind.kind = " " .. (strings[1] or "") .. " "
                  kind.menu = "    (" .. (strings[2] or "") .. ")"

                  return kind
                end,
            },
            -- to highlight the first selection
            completion = {
                completeopt = 'menu,menuone,noinsert'
            },
        })
    end,
}
