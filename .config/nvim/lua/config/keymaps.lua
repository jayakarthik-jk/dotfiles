-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
--

vim.keymap.set("v", "<C-_>", ':call nerdcommenter#Comment(0, "toggle")<CR>', { noremap = true, silent = true })
