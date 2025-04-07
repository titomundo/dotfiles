return {
	{
		"thesimonho/kanagawa-paper.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"sainnhe/sonokai",
	},
	{
		"eddyekofo94/gruvbox-flat.nvim",
		priority = 1000,
		enabled = true,
	},
	{
		"morhetz/gruvbox",
	},
	{
		"navarasu/onedark.nvim",
	},
	{
		"mweisshaupt1988/neobeans.vim",
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
