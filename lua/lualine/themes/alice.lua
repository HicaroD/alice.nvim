local alice = {}

local colors = {
  grey = "#282828",
  green = "#B5BD68",
  purple = "#B294BB",
  yellow = "#F0C674",
  orange = "#DE935F",
  blue = "#007ACC",
  pink = "#E6AACE",
  red = "#CC6666",
}

-- Green
alice.normal = {
  a = { fg = colors.grey, bg = colors.green, gui = 'bold' },
  -- b = { fg = colors.blue, bg = config.opts.transparent and 'NONE' or colors.bg2 },
  -- c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

-- Purple
alice.visual = {
  a = { fg = colors.grey, bg = colors.purple, gui = 'bold' },
  -- b = { fg = colors.yellow, bg = config.opts.transparent and 'NONE' or colors.bg },
}

-- Yellow
alice.inactive = {
  a = { fg = colors.grey, gui = 'bold' },
  -- b = { fg = colors.inactive, bg = config.opts.transparent and 'NONE' or colors.bg },
  -- c = { fg = colors.inactive, bg = config.opts.transparent and 'NONE' or colors.bg },
}

-- Orange
alice.replace = {
  a = { fg = colors.grey, bg = colors.orange, gui = 'bold' },
  -- b = { fg = colors.red, bg = config.opts.transparent and 'NONE' or colors.bg2 },
  -- c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

-- Blue
alice.insert = {
  a = { fg = colors.grey, bg = colors.blue, gui = 'bold' },
  -- b = { fg = colors.green, bg = config.opts.transparent and 'NONE' or colors.bg2 },
  -- c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

-- Pink
alice.terminal = {
  a = { fg = colors.grey, bg = colors.pink, gui = 'bold' },
  -- b = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg2 },
  -- c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

-- Red
alice.command = {
  a = { fg = colors.grey, bg = colors.red, gui = 'bold' },
  -- b = { fg = colors.pink, bg = config.opts.transparent and 'NONE' or colors.bg2 },
  -- c = { fg = colors.fg, bg = config.opts.transparent and 'NONE' or colors.bg },
}

return alice
