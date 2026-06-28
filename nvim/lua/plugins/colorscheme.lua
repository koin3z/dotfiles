return {
  -- add gruvbox
  { "folke/tokyonight.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm",
    },
  },
}
