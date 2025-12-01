vim.opt.tabstop = 3
vim.opt.shiftwidth = 4
vim.bo.softtabstop = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", ":Ex<CR>", { noremap = true, silent = true })
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) --buscar archivo
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {}) --buscar palabra

vim.cmd("set background=dark")
vim.cmd("colorscheme nightfox")
