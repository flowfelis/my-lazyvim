-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Neovide Options
if vim.g.neovide then
  -- vim.o.guifont = "Monaspace Krypton NF SemiBold:h8.6" -- Set the font and size for Neovide
  -- vim.o.guifont = "JetBrainsMonoNL Nerd Font Mono:h8.7" -- Set the font and size for Neovide
  vim.o.guifont = "Monaspace Neon NF SemiBold:h8.6" -- Set the font and size for Neovide
  vim.g.neovide_opacity = 0.9 -- Set the transparency level for Neovide
  vim.g.neovide_scroll_animation_length = 0.3 -- Set the scroll animation length for Neovide
  vim.g.neovide_cursor_vfx_mode = "pixiedust" -- Set the cursor visual effect mode for Neovide
  vim.g.neovide_padding_top = 5
  vim.g.neovide_padding_bottom = 5
  vim.g.neovide_padding_right = 5
  vim.g.neovide_padding_left = 5
end

-- General Options
vim.o.number = true
vim.o.relativenumber = false
vim.g.autoformat = false
vim.opt.scrolloff = 0
