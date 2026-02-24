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
      terminal = {
        win = {
          position = "bottom",
          height = 0.4,
          keys = {
            hide_slash = {
              "<C-/>",
              function()
                local terms = Snacks.terminal.list()
                local any_visible = vim.iter(terms):any(function(t)
                  return t.win ~= nil and vim.api.nvim_win_is_valid(t.win)
                end)
                for _, term in ipairs(terms) do
                  if any_visible then
                    term:hide()
                  else
                    term:show()
                  end
                end
              end,
              mode = { "t", "n" },
              desc = "Hide all terminals",
            },
            hide_underscore = {
              "<C-_>",
              function()
                local terms = Snacks.terminal.list()
                local any_visible = vim.iter(terms):any(function(t)
                  return t.win ~= nil and vim.api.nvim_win_is_valid(t.win)
                end)
                for _, term in ipairs(terms) do
                  if any_visible then
                    term:hide()
                  else
                    term:show()
                  end
                end
              end,
              mode = { "t", "n" },
              desc = "which_key_ignore",
            },
          },
        },
      },
    },
  },
}
