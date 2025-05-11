return {
  {
    "pocco81/auto-save.nvim",
    event = "InsertLeave", -- Auto-save when leaving insert mode
    config = function()
      require("auto-save").setup({
        enabled = true, -- Start enabled
        execution_message = {
          message = function()
            return ""
          end, -- No annoying message
        },
        events = { "InsertLeave", "TextChanged" }, -- Auto-save on these events
        conditions = {
          exists = true,
          modifiable = true,
        },
      })
    end,
  },
}
