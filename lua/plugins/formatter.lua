return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        html = { "prettier" },
        -- You can add other file types here as needed
        css = { "prettier" },
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
        json = { "prettier" },
        markdown = { "prettier" },
      },
    },
  },
}
