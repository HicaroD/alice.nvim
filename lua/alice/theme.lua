local theme = {}
local hl = vim.api.nvim_set_hl

function get_style(table)
  local fg = table.fg or "NONE"
  local bg = table.bg or "NONE"
  local gui = table.gui or "NONE"

  local style = { fg = fg, bg = bg }

  if gui == "bold" then
    style["bold"] = true
  elseif gui == "italic" then
    style["italic"] = true
  elseif gui == "underline" then
    style["underline"] = true
  end

  return style
end

function highlight(group, table)
  local style = get_style(table)
  hl(0, group, style)
end

theme.set_style = function()
  local colors = require("alice.colors")

  highlight("CursorColumn", { bg = colors.bg_line })
  highlight("CursorLine", { bg = colors.bg_line })
  highlight("Directory", { fg = colors.blue })
  highlight("DiffAdd", { fg = colors.add_fg, bg = colors.add_bg })
  highlight("DiffChange", { fg = colors.change_fg, bg = colors.change_fg })
  highlight("DiffDelete", { fg = colors.background, bg = colors.red })
  highlight("DiffText", { fg = colors.background, bg = colors.blue })
  highlight("ErrorMsg", { fg = colors.background, bg = colors.error_red })
  highlight("VertSplit", { fg = colors.window })
  highlight("Folded", { bg = colors.darkcolumn, fg = colors.comment })
  highlight("FoldColumn", { bg = colors.darkcolumn })
  highlight("SignColumn", { bg = colors.darkcolumn })
  highlight("LineNr", { fg = colors.selection })
  highlight("SignColumn", { fg = colors.selection })
  highlight("CursorLineNr", { fg = colors.yellow, gui = "bold" })
  highlight("MatchParen", { fg = colors.aqua, bg = colors.change_bg, gui = "bold" })
  highlight("ModeMsg", { fg = colors.green })
  highlight("MoreMsg", { fg = colors.green })
  highlight("NonText", { fg = colors.selection })

  highlight("Pmenu", { fg = colors.foreground, bg = colors.selection })
  highlight("PmenuSel", { fg = colors.dark, bg = colors.darkcolumn })

  highlight("Question", { fg = colors.green })
  highlight("Search", { fg = colors.background, bg = colors.yellow })
  highlight("SpecialKey", { fg = colors.selection })
  highlight("SpellCap", { fg = colors.blue })
  highlight("SpellLocal", { fg = colors.aqua })
  highlight("SpellBad", { fg = colors.red })
  highlight("SpellRare", { fg = colors.purple })
  highlight("StatusLine", { fg = colors.comment, bg = colors.background })
  highlight("StatusLineNC", { fg = colors.window, bg = colors.comment })
  highlight("TabLine", { fg = colors.foreground, bg = colors.darkcolumn })
  highlight("Title", { fg = colors.yellow })
  highlight("Visual", { bg = colors.selection })
  highlight("WarningMsg", { fg = colors.red })
  highlight("LongLineWarning", { bg = colors.dark_red, gui = "underline" })
  highlight("ColorColumn", { bg = colors.line })
  highlight("Comment", { fg = colors.comment, gui = "italic" })

  highlight("Constant", { fg = colors.aqua })
  highlight("String", { fg = colors.green })
  highlight("Character", { fg = colors.orange })
  highlight("Number", { fg = colors.orange })
  highlight("Boolean", { fg = colors.orange })
  highlight("Float", { fg = colors.orange })

  highlight("Identifier", { fg = colors.red })
  highlight("Function", { fg = colors.blue })

  highlight("Statement", { fg = colors.purple })
  highlight("Conditional", { fg = colors.purple })
  highlight("Repeat", { fg = colors.purple })
  highlight("Label", { fg = colors.purple })
  highlight("Operator", { fg = colors.aqua })
  highlight("Keyword", { fg = colors.purple })

  highlight("PreProc", { fg = colors.aqua })
  highlight("Macro", { fg = colors.yellow })

  highlight("Type", { fg = colors.yellow })
  highlight("StorageClass", { fg = colors.orange })
  highlight("Special", { fg = colors.aqua })

  highlight("Structure", { fg = colors.aqua })
  highlight("Typedef", { fg = colors.aqua })
  highlight("Underlined", { fg = colors.blue })
  highlight("Error", { fg = colors.error_red })
  highlight("qfLineNr", { fg = colors.yellow })

  highlight("Normal", { bg = colors.background, fg = colors.normal_text })

  -- Treesitter
  -- @@@ TODO: change parameters / arguments colors
  -- @@@ TODO: Is red a good color for identifiers? My eyes think it is too much, especially when there is
  -- too many variable together, which will happen very often in coding (maybe I could try the same light blue than vscode uses)
  highlight("@keyword.coroutine", { fg = colors.purple })
  highlight("@type.qualifier", { fg = colors.purple })
  highlight("@function.builtin", { fg = colors.purple })
  highlight("@variable.builtin", { fg = colors.yellow })
  highlight("@type.builtin", { fg = colors.yellow })
  highlight("@attribute", { fg = colors.aqua })
  highlight("@error", { fg = colors.error_red })
  highlight("@parameter", { fg = colors.orange })
  highlight("@constructor", { fg = colors.yellow })

  -- COC.nvim
  -- @@@ TODO: change colors of errors, warning and hints
  -- @@@ TODO: change color of inlay hints
  -- @@@ TODO: change color of letters when completing with Coc
  highlight("CocHighlightText", { bg = colors.light_red })
  highlight("CocHighlightRead", { bg = colors.light_red })
  highlight("CocHighlightWrite", { bg = colors.light_red })
  highlight("CocMenuSel", { fg = colors.dark, bg = colors.darkcolumn })

  -- IndentBlankLine
  highlight("IndentBlanklineChar", { fg = colors.blank_lines })

  -- @@@ TODO: add support to LuaLine
  -- @@@ TODO: add support to Telescope
  -- @@@ TODO: add support to GitSigns
end

return theme
