vim.opt.background = "dark" -- or "light" for light mode
return {
  -- add colorschemes
  { "ellisonleao/gruvbox.nvim" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/everforest" },

 -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
      background = "dark",
      priority = 1000,
    },
  },
}
