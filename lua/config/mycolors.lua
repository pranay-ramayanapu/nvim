local function pick_colorscheme()
  local schemes = vim.fn.getcompletion("", "color") -- Get available colorschemes

  vim.ui.select(schemes, { prompt = "Select Colorscheme" }, function(choice)
    if choice then
      vim.cmd("colorscheme " .. choice) -- Apply selected colorscheme
      vim.notify("Switched to " .. choice, vim.log.levels.INFO)
    end
  end)
end

return { pick_colorscheme = pick_colorscheme }

