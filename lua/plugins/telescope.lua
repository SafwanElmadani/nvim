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
        -- Notes:
        -- Ctrl-q put all results in the quickfix list
        vim.keymap.set("n", "<leader>sr", require("telescope.builtin").resume, { noremap = true, silent = true, desc = "Resume last Telescope picker" })

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

        -- Telescope highlights, sourced from the live base16 palette so they
        -- track whatever matugen regenerates into dankcolors.lua.
        local function apply_telescope_hl()
            local ok, base16 = pcall(require, 'base16-colorscheme')
            if not ok or not base16.colors then return end
            local c = base16.colors
            local set = function(name, val) vim.api.nvim_set_hl(0, name, val) end

            set('TelescopeNormal',         { fg = c.base05, bg = c.base00 })
            set('TelescopePromptNormal',   { link = 'TelescopeNormal' })
            set('TelescopeResultsNormal',  { link = 'TelescopeNormal' })
            set('TelescopePreviewNormal',  { link = 'TelescopeNormal' })

            set('TelescopeBorder',         { fg = c.base03, bg = c.base00 })
            set('TelescopePromptBorder',   { link = 'TelescopeBorder' })
            set('TelescopeResultsBorder',  { link = 'TelescopeBorder' })
            set('TelescopePreviewBorder',  { link = 'TelescopeBorder' })

            set('TelescopeTitle',          { fg = c.base0A, bg = c.base00, bold = true })
            set('TelescopePromptTitle',    { link = 'TelescopeTitle' })
            set('TelescopeResultsTitle',   { link = 'TelescopeTitle' })
            set('TelescopePreviewTitle',   { link = 'TelescopeTitle' })

            set('TelescopeSelection',        { fg = c.base05, bg = c.base02, bold = true })
            set('TelescopeSelectionCaret',   { fg = c.base0A, bg = c.base02 })
            set('TelescopeMultiSelection',   { fg = c.base0E })

            set('TelescopeMatching',       { fg = c.base0A, bold = true })
            set('TelescopePromptPrefix',   { fg = c.base0A, bg = c.base00 })
            set('TelescopePromptCounter',  { fg = c.base03, bg = c.base00 })
        end

        apply_telescope_hl()

        vim.api.nvim_create_autocmd('ColorScheme', {
            group = vim.api.nvim_create_augroup('TelescopeBase16Hl', { clear = true }),
            callback = apply_telescope_hl,
        })

        -- Re-apply after Noctalia/matugen rewrites lua/matugen.lua. Its own
        -- SIGUSR1 handler reloads the base16 palette but doesn't fire ColorScheme.
        local matugen_path = vim.fn.stdpath('config') .. '/lua/matugen.lua'
        if not _G._telescope_hl_watcher then
            local uv = vim.uv or vim.loop
            _G._telescope_hl_watcher = uv.new_fs_event()
            _G._telescope_hl_watcher:start(matugen_path, {}, vim.schedule_wrap(function()
                vim.defer_fn(apply_telescope_hl, 50)
            end))
        end
    end,
}
