vim.opt.number = true
vim.opt.relativenumber = true

-- This was affecting the performace
-- -- foldsettings
-- vim.opt.foldmethod = 'syntax'
-- -- needs to be set to a large number
-- vim.opt.foldlevelstart = 20
-- vim.opt.foldenable = false

-- mouse settings
vim.opt.mouse = 'a'

-- show existing tab with 4 spaces width
vim.opt.tabstop = 4
-- when indenting with '>', use 4 spaces width
vim.opt.shiftwidth = 4
-- On pressing tab, insert 4 spaces
vim.opt.expandtab = true

vim.opt.background = 'dark'    -- Setting dark mode
-- colorscheme tokyonight-storm
vim.opt.termguicolors = true

-- Vim commands
vim.cmd('hi CursorLine   cterm=NONE ctermbg=0 ctermfg=NONE')
vim.cmd('hi CursorColumn   cterm=NONE ctermbg=0 ctermfg=NONE')
vim.cmd('set cursorline!')
vim.cmd('set cursorcolumn!')
