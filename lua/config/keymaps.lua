-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- GENERAL
-- Escape insert mode
vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = false })

-- Select a line
vim.keymap.set("n", "vl", "_v$h", { noremap = true, silent = true, desc = "Select a line" })
-- Select all
vim.keymap.set({ "n", "i" }, "<leader>A", "<Esc>ggVG", { noremap = true, silent = true, desc = "Select all" })
-- Yank All
vim.keymap.set("n", "<leader>ya", "ggVGy", { noremap = true, silent = true, desc = "Yank all" })

-- Allow clipboard copy paste in neovide
if vim.g.neovide then
  -- vim.keymap.set("n", "<D-s>", ":w<CR>") -- Save
  vim.keymap.set("v", "<C-S-c>", '"+y') -- Copy
  vim.keymap.set("n", "<C-S-v>", '"+p') -- Paste normal mode
  vim.keymap.set("v", "<C-S-v>", '"+p') -- Paste visual mode
  vim.keymap.set("c", "<C-S-v>", "<C-R>+") -- Paste command mode
  vim.keymap.set("i", "<C-S-v>", '<Esc>"+pa') -- Paste insert mode
  vim.keymap.set("t", "<C-S-v>", [[<C-\><C-n>"+pi]]) -- Paste terminal mode
end

-- WINDOWS
-- Switch between windows
vim.keymap.set("n", "<leader>h", "<C-w>h", { noremap = true, silent = true, desc = "go to left window" })
vim.keymap.set("n", "<leader>j", "<C-w>j", { noremap = true, silent = true, desc = "go to down window" })
vim.keymap.set("n", "<leader>k", "<C-w>k", { noremap = true, silent = true, desc = "go to up window" })
vim.keymap.set("n", "<leader>l", "<C-w>l", { noremap = true, silent = true, desc = "go to right window" })

-- Increase and decrease window size by 10
vim.keymap.set("n", "<Up>", "10<C-w>+", { noremap = true, silent = true, desc = "Window increase height" })
vim.keymap.set("n", "<Down>", "10<C-w>-", { noremap = true, silent = true, desc = "Window decrease height" })
vim.keymap.set("n", "<Right>", "10<C-w><", { noremap = true, silent = true, desc = "Window decrease width" })
vim.keymap.set("n", "<Left>", "10<C-w>>", { noremap = true, silent = true, desc = "Window increase width" })

-- Open a vertical split
vim.keymap.set("n", "<leader>v", "<C-w>v", { noremap = true, silent = true, desc = "Vertical split a window" })

--BUFFERS
-- Hide buffer
vim.keymap.del("n", "<leader>wm")
vim.keymap.del("n", "<leader>wd")
vim.keymap.set("n", "<leader>w", "<CMD>hide<CR>", { noremap = true, silent = true, desc = "Close a window" })

-- Close buffer
-- vim.keymap.del("n", "<leader>qs")
-- vim.keymap.del("n", "<leader>qS")
-- vim.keymap.del("n", "<leader>qd")
-- vim.keymap.del("n", "<leader>ql")
vim.keymap.del("n", "<leader>qq")
vim.keymap.set("n", "<leader>q", "<CMD>bdelete<CR>", { noremap = true, silent = true, desc = "Close a buffer" })

-- Insert mode
-- vim.keymap.del("i", "<C-s>")

-- Move to next/prev buffer
vim.keymap.set("n", "<leader>]", "<CMD>bnext<CR>", { noremap = true, silent = true, desc = "Next buffer" })
vim.keymap.set("n", "<leader>[", "<CMD>bprev<CR>", { noremap = true, silent = true, desc = "Prev buffer" })

vim.keymap.del("n", "<S-h>")
vim.keymap.del("n", "<S-l>")

-- TERMINAL
-- Go to terminal normal mode with kj
vim.keymap.set("t", "kj", "<C-\\><C-n>", { noremap = true, silent = true, desc = "Escape terminal mode" })
-- Python Code running with uv
vim.keymap.set("n", "<leader>tx", function()
  local current_file = vim.fn.expand("%:p")
  require("snacks").terminal.open("uv run python " .. current_file, { auto_close = false })
end, { desc = "uv run" })

-- Run current file with uv interactively
vim.keymap.set("n", "<leader>tX", function()
  local current_file = vim.fn.expand("%:p")
  require("snacks").terminal.open("uv run python -i " .. current_file, { auto_close = true })
end, { desc = "uv run interactively" })

-- DAP
-- Start/Continue DAP
vim.keymap.set(
  "n",
  "<F5>",
  "<CMD>lua require'dap'.continue()<CR>",
  { noremap = true, silent = true, desc = "DAP Start/Continue" }
)
-- Step Over
vim.keymap.set(
  "n",
  "<F4>",
  "<CMD>lua require'dap'.step_over()<CR>",
  { noremap = true, silent = true, desc = "DAP Step Over" }
)
-- Step Into
vim.keymap.set(
  "n",
  "<F3>",
  "<CMD>lua require'dap'.step_into()<CR>",
  { noremap = true, silent = true, desc = "DAP Step Into" }
)
-- Step Out
vim.keymap.set(
  "n",
  "<F6>",
  "<CMD>lua require'dap'.step_out()<CR>",
  { noremap = true, silent = true, desc = "DAP Step Out" }
)
-- Terminate DAP
vim.keymap.set(
  "n",
  "<F2>",
  "<CMD>lua require'dap'.terminate()<CR>",
  { noremap = true, silent = true, desc = "DAP Terminate" }
)

-- Git Fugitive
-- Keypmap to open Git pane
vim.keymap.set("n", "<leader>gg", "<CMD>Git<CR>", { noremap = true, silent = true, desc = "Git Pane" })
