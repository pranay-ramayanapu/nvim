-- function ColorMyPencils(color)
--   color = color or "rose-pine"
--   vim.cmd.colorscheme(color)
--   vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--   vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--   vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--   vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
--   vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
--   vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
--   vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
--   vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "none" })
--   vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
-- end
--
return {
  -- {
  --   "folke/tokyonight.nvim",
  --   config = function()
  --     require("tokyonight").setup({
  --       style = "storm",
  --       transparent = true,
  --       terminal_colors = true,
  --       styles = {
  --         comments = { italic = false },
  --         keywords = { italic = false },
  --         sidebars = "transparent",
  --         floats = "transparent",
  --       },
  --     })
  --   end,
  -- },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      -- require("rose-pine").setup({ disable_background = true })
      require("rose-pine").setup({ disable_background = false })

      vim.cmd("colorscheme rose-pine")
      -- ColorMyPencils()
    end,
  },
}
