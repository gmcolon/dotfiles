-- Setneovi python
vim.g.python3_host_prog="/opt/homebrew/bin/python3"

-- custom user commands
local user_cmd = vim.api.nvim_create_user_command

user_cmd("CopyCurrentPath", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify('Copied "' .. path .. '" to the clipboard!')
end, {})

