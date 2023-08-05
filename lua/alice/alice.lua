-- let s:gui_background = "#1d1f21"
-- let s:gui_selection  = "#373b41"
-- let s:gui_line       = "#282a2e"
-- let s:gui_comment    = "#707880"
--
-- let s:palette.gui.background = { 'dark' : s:gui_background }
-- let s:palette.gui.foreground = { 'dark' : "#c5c8c6"        }
-- let s:palette.gui.selection  = { 'dark' : s:gui_selection  }
-- let s:palette.gui.line       = { 'dark' : s:gui_line       }
-- let s:palette.gui.comment    = { 'dark' : s:gui_comment    }
-- let s:palette.gui.red        = { 'dark' : "#cc6666"        }
-- let s:palette.gui.orange     = { 'dark' : "#de935f"        }
-- let s:palette.gui.yellow     = { 'dark' : "#f0c674"        }
-- let s:palette.gui.green      = { 'dark' : "#b5bd68"        }
-- let s:palette.gui.aqua       = { 'dark' : "#8abeb7"        }
-- let s:palette.gui.blue       = { 'dark' : "#81a2be"        }
-- let s:palette.gui.purple     = { 'dark' : "#b294bb"        }
-- let s:palette.gui.window     = { 'dark' : "#303030"        }
-- let s:palette.gui.darkcolumn = { 'dark' : "#1c1c1c"        }
-- let s:palette.gui.addbg      = { 'dark' : "#5F875F"        }
-- let s:palette.gui.addfg      = { 'dark' : "#d7ffaf"        }
-- let s:palette.gui.changebg   = { 'dark' : "#5F5F87"        }
-- let s:palette.gui.changefg   = { 'dark' : "#d7d7ff"        }
-- let s:palette.gui.delbg      = { 'dark' : "#cc6666"        }
-- let s:palette.gui.darkblue   = { 'dark' : "#00005f"        }
-- let s:palette.gui.darkcyan   = { 'dark' : "#005f5f"        }
-- let s:palette.gui.darkred    = { 'dark' : "#5f0000"        }
-- let s:palette.gui.darkpurple = { 'dark' : "#5f005f"        }
-- let s:fg_none = ' guifg=NONE ctermfg=NONE'

local colors_name = "alice"

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

vim.cmd("hi! clear")
vim.cmd("syntax reset")

local colors = {
  normal_text = "#D4D4D4",
  background = "#1d1f21",
  foreground = "#c5c8c6",
  bg_line = "#282a2e",
  comment = "#707880",
  window = "#303030",
  blue = "#81a2be",
  purple = "#b294bb",
  yellow = "#f0c674",
  orange = "#de935f",
  red = "#cc6666",
  light_red = "#3b2e2e",
  dark_red = "#371F1C",
  aqua = "#8abeb7",
  green = "#b5bd68",
  selection = "#373b41",
  add_fg = "#d7ffaf",
  add_bg = "#5F875F",
  change_bg = "#5F5F87",
  change_fg = "#d7d7ff",
  darkcolumn = "#1c1c1c",
  blank_lines = "#43464a",
}

highlight("CursorColumn", { bg = colors.bg_line })
highlight("CursorLine", { bg = colors.bg_line })
highlight("Directory", { fg = colors.blue })
highlight("DiffAdd", { fg = colors.add_fg, bg = colors.add_bg })
highlight("DiffChange", { fg = colors.change_fg, bg = colors.change_fg })
highlight("DiffDelete", { fg = colors.background, bg = colors.red })
highlight("DiffText", { fg = colors.background, bg = colors.blue })
highlight("ErrorMsg", { fg = colors.background, bg = colors.red })
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

highlight("Constant", { fg = colors.orange })
highlight("String", { fg = colors.green })
highlight("Character", { fg = colors.orange })
highlight("Number", { fg = colors.orange })
highlight("Boolean", { fg = colors.orange })
highlight("Float", { fg = colors.orange })

highlight("Identifier", { fg = colors.red })
highlight("Function", { fg = colors.yellow })

highlight("Statement", { fg = colors.purple })
highlight("Conditional", { fg = colors.purple })
highlight("Repeat", { fg = colors.purple })
highlight("Label", { fg = colors.purple })
highlight("Operator", { fg = colors.aqua })
highlight("Keyword", { fg = colors.purple })

highlight("PreProc", { fg = colors.aqua })
highlight("Macro", { fg = colors.yellow })

highlight("Type", { fg = colors.orange })
highlight("StorageClass", { fg = colors.orange })
highlight("Special", { fg = colors.aqua  })

highlight("Structure", { fg = colors.aqua })
highlight("Typedef", { fg = colors.aqua })
highlight("Underlined", { fg = colors.blue })
highlight("Error", { fg = colors.red })
highlight("qfLineNr", { fg = colors.yellow })

highlight("Normal", { bg = colors.background, fg = colors.normal_text })

-- Treesitter
-- @@@ TODO: let the user choose between builtin functions bold or not
highlight("@function.builtin", { gui = "bold" })
highlight("@variable.builtin", { gui = "italic" })
-- @@@ TODO: let the user decides if he wants italic or not
highlight("@keyword.coroutine", { fg = colors.purple, gui = "italic" })

-- COC.nvim
-- @@@ TODO: nice error messages for LSP
highlight("CocHighlightText", { bg = colors.light_red })
highlight("CocHighlightRead", { bg = colors.light_red })
highlight("CocHighlightWrite", { bg = colors.light_red })
highlight("CocMenuSel", { fg = colors.dark, bg = colors.darkcolumn })

-- IndentBlankLine
highlight("IndentBlanklineChar", { fg = colors.blank_lines })

-- @@@ TODO: change color of text hints
-- @@@ TODO: add support to LuaLine
-- @@@ TODO: add support to Telescope
-- @@@ TODO: add support to GitSigns
