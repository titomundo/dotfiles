return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = {},
	},
	{
		"sainnhe/gruvbox-material",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.gruvbox_material_enable_italic = true
			vim.cmd.colorscheme("gruvbox-material")
		end,
	},
	{
		"nickkadutskyi/jb.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			-- require("jb").setup({transparent = true})
			vim.cmd("colorscheme jb")
		end,
	},
}
