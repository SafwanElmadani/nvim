vim.opt.number = true
vim.opt.relativenumber = true

-- change cursor shape to block in insert mode
vim.opt.guicursor = ""

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

-- no wrap
vim.wo.wrap = false

-- spell cheker
vim.opt.spelllang = 'en_us'
vim.opt.spell = true

-- disable smartindent breaks python indenting
vim.opt.smartindent = false

-- Vim commands
-- vim.cmd('hi CursorLine   cterm=NONE ctermbg=0 ctermfg=NONE')
-- vim.cmd('hi CursorColumn   cterm=NONE ctermbg=0 ctermfg=NONE')
-- vim.cmd('set cursorline!')
-- vim.cmd('set cursorcolumn!')

-- Highlight current line
vim.opt.cursorline = true
-- Highlight current column
vim.opt.cursorcolumn = true

if vim.fn.executable("rg") == 1 then
  vim.o.grepprg = "rg --vimgrep --hidden --smart-case --glob '!.git'"
  vim.o.grepformat = "%f:%l:%c:%m"
end

local is_transparent = false
local gruvbox_bg = "#282828"

function _G.toggle_transparency()
  if is_transparent then
    -- Set to Gruvbox opaque background
    vim.cmd("highlight Normal guibg=" .. gruvbox_bg)
    vim.cmd("highlight NormalFloat guibg=" .. gruvbox_bg)
    is_transparent = false
    print("Transparency OFF")
  else
    -- Set to transparent
    vim.cmd("highlight Normal guibg=NONE")
    vim.cmd("highlight NormalFloat guibg=NONE")
    is_transparent = true
    print("Transparency ON")
  end
end

-- Create a simple keymap to call it
vim.keymap.set("n", "<leader>tr", ":lua toggle_transparency()<CR>", { desc = "Toggle transparency" })
