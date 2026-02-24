return {
  {
    "szw/vim-maximizer",
    keys = {
      { "<leader>m", "<cmd>MaximizerToggle<CR>", desc = "Toggle maximize window" },
    },
    init = function()
      vim.g.maximizer_set_default_mapping = 0
    end,
  },
}
