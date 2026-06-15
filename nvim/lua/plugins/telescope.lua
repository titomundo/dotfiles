return {
	{
		"nvim-telescope/telescope.nvim",
		tab = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) --buscar archivo
			vim.keymap.set("n", "<leader>fw", builtin.live_grep, {}) --buscar palabra
			vim.keymap.set("n", "<leader>fm", builtin.marks, {}) --buscar palabra
		end,
	},
}
