return {
    'nvim-telescope/telescope.nvim',
    -- tag = '0.1.2',
    -- or                              
    -- , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim',
                     'nvim-telescope/telescope-live-grep-args.nvim',
    },
    config = function()
        local builtin = require('telescope.builtin')
        -- vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>ff', function()
            builtin.find_files({
                hidden = true,
                no_ignore = true,
                layout_config = { prompt_position = "bottom" }
            })
        end, {})
        -- vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
        vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
--- this is added for the live grep extension
        local telescope = require("telescope")
        local lga_actions = require("telescope-live-grep-args.actions")
        
        telescope.setup {
          extensions = {
            live_grep_args = {
              auto_quoting = true, -- enable/disable auto-quoting
              -- define mappings, e.g.
              mappings = { -- extend mappings
                i = {
                  ["<C-k>"] = lga_actions.quote_prompt(),
                  ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
                  -- freeze the current list and start a fuzzy search in the frozen list
                  -- ["<C-space>"] = actions.to_fuzzy_refine,
                },
              },
              -- ... also accepts theme settings, for example:
              -- theme = "dropdown", -- use dropdown theme
              -- theme = { }, -- use own theme spec
              -- layout_config = { mirror=true }, -- mirror preview pane
            }
          }
        }
        -- don't forget to load the extension
        telescope.load_extension("live_grep_args")
---
    end,
}
