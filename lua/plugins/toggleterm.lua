return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        size = 15, -- Height of the terminal split
        open_mapping = [[<C-\>]], -- Default keybinding to toggle terminal
        shade_terminals = true,
        shading_factor = 2,
        direction = "horizontal", -- Can be "horizontal", "vertical", "float", or "tab"
        float_opts = {
          border = "rounded",
        },
      })

      -- Keybindings for convenience
      vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { noremap = true, silent = true, desc = "Toggle Terminal" })
      vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true, desc = "Exit Terminal Mode" })
    end,
  },
}

