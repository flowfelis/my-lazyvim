return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- disable ruff for linting
        ruff = {
          init_options = {
            settings = {
              lint = { enable = false },
              lineLength = 78,
            },
          },
          keys = {
            {
              "<leader>co",
              LazyVim.lsp.action["source.organizeImports"],
              desc = "Organize Imports",
            },
          },
        },
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "basic",
              },
            },
          },
        },
      },
      inlay_hints = {
        enabled = false,
        -- exclude = { "vue" }, -- filetypes for which you don't want to enable inlay hints
      },
    },
  },
}
