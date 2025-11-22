return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
		opts = {
			transparent_mode = true;
		},
	},
	{
		"yuttie/sublimetext-spacegray.vim",
	},
	{
		"EdenEast/nightfox.nvim",
		config = function()
			require("nightfox").setup({
				options = {
					transparent = true,
				},
			})
		end,
	},
}
