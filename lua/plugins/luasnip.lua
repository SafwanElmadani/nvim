return {
    "L3MON4D3/LuaSnip",
    event = "InsertEnter",
    dependencies = { 
        'rafamadriz/friendly-snippets',
    },
    -- follow latest release.
    version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    -- install jsregexp (optional!).
    build = "make install_jsregexp",
    config = function()
        local ls = require("luasnip")
        local s = ls.snippet
        ls.config.set_config({ -- Setting LuaSnip config
            -- -- Enable autotriggered snippets
            enable_autosnippets = true,
            history = true,
            updateevents = "TextChanged,TextChangedI",

            -- -- Use Tab (or some other key if you prefer) to trigger visual selection
            store_selection_keys = "<Tab>",
        })
        require("luasnip.loaders.from_vscode").lazy_load()
        -- require("luasnip.loaders.from_snipmate").lazy_load()

        vim.keymap.set({"i", "s"}, "<C-K>", function() 
           if ls.expand_or_jumpable() then
               ls.expand_or_jump()
           end
        end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

        vim.keymap.set({"i", "s"}, "<C-L>", function()
            if ls.choice_active() then
                ls.change_choice(1)
            end
        end, {silent = true})
end,
}
