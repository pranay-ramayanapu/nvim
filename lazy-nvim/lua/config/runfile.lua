require("lazy").load({ plugins = { "toggleterm.nvim" } })
local Terminal = require("toggleterm.terminal").Terminal

local function get_run_command()
  local ft = vim.bo.filetype
  local file = vim.fn.expand("%")

  if ft == "cpp" then
    return "g++ " .. file .. " -o output && ./output; echo Press Enter to exit; read"
  elseif ft == "c" then
    return "cd " .. vim.fn.expand("%:p:h") .. "gcc " .. file .. " -o output && ./output; echo Press Enter to exit; read"
  elseif ft == "python" then
    return "python " .. file .. "; echo Press Enter to exit; read"
  elseif ft == "javascript" then
    return "node " .. file .. "; echo Press Enter to exit; read"
  elseif ft == "java" then
    return "javac " .. file .. " && java " .. vim.fn.expand("%:r") .. "; echo Press Enter to exit; read"
  elseif ft == "html" then
    return "cd " .. vim.fn.expand("%:p:h") .. " && live-server --port=3000"
  elseif ft == "sh" then
    return "bash " .. file .. "; echo Press Enter to exit; read"
  elseif ft == "lua" then
    return "lua " .. file .. "; echo Press Enter to exit; read"
  else
    return nil
  end
end

local function RunFileInTerminal()
  local cmd = get_run_command()
  if cmd then
    local term = Terminal:new({
      cmd = "bash -c '" .. cmd .. "'", -- Ensure it runs inside a proper shell
      direction = "float",
      close_on_exit = false, -- Keeps the terminal open after execution
    })
    term:toggle()
  else
    print("No run command defined for this file type!")
  end
end
return { RunFileInTerminal = RunFileInTerminal }
