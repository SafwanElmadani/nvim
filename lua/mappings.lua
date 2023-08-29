-- my_mappings.lua

local M = {}

M.setup = function()

  local map_opts = { noremap = true, silent = false }

  -- nnoremap mappings
  vim.api.nvim_set_keymap('n', '<Leader>ff', ':Files<CR>', map_opts)
  vim.api.nvim_set_keymap('n', '<Leader>rr', ':Ag<CR>', map_opts)
  vim.api.nvim_set_keymap('n', '<Leader>w', ':BLines<CR>', map_opts)

  -- nmap mappings with silent
  local silent_opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('n', '<c-k>', ':wincmd k<CR>', silent_opts)
  vim.api.nvim_set_keymap('n', '<c-j>', ':wincmd j<CR>', silent_opts)
  vim.api.nvim_set_keymap('n', '<c-h>', ':wincmd h<CR>', silent_opts)
  vim.api.nvim_set_keymap('n', '<c-l>', ':wincmd l<CR>', silent_opts)

  -- split resize mappings
  vim.api.nvim_set_keymap('n', '<A-l>', ':vertical resize +5<CR>', map_opts)
  vim.api.nvim_set_keymap('n', '<A-h>', ':vertical resize -5<CR>', map_opts)
  vim.api.nvim_set_keymap('n', '<A-k>', ':resize -5<CR>', map_opts)
  vim.api.nvim_set_keymap('n', '<A-j>', ':resize +5<CR>', map_opts)

  -- inoremap mappings
  vim.api.nvim_set_keymap('i', '<C-S>', '<Esc>:update<CR>i', map_opts)

  -- other nnoremap mappings
  vim.api.nvim_set_keymap('n', '<Leader>t', ':set nonumber norelativenumber | set signcolumn=no<CR>', map_opts)
  vim.api.nvim_set_keymap('n', '<Leader>tt', ':set number relativenumber | set signcolumn=yes:1<CR>', map_opts)
  vim.api.nvim_set_keymap('n', '<Leader>cc', ':set cursorline! | set cursorcolumn!<CR>', map_opts)

  -- more nmap mappings
  vim.api.nvim_set_keymap('n', 'm', 'nzz', silent_opts)
  vim.api.nvim_set_keymap('n', 'M', 'Nzz', silent_opts)

end

return M

