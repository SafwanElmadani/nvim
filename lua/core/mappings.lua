-- my_mappings.lua

local M = {}

M.setup = function()

  -- nnoremap mappings
  vim.keymap.set('n', '<Leader>ff', ':Files<CR>', {silent = true})
  vim.keymap.set('n', '<Leader>rr', ':Ag<CR>', {silent = true})
  vim.keymap.set('n', '<Leader>w', ':BLines<CR>', {silent = true})

  -- nmap mappings with silent
  vim.keymap.set('n', '<c-k>', ':wincmd k<CR>', {silent = true})
  vim.keymap.set('n', '<c-j>', ':wincmd j<CR>', {silent = true})
  vim.keymap.set('n', '<c-h>', ':wincmd h<CR>', {silent = true})
  vim.keymap.set('n', '<c-l>', ':wincmd l<CR>', {silent = true})

  -- split resize mappings
  vim.keymap.set('n', '<A-l>', ':vertical resize +5<CR>', {silent = true})
  vim.keymap.set('n', '<A-h>', ':vertical resize -5<CR>', {silent = true})
  vim.keymap.set('n', '<A-k>', ':resize -5<CR>', {silent = true})
  vim.keymap.set('n', '<A-j>', ':resize +5<CR>', {silent = true})

  -- inoremap mappings
  vim.keymap.set('i', '<C-S>', '<Esc>:update<CR>i', {silent = true})

  -- other nnoremap mappings
  vim.keymap.set('n', '<Leader>t', ':set nonumber norelativenumber | set signcolumn=no<CR>', {silent = true})
  vim.keymap.set('n', '<Leader>tt', ':set number relativenumber | set signcolumn=yes:1<CR>', {silent = true})
  vim.keymap.set('n', '<Leader>cc', ':set cursorline! | set cursorcolumn!<CR>', {silent = true})

  -- more nmap mappings
  vim.keymap.set('n', 'm', 'nzz', {silent = true})
  -- vim.keymap.set('n', 'M', 'Nzz', {silent = true})
  vim.keymap.set('n', 'M', 'Nzz', {silent = true})


end

return M

