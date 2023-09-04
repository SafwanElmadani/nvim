-- my_mappings.lua

local M = {}

M.setup = function()

  -- nnoremap mappings
  vim.keymap.set('n', '<Leader>ff', '<cmd>Files<CR>', {silent = true})
  vim.keymap.set('n', '<Leader>rr', '<cmd>Ag<CR>', {silent = true})
  vim.keymap.set('n', '<Leader>w', '<cmd>BLines<CR>', {silent = true})

  vim.keymap.set('n', '<c-k>', '<cmd>wincmd k<CR>', {silent = true})
  vim.keymap.set('n', '<c-j>', '<cmd>wincmd j<CR>', {silent = true})
  vim.keymap.set('n', '<c-h>', '<cmd>wincmd h<CR>', {silent = true})
  vim.keymap.set('n', '<c-l>', '<cmd>wincmd l<CR>', {silent = true})

  -- split resize mappings
  vim.keymap.set('n', '<A-l>', '<cmd>vertical resize +5<CR>', {silent = true})
  vim.keymap.set('n', '<A-h>', '<cmd>vertical resize -5<CR>', {silent = true})
  vim.keymap.set('n', '<A-k>', '<cmd>resize -5<CR>', {silent = true})
  vim.keymap.set('n', '<A-j>', '<cmd>resize +5<CR>', {silent = true})

  vim.keymap.set('i', '<C-S>', '<Esc><cmd>update<CR>i', {silent = true})

  -- other nnoremap mappings
  vim.keymap.set('n', '<Leader>t', '<cmd>set nonumber norelativenumber | set signcolumn=no<CR>', {silent = true})
  vim.keymap.set('n', '<Leader>tt', '<cmd>set number relativenumber | set signcolumn=yes:1<CR>', {silent = true})
  vim.keymap.set('n', '<Leader>cc', '<cmd>set cursorline! | set cursorcolumn!<CR>', {silent = true})

  vim.keymap.set('n', 'm', 'nzz', {silent = true})
  vim.keymap.set('n', 'M', 'Nzz', {silent = true})

-- buffer navigation
  vim.keymap.set('n', '<Tab>', '<cmd>bnext<CR>', {silent = true})
  vim.keymap.set('n', '<S-Tab>', '<cmd>bprevious<CR>', {silent = true})


end

return M

