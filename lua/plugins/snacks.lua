return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          projects = {
            dev = { "~/Projects" },
            patterns = { ".git", "package.json", "Makefile", "pyproject.toml" },
            -- Directories you want to always add as projects
            -- projects = { "~/my-special-project" },
          },
        },
      },
    },
  },
}
