return {
  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    opts = {},
    -- stylua: ignore
    keys = {
      { "<leader>qs", false},
      { "<leader>qS", false},
      { "<leader>ql", false},
      { "<leader>qd", false},
    },
  },
}
