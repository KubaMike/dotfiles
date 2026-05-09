return {
  { "catppuccin/nvim", name = "catppuccin" },
  {
    "ellisonleao/gruvbox.nvim",
    config = true,
    opts = {
      terminal_colors = true,
      transparent_mode = true,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
