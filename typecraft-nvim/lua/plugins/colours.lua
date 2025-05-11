return {
  {
    "catppuccin/nvim",
    lazy = false, 
    name = "catppuccin",
    priority = 1000,
    config = function()
      local transparent = true -- Set to false for normal background
      require("catppuccin").setup({
        transparent_background = transparent,
      })
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  },
  {
    "folke/tokyonight.nvim",
    lazy = false, 
    priority = 1000,
    config = function()
      local transparent = true
      require("tokyonight").setup({
        transparent = transparent,
      })
      vim.cmd.colorscheme "tokyonight-night"
    end
  },
  {
    "EdenEast/nightfox.nvim",
    lazy = false, 
    priority = 1000,
    config = function()
      local transparent = true
      require("nightfox").setup({
        options = { transparent = transparent }
      })
      vim.cmd.colorscheme "nightfox"
    end
  },
  {
    "shaunsingh/nord.nvim",
    lazy = false, 
    priority = 1000,
    config = function()
      local transparent = true
      if transparent then
        vim.cmd [[ hi Normal guibg=NONE ctermbg=NONE ]]
        vim.cmd [[ hi NormalNC guibg=NONE ctermbg=NONE ]]
      end
      vim.cmd.colorscheme "nord"
    end
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = false, 
    priority = 1000,
    config = function()
      local transparent = true
      require("kanagawa").setup({
        transparent = transparent,
      })
      vim.cmd.colorscheme "kanagawa-wave"
    end
  },
  {
    "sainnhe/sonokai",
    lazy = false, 
    priority = 1000,
    config = function()
      local transparent = true
      if transparent then
        vim.g.sonokai_transparent_background = 1
      end
      vim.cmd.colorscheme "sonokai"
    end
  },
  {
    "sainnhe/everforest",
    lazy = false, 
    priority = 1000,
    config = function()
      local transparent = true
      if transparent then
        vim.g.everforest_transparent_background = 1
      end
      vim.cmd.colorscheme "everforest"
    end
  },
  {
    "sainnhe/gruvbox-material",
    lazy = false, 
    priority = 1000,
    config = function()
      local transparent = true
      if transparent then
        vim.g.gruvbox_material_transparent_background = 1
      end
      vim.cmd.colorscheme "gruvbox-material"
    end
  },
  {
    "Mofiqul/dracula.nvim",
    lazy = false, 
    priority = 1000,
    config = function()
      local transparent = true
      require("dracula").setup({
        transparent_bg = transparent,
      })
      vim.cmd.colorscheme "dracula"
    end
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false, 
    priority = 1000,
    config = function()
      local transparent = true
      require("rose-pine").setup({
        disable_background = transparent,
      })
      vim.cmd.colorscheme "rose-pine-moon"
    end
  }
}
