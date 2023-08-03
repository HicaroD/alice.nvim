-- let s:gui_background = "#1d1f21"
-- let s:gui_selection  = "#373b41"
-- let s:gui_line       = "#282a2e"
-- let s:gui_comment    = "#707880"
--
-- let s:palette.gui.background = { 'dark' : s:gui_background , 'light' : "#e4e4e4" }
-- let s:palette.gui.foreground = { 'dark' : "#c5c8c6"        , 'light' : "#000000" }
-- let s:palette.gui.selection  = { 'dark' : s:gui_selection  , 'light' : "#bcbcbc" }
-- let s:palette.gui.line       = { 'dark' : s:gui_line       , 'light' : "#d0d0d0" }
-- let s:palette.gui.comment    = { 'dark' : s:gui_comment    , 'light' : "#5f5f5f" }
-- let s:palette.gui.red        = { 'dark' : "#cc6666"        , 'light' : "#5f0000" }
-- let s:palette.gui.orange     = { 'dark' : "#de935f"        , 'light' : "#875f00" }
-- let s:palette.gui.yellow     = { 'dark' : "#f0c674"        , 'light' : "#5f5f00" }
-- let s:palette.gui.green      = { 'dark' : "#b5bd68"        , 'light' : "#005f00" }
-- let s:palette.gui.aqua       = { 'dark' : "#8abeb7"        , 'light' : "#005f5f" }
-- let s:palette.gui.blue       = { 'dark' : "#81a2be"        , 'light' : "#00005f" }
-- let s:palette.gui.purple     = { 'dark' : "#b294bb"        , 'light' : "#5f005f" }
-- let s:palette.gui.window     = { 'dark' : "#303030"        , 'light' : "#9e9e9e" }
-- let s:palette.gui.darkcolumn = { 'dark' : "#1c1c1c"        , 'light' : "#808080" }
-- let s:palette.gui.addbg      = { 'dark' : "#5F875F"        , 'light' : "#d7ffd7" }
-- let s:palette.gui.addfg      = { 'dark' : "#d7ffaf"        , 'light' : "#005f00" }
-- let s:palette.gui.changebg   = { 'dark' : "#5F5F87"        , 'light' : "#d7d7ff" }
-- let s:palette.gui.changefg   = { 'dark' : "#d7d7ff"        , 'light' : "#5f005f" }
-- let s:palette.gui.delbg      = { 'dark' : "#cc6666"        , 'light' : "#ffd7d7" }
-- let s:palette.gui.darkblue   = { 'dark' : "#00005f"        , 'light' : "#d7ffd7" }
-- let s:palette.gui.darkcyan   = { 'dark' : "#005f5f"        , 'light' : "#005f00" }
-- let s:palette.gui.darkred    = { 'dark' : "#5f0000"        , 'light' : "#d7d7ff" }
-- let s:palette.gui.darkpurple = { 'dark' : "#5f005f"        , 'light' : "#5f005f" }
-- let s:fg_none = ' guifg=NONE ctermfg=NONE'

-- " Generic Syntax Highlighting: (see :help group-name)"{{{
-- " ----------------------------------------------------------------------------
-- exe "hi! String"          .s:fg_green       .s:bg_none        .s:fmt_none
-- "   Character"
-- "   Number"
-- "   Boolean"
-- "   Float"
--
-- exe "hi! Identifier"      .s:fg_red          .s:bg_none       .s:fmt_none
-- exe "hi! Function"        .s:fg_yellow      .s:bg_none        .s:fg_bold
--
-- exe "hi! Statement"       .s:fg_blue        .s:bg_none        .s:fg_bold
-- "   Conditional"
-- "   Repeat"
-- "   Label"
-- exe "hi! Operator"        .s:fg_aqua        .s:bg_none        .s:fmt_none
-- "   Keyword"
-- "   Exception"
--
-- exe "hi! PreProc"         .s:fg_aqua        .s:bg_none        .s:fg_bold
-- "   Include"
-- "   Define"
-- "   Macro"
-- "   PreCondit"
--
-- exe "hi! Type"            .s:fg_orange      .s:bg_none        .s:fg_bold
-- "   StorageClass"
-- exe "hi! Structure"       .s:fg_aqua        .s:bg_none        .s:fmt_none
-- "   Typedef"
--
-- exe "hi! Special"         .s:fg_red         .s:bg_none        .s:fmt_none
-- "   SpecialChar"
-- "   Tag"
-- "   Delimiter"
-- "   SpecialComment"
-- "   Debug"
-- "
-- exe "hi! Underlined"      .s:fg_blue        .s:bg_none        .s:fmt_none
--
-- exe "hi! Ignore"          .s:fg_none        .s:bg_none        .s:fmt_none
--
-- exe "hi! Error"           .s:fg_red         .s:bg_none        .s:fmt_none
--
-- exe "hi! Todo"            .s:fg_addfg       .s:bg_none        .s:fg_bold

local colors_name = "alice"

function highlight(group, table)
  local fg = table.fg or "NONE"
  local bg = table.bg or "NONE"
  local gui = table.gui or "NONE"

  local cmd = "highlight " .. group .. " guifg=" .. fg .. " guibg=" .. bg .. " gui=" .. gui
  vim.cmd(cmd)
end

vim.cmd("hi! clear")
vim.cmd("syntax reset")

local background = "#1d1f21";
local foreground = "#c5c8c6";
local bg_line = "#282a2e";
local comment = "#707880";
local window = "#303030";
local blue = "#81a2be";
local purple = "#b294bb";
local yellow = "#f0c674";
local orange = "#de935f";
local red = "#cc6666";
local aqua = "#8abeb7";
local green = "#b5bd68";
local selection = "#373b41";
local add_fg = "#d7ffaf";
local add_bg = "#5F875F";
local change_bg = "#5F5F87";
local change_fg = "#d7d7ff";
local delbg = "#cc6666";
local darkcolumn = "#1c1c1c";

local groups = {
  CursorColumn = {
    bg = bg_line,
  },
  CursorLine = {
    bg = bg_line,
  },
  Directory = {
    fg = blue,
  },
  DiffAdd = {
    bg = add_bg,
    fg = add_fg,
  },
  DiffChange = {
    bg = change_fg,
    fg = change_fg,
  },
  DiffDelete = {
    fg = background,
    bg = delbg,
  },
  DiffText = {
    fg = background,
    bg = blue,
  },
  ErrorMsg = {
    fg = background,
    bg = red,
  },
  VertSplit = {
    fg = window,
  },
  Folded = {
    bg = darkcolumn,
    fg = comment,
  },
  FoldColumn = {
    bg = darkcolumn,
  },
  SignColumn = {
    bg = darkcolumn,
  },
  LineNr = {
    fg = selection,
  },
  CursorLineNr = {
    fg = yellow,
    gui = "bold",
  },
  MatchParen = {
    fg = aqua,
    bg = change_bg,
    gui = "bold",
  },
  ModeMsg = {
    fg = green,
  },
  MoreMsg = {
    fg = green,
  },
  NonText = {
    fg = selection,
  },
  Pmenu = {
    fg = foreground,
    bg = selection,
  },
  PmenuSel = {
    fg = foreground,
    bg = selection,
  },
  Question = {
    fg = green,
  },
  Search = {
    fg = background,
    bg = yellow,
  },
  SpecialKey = {
    fg = selection,
  },
  SpellCap = {
    fg = blue,
  },
  SpellLocal = {
    fg = aqua,
  },
  SpellBad = {
    fg = red,
  },
  SpellRare = {
    fg = purple,
  },
  StatusLine = {
    fg = comment,
    bg = background,
  },
  StatusLineNC = {
    fg = window,
    bg = comment,
  },
  TabLine = {
    fg = foreground,
    bg = darkcolumn,
  },
  Title = {
    fg = yellow,
  },
  Visual = {
    bg = selection,
  },
  WarningMsg = {
    fg = red,
  },
  LongLineWarning = {
    bg = "#371F1C",
    gui = "underline",
  },
  ColorColumn = {
    bg = line,
  },
  Comment = {
    fg = comment,
    -- TODO: let the user enable italic comments or not
    gui = "italic",
  },
  Constant = {
    fg = purple,
  },
  String = {
    fg = green,
  },
  Identifier = {
    fg = red,
  },
  Function = {
    fg = yellow,
  },
  Statement = {
    fg = blue,
  },
  Operator = {
    fg = aqua,
  },
  PreProc = {
    fg = aqua,
    gui = "bold",
  },
  Type = {
    fg = orange,
    -- gui = "bold",
  },
  Keyword = {
    fg = aqua,
  },
  Structure = {
    fg = aqua,
  },
  Special = {
    fg = blue,
  },
  Underlined = {
    fg = blue,
  },
  Ignore = {},
  Error = {
    fg = red,
  },
  Todo = {
    fg = add_fg,
  },
  qfLineNr = {
    fg = yellow,
  },
  Normal = {
    bg = background,
  },
}

for key, value in pairs(groups) do
  highlight(key, value)
end
