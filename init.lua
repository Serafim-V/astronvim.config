local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

-- Move selected line
keymap("n", "∆", ":move .+1<CR>", default_opts)
keymap("n", "˚", ":move .-2<CR>", default_opts)
-- Doublicate line
keymap("n", "<leader>j", ":t .<CR>", default_opts)
keymap("n", "<leader>k", ":t .-1<CR>", default_opts)

keymap("n", "<Tab>", ":bnext<CR>", default_opts)
keymap("n", "<S-Tab>", ":bprev<CR>", default_opts)



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
    },
    {
      "tpope/vim-fugitive",
      lazy = false,
    },
    {
      "sindrets/diffview.nvim",
      lazy = false,
    }
  }
}
