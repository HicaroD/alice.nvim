-- " File:       hybrid_reverse.vim
-- " Maintainer: Kristijan Husak (kristijanhusak)
-- " URL:        https://github.com/kristijanhusak/vim-hybrid-material
-- " BASED ON:   https://github.com/w0ng/vim-hybrid
-- " Modified:   16 Apr 2016
-- " License:    MIT
--
-- " Description:"{{{
-- " ----------------------------------------------------------------------------
-- " The default RGB colour palette is taken from Tomorrow-Night.vim:
-- " https://github.com/chriskempson/vim-tomorrow-theme
-- "
-- " The reduced RGB colour palette is taken from Codecademy's online editor:
-- " https://www.codecademy.com/learn
-- "
-- " The syntax highlighting scheme is taken from jellybeans.vim:
-- " https://github.com/nanotech/jellybeans.vim
-- "
-- " The is code taken from solarized.vim:
-- " https://github.com/altercation/vim-colors-solarized
--
-- "}}}
-- " Requirements And Recommendations:"{{{
-- " ----------------------------------------------------------------------------
-- " Requirements
-- "   - gVim 7.3+ on Linux, Mac and Windows.
-- "   - Vim 7.3+ on Linux and Mac, using a terminal that supports 256 colours.
-- "
-- " Due to the limited 256 palette, colours in Vim and gVim will still be slightly
-- " different.
-- "
-- " In order to have Vim use the same colours as gVim (the way this colour scheme
-- " is intended), it is recommended that you define the basic 16 colours in your
-- " terminal.
-- "
-- " For Linux users (rxvt-unicode, xterm):
-- "
-- " 1.  Add the default palette to ~/.Xresources:
-- "
-- "         https://gist.github.com/3278077
-- "
-- "     or alternatively, add the reduced contrast palette to ~/.Xresources:
-- "
-- "         https://gist.github.com/w0ng/16e33902508b4a0350ae
-- "
-- " 2.  Add to ~/.vimrc:
-- "
-- "         let g:hybrid_custom_term_colors = 1
-- "         let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
-- "         colorscheme hybrid
-- "
-- " For OSX users (iTerm):
-- "
-- " 1.  Import the default colour preset into iTerm:
-- "
-- "         https://raw.githubusercontent.com/w0ng/dotfiles/master/iterm2/hybrid.itermcolors
-- "
-- "     or alternatively, import the reduced contrast color preset into iTerm:
-- "
-- "         https://raw.githubusercontent.com/w0ng/dotfiles/master/iterm2/hybrid-reduced-contrast.itermcolors
-- "
-- " 2.  Add to ~/.vimrc:
-- "
-- "         let g:hybrid_custom_term_colors = 1
-- "         let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.
-- "         colorscheme hybrid
--
-- "}}}
-- " Initialisation:"{{{
-- " ----------------------------------------------------------------------------
--
-- hi clear
--
-- if exists("syntax_on")
--   syntax reset
-- endif
--
-- let s:style = &background
--
-- let g:colors_name = "hybrid_reverse"
--
-- "}}}
-- " GUI And Cterm Palettes:"{{{
-- " ----------------------------------------------------------------------------
--
-- let s:palette = {'gui' : {} , 'cterm' : {}}
--
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
--
-- if exists("g:hybrid_custom_term_colors") && g:hybrid_custom_term_colors == 1
--   let s:cterm_foreground = "15"  " White
--   let s:cterm_selection  = "8"   " DarkGrey
--   let s:cterm_line       = "0"   " Black
--   let s:cterm_comment    = "7"   " LightGrey
--   let s:cterm_red        = "9"   " LightRed
--   let s:cterm_orange     = "3"   " DarkYellow
--   let s:cterm_yellow     = "11"  " LightYellow
--   let s:cterm_green      = "10"  " LightGreen
--   let s:cterm_aqua       = "14"  " LightCyan
--   let s:cterm_blue       = "12"  " LightBlue
--   let s:cterm_purple     = "13"  " LightMagenta
--   let s:cterm_delbg      = "9"   " LightRed
-- else
--   let s:cterm_foreground = "250"
--   let s:cterm_selection  = "237"
--   let s:cterm_line       = "235"
--   let s:cterm_comment    = "243"
--   let s:cterm_red        = "167"
--   let s:cterm_orange     = "173"
--   let s:cterm_yellow     = "221"
--   let s:cterm_green      = "143"
--   let s:cterm_aqua       = "109"
--   let s:cterm_blue       = "110"
--   let s:cterm_purple     = "139"
--   let s:cterm_delbg      = "167"
-- endif
--
-- let s:palette.cterm.background = { 'dark' : "234"              , 'light' : "254" }
-- let s:palette.cterm.foreground = { 'dark' : s:cterm_foreground , 'light' : "16"  }
-- let s:palette.cterm.window     = { 'dark' : "236"              , 'light' : "247" }
-- let s:palette.cterm.selection  = { 'dark' : s:cterm_selection  , 'light' : "250" }
-- let s:palette.cterm.line       = { 'dark' : s:cterm_line       , 'light' : "252" }
-- let s:palette.cterm.comment    = { 'dark' : s:cterm_comment    , 'light' : "59"  }
-- let s:palette.cterm.red        = { 'dark' : s:cterm_red        , 'light' : "52"  }
-- let s:palette.cterm.orange     = { 'dark' : s:cterm_orange     , 'light' : "94"  }
-- let s:palette.cterm.yellow     = { 'dark' : s:cterm_yellow     , 'light' : "58"  }
-- let s:palette.cterm.green      = { 'dark' : s:cterm_green      , 'light' : "22"  }
-- let s:palette.cterm.aqua       = { 'dark' : s:cterm_aqua       , 'light' : "23"  }
-- let s:palette.cterm.blue       = { 'dark' : s:cterm_blue       , 'light' : "17"  }
-- let s:palette.cterm.purple     = { 'dark' : s:cterm_purple     , 'light' : "53"  }
-- let s:palette.cterm.darkcolumn = { 'dark' : "234"              , 'light' : "244" }
-- let s:palette.cterm.addbg      = { 'dark' : "65"               , 'light' : "194" }
-- let s:palette.cterm.addfg      = { 'dark' : "193"              , 'light' : "22"  }
-- let s:palette.cterm.changebg   = { 'dark' : "60"               , 'light' : "189" }
-- let s:palette.cterm.changefg   = { 'dark' : "189"              , 'light' : "53"  }
-- let s:palette.cterm.delbg      = { 'dark' : s:cterm_delbg      , 'light' : "224" }
-- let s:palette.cterm.darkblue   = { 'dark' : "17"               , 'light' : "194" }
-- let s:palette.cterm.darkcyan   = { 'dark' : "24"               , 'light' : "22"  }
-- let s:palette.cterm.darkred    = { 'dark' : "52"               , 'light' : "189" }
-- let s:palette.cterm.darkpurple = { 'dark' : "53"               , 'light' : "53"  }
--
-- "}}}
-- " Formatting Options:"{{{
-- " ----------------------------------------------------------------------------
-- let s:none   = "NONE"
-- let s:t_none = "NONE"
-- let s:n      = "NONE"
-- let s:c      = ",undercurl"
-- let s:r      = ",reverse"
-- let s:s      = ",standout"
-- let s:b      = ",bold"
-- let s:u      = ",underline"
-- let s:i      = ",italic"
--
-- "}}}
-- " Highlighting Primitives:"{{{
-- " ----------------------------------------------------------------------------
-- function! s:build_prim(hi_elem, field)
--   " Given a:hi_elem = bg, a:field = comment
--   let l:vname = "s:" . a:hi_elem . "_" . a:field " s:bg_comment
--   let l:gui_assign = "gui".a:hi_elem."=".s:palette.gui[a:field][s:style] " guibg=...
--   let l:cterm_assign = "cterm".a:hi_elem."=".s:palette.cterm[a:field][s:style] " ctermbg=...
--   exe "let " . l:vname . " = ' " . l:gui_assign . " " . l:cterm_assign . "'"
-- endfunction
--
-- let s:bg_none = ' guibg=NONE ctermbg=NONE'
-- call s:build_prim('bg', 'foreground')
-- call s:build_prim('bg', 'background')
-- call s:build_prim('bg', 'selection')
-- call s:build_prim('bg', 'line')
-- call s:build_prim('bg', 'comment')
-- call s:build_prim('bg', 'red')
-- call s:build_prim('bg', 'orange')
-- call s:build_prim('bg', 'yellow')
-- call s:build_prim('bg', 'green')
-- call s:build_prim('bg', 'aqua')
-- call s:build_prim('bg', 'blue')
-- call s:build_prim('bg', 'purple')
-- call s:build_prim('bg', 'window')
-- call s:build_prim('bg', 'darkcolumn')
-- call s:build_prim('bg', 'addbg')
-- call s:build_prim('bg', 'addfg')
-- call s:build_prim('bg', 'changebg')
-- call s:build_prim('bg', 'changefg')
-- call s:build_prim('bg', 'delbg')
-- call s:build_prim('bg', 'darkblue')
-- call s:build_prim('bg', 'darkcyan')
-- call s:build_prim('bg', 'darkred')
-- call s:build_prim('bg', 'darkpurple')
--
-- let s:fg_none = ' guifg=NONE ctermfg=NONE'
-- call s:build_prim('fg', 'foreground')
-- call s:build_prim('fg', 'background')
-- call s:build_prim('fg', 'selection')
-- call s:build_prim('fg', 'line')
-- call s:build_prim('fg', 'comment')
-- call s:build_prim('fg', 'red')
-- call s:build_prim('fg', 'orange')
-- call s:build_prim('fg', 'yellow')
-- call s:build_prim('fg', 'green')
-- call s:build_prim('fg', 'aqua')
-- call s:build_prim('fg', 'blue')
-- call s:build_prim('fg', 'purple')
-- call s:build_prim('fg', 'window')
-- call s:build_prim('fg', 'darkcolumn')
-- call s:build_prim('fg', 'addbg')
-- call s:build_prim('fg', 'addfg')
-- call s:build_prim('fg', 'changebg')
-- call s:build_prim('fg', 'changefg')
-- call s:build_prim('fg', 'darkblue')
-- call s:build_prim('fg', 'darkcyan')
-- call s:build_prim('fg', 'darkred')
-- call s:build_prim('fg', 'darkpurple')
--
-- exe "let s:fmt_none = ' gui=NONE".          " cterm=NONE".          " term=NONE"        ."'"
-- exe "let s:fmt_bold = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
-- exe "let s:fmt_bldi = ' gui=NONE".s:b.      " cterm=NONE".s:b.      " term=NONE".s:b    ."'"
-- exe "let s:fmt_undr = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
-- exe "let s:fmt_undb = ' gui=NONE".s:u.s:b.  " cterm=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
-- exe "let s:fmt_undi = ' gui=NONE".s:u.      " cterm=NONE".s:u.      " term=NONE".s:u    ."'"
-- exe "let s:fmt_curl = ' gui=NONE".s:c.      " cterm=NONE".s:c.      " term=NONE".s:c    ."'"
-- exe "let s:fmt_ital = ' gui=NONE".s:i.      " cterm=NONE".s:i.      " term=NONE".s:i    ."'"
-- exe "let s:fmt_stnd = ' gui=NONE".s:s.      " cterm=NONE".s:s.      " term=NONE".s:s    ."'"
-- exe "let s:fmt_revr = ' gui=NONE".s:r.      " cterm=NONE".s:r.      " term=NONE".s:r    ."'"
-- exe "let s:fmt_revb = ' gui=NONE".s:r.s:b.  " cterm=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"
--
-- exe "let s:sp_none       = ' guisp=". s:none                            ."'"
-- exe "let s:sp_foreground = ' guisp=". s:palette.gui.foreground[s:style] ."'"
-- exe "let s:sp_background = ' guisp=". s:palette.gui.background[s:style] ."'"
-- exe "let s:sp_selection  = ' guisp=". s:palette.gui.selection[s:style]  ."'"
-- exe "let s:sp_line       = ' guisp=". s:palette.gui.line[s:style]       ."'"
-- exe "let s:sp_comment    = ' guisp=". s:palette.gui.comment[s:style]    ."'"
-- exe "let s:sp_red        = ' guisp=". s:palette.gui.red[s:style]        ."'"
-- exe "let s:sp_orange     = ' guisp=". s:palette.gui.orange[s:style]     ."'"
-- exe "let s:sp_yellow     = ' guisp=". s:palette.gui.yellow[s:style]     ."'"
-- exe "let s:sp_green      = ' guisp=". s:palette.gui.green[s:style]      ."'"
-- exe "let s:sp_aqua       = ' guisp=". s:palette.gui.aqua[s:style]       ."'"
-- exe "let s:sp_blue       = ' guisp=". s:palette.gui.blue[s:style]       ."'"
-- exe "let s:sp_purple     = ' guisp=". s:palette.gui.purple[s:style]     ."'"
-- exe "let s:sp_window     = ' guisp=". s:palette.gui.window[s:style]     ."'"
-- exe "let s:sp_addbg      = ' guisp=". s:palette.gui.addbg[s:style]      ."'"
-- exe "let s:sp_addfg      = ' guisp=". s:palette.gui.addfg[s:style]      ."'"
-- exe "let s:sp_changebg   = ' guisp=". s:palette.gui.changebg[s:style]   ."'"
-- exe "let s:sp_changefg   = ' guisp=". s:palette.gui.changefg[s:style]   ."'"
-- exe "let s:sp_darkblue   = ' guisp=". s:palette.gui.darkblue[s:style]   ."'"
-- exe "let s:sp_darkcyan   = ' guisp=". s:palette.gui.darkcyan[s:style]   ."'"
-- exe "let s:sp_darkred    = ' guisp=". s:palette.gui.darkred[s:style]    ."'"
-- exe "let s:sp_darkpurple = ' guisp=". s:palette.gui.darkpurple[s:style] ."'"
--
--
-- " Set bold font depending on options
-- if exists("g:enable_bold_font") && g:enable_bold_font == 1
--     let s:fg_bold = s:fmt_bold
-- else
--     let s:fg_bold = s:fmt_none
-- endif
--
-- " Set italic font depending on options
-- if exists("g:enable_italic_font") && g:enable_italic_font == 1
--     let s:fg_italic = s:fmt_ital
-- else
--     let s:fg_italic = s:fmt_none
-- endif
--
-- "}}}
-- " Vim Highlighting: (see :help highlight-groups)"{{{
-- " ----------------------------------------------------------------------------
-- exe "hi! ColorColumn"   .s:fg_none        .s:bg_line        .s:fmt_none
-- "   Conceal"
-- "   Cursor"
-- "   CursorIM"
-- exe "hi! CursorColumn"  .s:fg_none        .s:bg_line        .s:fmt_none
-- exe "hi! CursorLine"    .s:fg_none        .s:bg_line        .s:fmt_none
-- exe "hi! Directory"     .s:fg_blue        .s:bg_none        .s:fmt_none
-- exe "hi! DiffAdd"       .s:fg_addfg       .s:bg_addbg       .s:fmt_none
-- exe "hi! DiffChange"    .s:fg_changefg    .s:bg_changebg    .s:fmt_none
-- exe "hi! DiffDelete"    .s:fg_background  .s:bg_delbg       .s:fmt_none
-- exe "hi! DiffText"      .s:fg_background  .s:bg_blue        .s:fmt_none
-- exe "hi! ErrorMsg"      .s:fg_background  .s:bg_red         .s:fmt_stnd
-- exe "hi! VertSplit"     .s:fg_window      .s:bg_none        .s:fmt_none
-- exe "hi! Folded"        .s:fg_comment     .s:bg_darkcolumn  .s:fmt_none
-- exe "hi! FoldColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
-- exe "hi! SignColumn"    .s:fg_none        .s:bg_darkcolumn  .s:fmt_none
-- "   Incsearch"
-- exe "hi! LineNr"        .s:fg_selection   .s:bg_none        .s:fmt_none
-- exe "hi! CursorLineNr"  .s:fg_yellow      .s:bg_none        .s:fg_bold
-- exe "hi! MatchParen"    .s:fg_aqua        .s:bg_changebg    .s:fg_bold
-- exe "hi! ModeMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
-- exe "hi! MoreMsg"       .s:fg_green       .s:bg_none        .s:fmt_none
-- exe "hi! NonText"       .s:fg_selection   .s:bg_none        .s:fmt_none
-- exe "hi! Pmenu"         .s:fg_foreground  .s:bg_selection   .s:fmt_none
-- exe "hi! PmenuSel"      .s:fg_foreground  .s:bg_selection   .s:fmt_revr
-- "   PmenuSbar"
-- "   PmenuThumb"
-- exe "hi! Question"      .s:fg_green       .s:bg_none        .s:fmt_none
-- exe "hi! Search"        .s:fg_background  .s:bg_yellow      .s:fmt_none
-- exe "hi! SpecialKey"    .s:fg_selection   .s:bg_none        .s:fmt_none
-- exe "hi! SpellCap"      .s:fg_blue        .s:bg_none        .s:fmt_undr
-- exe "hi! SpellLocal"    .s:fg_aqua        .s:bg_none        .s:fmt_undr
-- exe "hi! SpellBad"      .s:fg_red         .s:bg_none        .s:fmt_undr
-- exe "hi! SpellRare"     .s:fg_purple      .s:bg_none        .s:fmt_undr
-- exe "hi! StatusLine"    .s:fg_comment     .s:bg_background  .s:fmt_revr
-- exe "hi! StatusLineNC"  .s:fg_window      .s:bg_comment     .s:fmt_revr
-- exe "hi! TabLine"       .s:fg_foreground  .s:bg_darkcolumn  .s:fmt_revr
-- "   TabLineFill"
-- "   TabLineSel"
-- exe "hi! Title"         .s:fg_yellow      .s:bg_none        .s:fmt_none
-- exe "hi! Visual"        .s:fg_none        .s:bg_selection   .s:fmt_none
-- "   VisualNos"
-- exe "hi! WarningMsg"    .s:fg_red         .s:bg_none        .s:fmt_none
-- " FIXME LongLineWarning to use variables instead of hardcoding
-- hi LongLineWarning  guifg=NONE        guibg=#371F1C     gui=underline ctermfg=NONE        ctermbg=NONE        cterm=underline
-- "   WildMenu"
--
-- " Use defined custom background colour for terminal Vim.
-- if !has('gui_running') && exists("g:hybrid_custom_term_colors") && g:hybrid_custom_term_colors == 1
--   let s:bg_normal = s:bg_none
-- else
--   let s:bg_normal = s:bg_background
-- endif
--
-- let s:normal_bg = s:bg_normal
--
-- if get(g:, 'hybrid_transparent_background', 0) == 1
--   let s:normal_bg = s:bg_none
-- endif
--
-- exe "hi! Normal"        .s:fg_foreground  .s:normal_bg      .s:fmt_none
--
-- "}}}
-- " Generic Syntax Highlighting: (see :help group-name)"{{{
-- " ----------------------------------------------------------------------------
-- exe "hi! Comment"         .s:fg_comment     .s:bg_none        .s:fg_italic
--
-- exe "hi! Constant"        .s:fg_purple      .s:bg_none        .s:fmt_none
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
--
-- " Quickfix window highlighting
-- exe "hi! qfLineNr"        .s:fg_yellow      .s:bg_none        .s:fmt_none
-- "   qfFileName"
-- "   qfLineNr"
-- "   qfError"
--
-- "}}}
-- " Diff Syntax Highlighting:"{{{
-- " ----------------------------------------------------------------------------
-- " Diff
-- "   diffOldFile
-- "   diffNewFile
-- "   diffFile
-- "   diffOnly
-- "   diffIdentical
-- "   diffDiffer
-- "   diffBDiffer
-- "   diffIsA
-- "   diffNoEOL
-- "   diffCommon
-- hi! link diffRemoved Special
-- "   diffChanged
-- hi! link diffAdded String
-- "   diffLine
-- "   diffSubname
-- "   diffComment
--
-- "}}}
-- "
-- " This is needed for some reason: {{{
--
-- let &background = s:style
--
-- " }}}
-- " Legal:"{{{
-- " ----------------------------------------------------------------------------
-- " Copyright (c) 2011 Ethan Schoonover
-- " Copyright (c) 2009-2012 NanoTech
-- " Copyright (c) 2012 w0ng
-- "
-- " Permission is hereby granted, free of charge, to any per‐
-- " son obtaining a copy of this software and associated doc‐
-- " umentation files (the “Software”), to deal in the Soft‐
-- " ware without restriction, including without limitation
-- " the rights to use, copy, modify, merge, publish, distrib‐
-- " ute, sublicense, and/or sell copies of the Software, and
-- " to permit persons to whom the Software is furnished to do
-- " so, subject to the following conditions:
-- "
-- " The above copyright notice and this permission notice
-- " shall be included in all copies or substantial portions
-- " of the Software.
-- "
-- " THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY
-- " KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
-- " THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICU‐
-- " LAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- " AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
-- " DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CON‐
-- " TRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CON‐
-- " NECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
-- " THE SOFTWARE.
--
-- " }}}

local cmd = vim.cmd
local fn = vim.fn

if vim.g.colors_name then
  vim.cmd("hi clear")
end

if fn.exists("syntax_on") then
  cmd("syntax reset")
end

-- TODO: change this colorscheme to fit my own colors
local Color, colors, Group, groups, styles = require("colorbuddy").setup()

Color.new('background', "#2E3440")
Color.new('fg', "#292929")
Color.new('nord_0', "#2E3440")
Color.new('nord_1',"#3B4252")
Color.new('nord_2', "#434C5E")
Color.new('nord_3', "#4C566A")
Color.new('nord_3_light', "#616E88")
Color.new('nord_4', "#D8DEE9")
Color.new('nord_5', "#E5E9F0")
Color.new('nord_6', "#ECEFF4")
Color.new('nord_7', "#8FBCBB")
Color.new('nord_8', "#88C0D0")
Color.new('nord_9', "#81A1C1")
Color.new('nord_10', "#5E81AC")
Color.new('nord_11', "#BF616A")
Color.new('nord_12', "#D08770")
Color.new('nord_13', "#EBCB8B")
Color.new('nord_14', "#A3BE8C")
Color.new('nord_15', "#B48EAD")

Color.new('white',     '#D8DEE9')
Color.new('red',       '#BF616A')
Color.new('green',     '#A3BE8C')
Color.new('yellow',    '#EBCB8B')
Color.new('blue',      '#81A1C1')
Color.new('aqua',      '#A3BE8C')
Color.new('cyan',      '#8FBCBB')
Color.new('purple',    '#B48EAD')
Color.new('violet',    '#B48EAD')
Color.new('orange',    '#D08770')

-- my highlight
Group.new('TabLineSel', colors.nord_0,  colors.nord_9, styles.italic )
Group.new('TabLineSelSeparator', colors.nord_9, colors.nord_0)
Group.new('TabLine', colors.fg, colors.nord_2)
Group.new('TabLineSeparator', colors.nord_2, colors.fg)
Group.new('TabLineFill', colors.none, colors.none)

Group.new('Conceal',             colors.nord_3_light, colors.none)
Group.new('VertSplit', colors.nord_3, colors.none)

Group.new('Normal',         colors.background,         colors.none)
Group.new('Function',       colors.nord_8,       colors.none,    styles.NONE)
Group.new('Error',          colors.nord_11,      colors.none,    styles.bold)
Group.new('ErrorMsg',       colors.nord_5,       colors.nord_11, styles.bold)
Group.new('WarningMsg',     colors.nord_5,       colors.nord_12, styles.bold)
Group.new('Boolean',        colors.nord_9,       colors.none,    styles.NONE)
Group.new('Character',      colors.nord_14,      colors.none,    styles.NONE)
Group.new('Comment',        colors.nord_3_light, colors.none,    styles.italic)
Group.new("Conditional",    colors.nord_9,       colors.none,    styles.italic)
Group.new("Constant",       colors.nord_4,       colors.none,    styles.italic)
Group.new("Define",         colors.nord_9,       colors.none,    styles.NONE)
Group.new("Delimiter",      colors.nord_6,       colors.none,    styles.NONE)
Group.new("Exception",      colors.nord_9,       colors.none,    styles.NONE)
Group.new("Float",          colors.nord_15,      colors.none,    styles.NONE)
Group.new("Function",       colors.nord_8,       colors.none,    styles.NONE)
Group.new("Identifier",     colors.nord_4,       colors.none,    styles.NONE)
Group.new("Include",        colors.nord_9,       colors.none,    styles.NONE)
Group.new("Keyword",        colors.nord_7,       colors.none,    styles.italic)
Group.new("Label",          colors.nord_9,       colors.none,    styles.NONE)
Group.new("Number",         colors.nord_15,      colors.none,    styles.NONE)
Group.new("Operator",       colors.nord_9,       colors.none,    styles.NONE)
Group.new("PreProc",        colors.nord_9,       colors.none,    styles.NONE)
Group.new("Repeat",         colors.nord_9,       colors.none,    styles.NONE)
Group.new("Special",        colors.nord_4,       colors.none,    styles.NONE)
Group.new("SpecialChar",    colors.nord_13,      colors.none,    styles.NONE)
Group.new("SpecialComment", colors.nord_8,       colors.none,    styles.italic)
Group.new("Statement",      colors.nord_9,       colors.none,    styles.NONE)
Group.new("StorageClass",   colors.nord_9,       colors.none,    styles.NONE)
Group.new("String",         colors.nord_14,      colors.none,    styles.NONE)
Group.new("Structure",      colors.nord_9,       colors.none,    styles.NONE)
Group.new("Tag",            colors.nord_4,       colors.none,    styles.NONE)
Group.new("Title",          colors.nord_4,       colors.none)
Group.new("Todo",           colors.nord_13,      colors.none,    styles.NONE)
Group.new("Type",           colors.nord_9,       colors.none,    styles.NONE)
Group.new("Typedef",        colors.nord_9,       colors.none,    styles.NONE)
Group.new("CursorColumn",   colors.nord_1,       colors.none,    styles.NONE)
Group.new("LineNr",         colors.nord_9,       colors.none,    styles.NONE)
Group.new("CursorLineNr",   colors.nord_5,       colors.none,    styles.NONE)
Group.new("Line",           colors.nord_12,      colors.none,    styles.bold)
Group.new("SignColumn",     colors.none,         colors.none,    styles.NONE)
Group.new("StatusLine",     colors.nord_8,       colors.nord_3,    styles.NONE)

Group.new("ColorColumn", colors.none, colors.nord_1)
Group.new("Cursor", colors.nord_0, colors.nord_4)
Group.new("CursorLine", colors.none, colors.none)
Group.new("iCursor",colors.nord_0, colors.nord_4)
Group.new("EndOfBuffer",colors.none, colors.none)
Group.new("MatchParen",colors.nord_8, colors.nord_3)
Group.new("NonText",colors.none, colors.none)
Group.new("PMenu", colors.nord_4, colors.nord_2)
Group.new("PmenuSbar", colors.nord_4, colors.nord_2)
Group.new("PMenuSel", colors.nord_6, colors.nord_9)
Group.new("PmenuThumb", colors.nord_8, colors.nord_3)
Group.new("SpecialKey",colors.nord_3, colors.nord_3)
Group.new("SpellBad",colors.nord_11, colors.nord_0)
Group.new("SpellCap",colors.nord_13, colors.nord_0)
Group.new("SpellLocal",colors.nord_5, colors.nord_0)
Group.new("SpellRare",colors.nord_6, colors.nord_0)
Group.new("Visual",colors.nord_4, colors.nord_9)
Group.new("VisualNOS",colors.nord_2, colors.nord_1)
Group.new("Folded", colors.nord_14, colors.none, styles.italic)

-- "+- Neovim Support -+
Group.new("healthError",colors.nord_11, colors.nord_1)
Group.new("healthSuccess",colors.nord_14, colors.nord_1)
Group.new("healthWarning",colors.nord_13, colors.nord_1)
Group.new("TermCursorNC",colors.nord_1, colors.nord_1)
Group.new("IncSearch",colors.nord_6, colors.nord_10, styles.underline)
Group.new("Search",colors.nord_1, colors.nord_8)

-- vim
Group.new('vimcommand',      groups.Statement, colors.none)
Group.new('vimLet',          groups.vimcommand , colors.none)
Group.new('vimFuncVar',      groups.identifier, colors.none)
Group.new('vimCommentTitle', groups.PreProc, colors.none)
Group.new('vimIsCommand',    colors.none, colors.none)
Group.new('vimFuncSID',      groups.Special, colors.none)
Group.new('vimMapModKey',    groups.vimFuncSID, colors.none)
Group.new('vimMapLhs',       colors.none, colors.none)
Group.new('vimNotation',     colors.nord_7, colors.none)
Group.new('vimBracket',      groups.Delimiter, colors.none)
Group.new('vimMap',          groups.vimcommand, colors.none)
Group.new('nvimMap',         groups.vimMap, colors.none)

-- startify
Group.new("StartifyFile",colors.nord_6, colors.none)
Group.new("StartifyFooter",colors.none, colors.none)
Group.new("StartifyHeader",colors.nord_8, colors.none)
Group.new("StartifyNumber",colors.nord_7, colors.none)
Group.new("StartifyPath",colors.nord_8, colors.none)
Group.new("StartifyBracket", groups.Delimiter, groups.Delimiter)
Group.new("StartifySlash", groups.Normal, groups.Normal)
Group.new("StartifySpecial", groups.Comment, groups.Comment)

-- gitgutter
Group.new("GitGutterAdd",          colors.nord_14, colors.none)
Group.new("GitGutterDelete",       colors.nord_11, colors.none)
Group.new("GitGutterChange",       colors.nord_13, colors.none)
Group.new("GitGutterChangeDelete", colors.nord_11, colors.none)

-- built-in LSP
Group.new("DiagnosticWarn", colors.nord_13, colors.none)
Group.new("DiagnosticError", colors.nord_11, colors.none)
Group.new("DiagnosticInfo", colors.nord_8, colors.none)
Group.new("DiagnosticHint", colors.nord_10, colors.none)

Group.new("LSPReferenceText", colors.none, colors.none)
Group.new("LSPReferenceRead", colors.none, colors.none, styles.bold)
Group.new("LSPReferenceWrite", colors.nord_9, colors.none, styles.bold)

-- Markdown
Group.new("markdownError", colors.nord_4, colors.none)

Group.new("CmpItemAbbr", colors.nord_4, colors.none)
Group.new("CmpItemKind", colors.nord_13, colors.none)
Group.new("CmpItemMenu", colors.nord_7, colors.none)
