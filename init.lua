return {
  -- colorscheme = "darcula",
  colorscheme = "catppuccin-macchiato",
  -- colorscheme = "catppuccin-frappe",
  -- colorscheme = "tokyonight-storm",
  plugins = {
    'doums/darcula',
    'folke/tokyonight.nvim',
    {
      dir = "~/Projects/nvim-gitflow",
      dependencies = { "nvim-lua/plenary.nvim" },
      lazy = false,
    },
    { "catppuccin/nvim",           name = "catppuccin" },
    { "leafgarland/typescript-vim" },
    { "ianks/vim-tsx" },
    { "windwp/nvim-ts-autotag" },
    {
      "nvim-telescope/telescope.nvim",
      config = function(plugin, opts)
        -- run the core AstroNvim configuration function with the options table
        require("plugins.configs.telescope")(plugin, opts)

        -- require telescope and load extensions as necessary
        require("telescope").setup({
          pickers = {
            find_files({ hidden = true, })
          }
        })
      end,
    }
  }
}
