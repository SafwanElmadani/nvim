-- Crosshair color (cursorline + cursorcolumn are enabled in mynvimsettings.lua).
-- Apply on VeryLazy so it runs after colorscheme setup, which would reset it.
vim.api.nvim_create_autocmd("User", {
	pattern = "VeryLazy",
	callback = function()
		vim.api.nvim_set_hl(0, "CursorLine", { bg = "#333842" })
		vim.api.nvim_set_hl(0, "CursorColumn", { bg = "#333842" })
	end,
})
return {}
