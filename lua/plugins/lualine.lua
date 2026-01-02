return {
  "nvim-lualine/lualine.nvim",
  optional = true,
  event = "VeryLazy",
  opts = function(_, opts)
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
