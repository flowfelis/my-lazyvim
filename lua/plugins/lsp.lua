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
    },
  },
}
