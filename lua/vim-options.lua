---@diagnostic disable: undefined-global
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "dark"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

--custom keymaps for files
vim.keymap.set("n", "<leader>b", require("config.mycolors").pick_colorscheme, { desc = "Pick Colorscheme" })
vim.api.nvim_set_keymap("n", "<leader>r", ":lua require('config.runfile').RunFileInTerminal()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>as", ":lua require('auto-save').toggle()<CR>", { noremap = true, silent = true })
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.wo.number = true
vim.wo.relativenumber = true

