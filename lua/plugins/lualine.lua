return {
  "nvim-lualine/lualine.nvim",
  optional = true,
  event = "VeryLazy",
  opts = function(_, opts)
    -- Terminal count indicator
    table.insert(opts.sections.lualine_x, 1, {
      function()
        local terms = Snacks.terminal.list()
        if #terms == 0 then
          return ""
        end
        local visible = vim.iter(terms):fold(0, function(acc, t)
          return acc + (t.win ~= nil and vim.api.nvim_win_is_valid(t.win) and 1 or 0)
        end)
        return " " .. visible .. "/" .. #terms
      end,
      cond = function()
        return package.loaded["snacks"] ~= nil and #Snacks.terminal.list() > 0
      end,
      color = function()
        local terms = Snacks.terminal.list()
        local any_visible = vim.iter(terms):any(function(t)
          return t.win ~= nil and vim.api.nvim_win_is_valid(t.win)
        end)
        return any_visible and { fg = "#a9b665" } or { fg = "#7c8a5e" }
      end,
    })

    table.insert(
      opts.sections.lualine_x,
      2,
      LazyVim.lualine.status(LazyVim.config.icons.kinds.Copilot, function()
        if vim.fn.exists("*copilot#Enabled") == 0 then
          return nil -- Copilot not loaded
        end

        local enabled = vim.fn["copilot#Enabled"]()
        if enabled == 1 then
          return "ok" -- or "on" or "enabled"
        else
          return "error" -- or "off" or "disabled"
        end
      end)
    )
  end,
}
-- return {
--   "nvim-lualine/lualine.nvim",
--   optional = true,
--   event = "VeryLazy",
--   opts = function(_, opts)
--     table.insert(
--       opts.sections.lualine_x,
--       2,
--       LazyVim.lualine.status(LazyVim.config.icons.kinds.Copilot, function()
--         return "ok"
--         -- local clients = package.loaded["copilot"] and vim.lsp.get_clients({ name = "copilot", bufnr = 0 }) or {}
--         -- if #clients > 0 then
--         --   local status = require("copilot.status").data.status
--         --   return (status == "InProgress" and "pending") or (status == "Warning" and "error") or "ok"
--         -- end
--       end)
--     )
--   end,
-- }
