local alice = {}

local theme = require("lua.alice.theme")

alice.load = function()
  vim.cmd('hi clear')
  if vim.fn.exists('syntax_on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "alice"

  theme.set_style()
end

alice.load()

return alice
