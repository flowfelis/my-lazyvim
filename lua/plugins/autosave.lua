return {
  "pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      enabled = true,
      execution_message = {
        message = function()
          return ""
        end,
        dim = 0,
        cleaning_interval = 1250,
      },
      trigger_events = { "InsertLeave", "TextChanged" },
      conditions = {
        exists = true,
        filename_is_not = {},
        filetype_is_not = {},
        modifiable = true,
      },
      write_all_buffers = false,
      debounce_delay = 135,
      condition = function(buf)
        if vim.bo[buf].filetype == "harpoon" then
          return false
        end
      end,
    })
  end,
}
