return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    bold = true,
    opts = {
      contrast = "hard",
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
      },
    }
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",
          section_separators = "",
          component_separators = "",
        },
      })
    end,
  },
  {
    "goolord/alpha-nvim",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")
      dashboard.section.header.val = {
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠶⢄⣀⣀⣀⢀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⣀⡀⠀⠀⣀⣀⣀⣀⢯⡣⡀⠸⠹⠀⠀⠀⠀⠀⠀⠀⢀⡔⠱⣶⡿⣿⠻⠿⠿⠟⠂⡀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⢀⣀⡀⢀⣀]],
        [[⢠⣼⠏⢧⣀⢸⡏⣭⣍⢹⠀⠑⢌⢧⡈⠃⠀⠀⠀⠀⠀⣴⡇⣳⣿⠀⣇⣯⡙⣐⢈⣔⢘⠑⡄⠀⠀⠀⠀⠀⠀⠀⡏⣿⢸⢩⡇⠍⢹]],
        [[⠸⣦⡄⣤⠾⢸⡃⠷⠿⢸⠀⡤⠤⠟⢍⢢⡤⠤⠤⠤⢼⣿⣵⣿⣷⠀⠧⣿⣷⣾⣴⣽⡤⢤⣷⠤⠤⠤⠤⠤⢤⠀⡇⣿⢸⢸⡇⠁⢸]],
        [[⢰⠟⠃⠓⢲⢸⡁⣶⣶⢸⠀⡇⠀⠀⠀⠱⣜⢦⣄⣤⡷⢿⢿⠿⢳⠒⢲⠹⠿⢿⢼⢷⡷⠦⠺⣤⠀⠀⠀⠀⢸⠀⡇⣿⢸⢸⡇⠀⢸]],
        [[⠈⢹⡆⡏⠉⠀⠉⠁⣿⠸⠀⠉⠉⠉⠉⠉⠈⣶⣛⣓⣛⣪⣟⣑⣾⣀⣸⣀⣀⡞⠚⠋⢘⠒⠒⢻⡉⠉⠉⠉⠉⠀⣉⣉⢈⣉⡁⢈⣉]],
        [[⠀⠸⣧⡇⠀⠀⠀⠀⠻⢼⠀⠀⠀⠀⠀⠀⠀⠙⣿⢻⡿⢯⣼⣌⣬⣩⣍⣽⣿⣦⣄⠀⢸⠌⡀⢚⡅⠀⠀⠀⠀⠀⠯⠿⢸⠿⠇⠫⠽]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⠄⠀⠄⣎⡴⣿⣷⡍⣼⣶⣿⡿⠀⢸⠌⠍⠌⡷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠒⠂⠀⡤⢊⠼⣲⠓⠲⠺⡷⠿⢿⠀⡟⠂⠂⠂⠾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡓⠃⠀⠉⢷⣙⣚⣉⣻⡘⣸⣟⣛⣻⣦⡛⠁⠃⠃⢛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣥⠁⠅⠁⡥⣽⣟⣿⣿⣥⣽⣿⣿⣿⢿⡥⠈⡍⡈⣭⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⡃⠂⠀⠀⠀⡞⣿⠓⢿⡟⠛⠛⡏⠀⠸⠗⠂⠂⠂⢺⠆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢲⠐⢰⠊⠀⢻⡖⢾⡿⠒⠒⡃⠀⠸⡆⠀⠂⠀⡛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
        [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠋⠀⠀⠘⠛⠛⠛⠛⠛⠁⠀⠀⠈⠓⠛⠓⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      }
      alpha.setup(dashboard.opts)
    end,
  },
}
