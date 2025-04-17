return {
	{
	    "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = {}
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
