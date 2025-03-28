return {
    {
        "nvim-telescope/telescope.nvim",
        tab = "0.1.5",
        dependencies = { "nvim-lua/plenary.nvim", "BurntSushi/ripgrep" },
        config = function()
            local builtin = require("telescope.builtin")
            vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) --buscar archivo
            vim.keymap.set("n", "<leader>fw", builtin.live_grep, {}) --buscar palabra
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
