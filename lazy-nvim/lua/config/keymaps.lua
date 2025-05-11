-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>r", require("config.runfile").RunFileInTerminal, { desc = "Run File in Terminal" })
vim.keymap.set("x", "<C-c>", '"+y', { noremap = true, silent = true })
