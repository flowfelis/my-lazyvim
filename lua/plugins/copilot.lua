
return {
  {
    "github/copilot.vim",

    config = function()
      -- Disable Copilot's default Tab mapping!!
      vim.g.copilot_no_tab_map = true

      -- Remap accept to <C-e>
      -- Copilot provides the function `copilot#Accept()`
      vim.api.nvim_set_keymap(
        "i",
        "<C-e>",
        'copilot#Accept("")',
        { noremap = true, silent = true, expr = true }
      )
    end,
  },
}
-- {
--   "zbirenbaum/copilot.lua",
--   event = "InsertEnter",
--
--   -- you can put keymaps here
--   keys = {
--     {
--       "<C-e>",
--       function()
--         require("copilot.suggestion").accept()
--       end,
--       mode = "i",
--       desc = "Copilot Accept",
--     },
--   },

-- config = function()
--   require("copilot").setup({
--     suggestion = {
--       auto_trigger = true,
--       keymap = {  -- disable all built-in keymaps
--         accept = false,
--         accept_line = false,
--         accept_word = false,
--         next = false,
--         prev = false,
--         dismiss = false,
--         tab = false,
--       },
--     },
--   })
-- end,
-- },
-- }
-- return {
--   {
--     "zbirenbaum/copilot.lua",
--     -- requires = {
--     --   "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
--     -- },
--     cmd = "Copilot",
--     event = "InsertEnter",
--     config = function()
--       require("copilot").setup({
--         suggestion = {
--           auto_trigger = true,
--           keymap = {
--             accept = "<C-e>",
--           }
--         }
--       })
--     end,
--   },
-- }
