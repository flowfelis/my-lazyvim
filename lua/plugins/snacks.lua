-- return {}
return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          projects = {
            dev = { "~/Projects" },
            -- patterns = { ".git", "package.json", "Makefile", "pyproject.toml" },
            -- Directories you want to always add as projects
            -- projects = { "~/my-special-project" },
            -- Action to change cwd when selecting a project
            -- actions = {
            --   ["<cr>"] = function(item)
            --     vim.cmd("lcd " .. item.file)
            --     vim.notify("Changed directory to: " .. item.file)
            --   end,
            -- },
          },
        },
      },
    },
  },
}
