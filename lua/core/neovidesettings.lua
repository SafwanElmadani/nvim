    -- Put anything you want to happen only in Neovide here
vim.o.guifont ="JetBrainsMono Nerd Font Mono:h10"
vim.keymap.set('n', '<C-s>', ':w<CR>') -- Save
vim.keymap.set('v', '<C-c>', '"+y') -- Copy
vim.keymap.set('n', '<C-v>', '"+P') -- Paste normal mode
vim.keymap.set('v', '<C-v>', '"+P') -- Paste visual mode
vim.keymap.set('c', '<C-v>', '<C-R>+') -- Paste command mode
vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
