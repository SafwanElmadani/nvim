-- Installs base16-nvim and applies the Material You palette that the Noctalia
-- shell writes (via matugen) into lua/matugen.lua. That file is regenerated on
-- every theme change, so do not hand-edit it; theme-aware tweaks belong here or
-- in the relevant plugin file, sourced from the live base16 palette.
return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require("matugen").setup()
		end,
	},
}
