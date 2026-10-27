local servers = {
	"lua_ls",
	"ts_ls", -- si estos 3 fallan
	"html", -- al instalar, correr
	"cssls", -- apt install npm
	"pyright",
	"intelephense",
	"jedi_language_server", -- si falla la instalación, correr apt install -y python3-venv
}

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- ensure_installed = servers,
				ensure_installed = {
					"lua_ls",
					"ts_ls", -- si estos 3 fallan
					"html", -- al instalar, correr
					"cssls", -- apt install npm
					"jdtls",
					"jedi_language_server", -- si falla la instalación, correr apt install -y python3-venv
					--"intelephense",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			for i = 1, #servers do
				vim.lsp.config(servers[i], { capabilities = capabilities })
				vim.lsp.enable(servers[i])
			end

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "cd", vim.diagnostic.open_float, {})
		end,

		vim.diagnostic.config({
			virtual_text = true,
		}),
	},
}
