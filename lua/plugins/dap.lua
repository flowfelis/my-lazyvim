return {
  {
    "mfussenegger/nvim-dap",
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dapui.setup()

      -- Open UI when debugging starts
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open({})
      end

      -- Note: Not registering event_terminated and event_exited listeners
      -- This means the UI will NOT auto-close (auto_close=false)
      -- You can manually close the UI with :DapUiClose or dapui.close({})
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      local dap_python = require("dap-python")
      dap_python.setup("uv")
      dap_python.test_runner = "pytest" -- You can set your preferred test runner here
    end,
  },
}
