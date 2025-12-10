return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = { preset = "super-tab" },
    },
  },
}
-- return {
--   {
--     "saghen/blink.cmp",
--     config = function()
--       local blink = require("blink.cmp")
--
--       blink.setup({
--         keymap = {
--           ["<Tab>"] = {
--             function()
--               if blink.is_visible() then
--                 return blink.accept()
--               else
--                 return "<Tab>"
--               end
--             end,
--             "i", -- map in insert mode
--             expr = true, -- required for returning "<Tab>"
--           },
--         },
--       })
--     end,
--   },
-- }
