return {
  {
    "pocco81/auto-save.nvim",
    lazy = false,
    config = function()
      require("auto-save").setup({
        enabled = true,  -- Auto-save is enabled by default
        execution_message = { enabled = false },  -- Hide the auto-save message
        events = { "InsertLeave", "TextChanged" },  -- Save on these events
        debounce_delay = 200,  -- Delay before saving (milliseconds)
      })
    end
  }
}

