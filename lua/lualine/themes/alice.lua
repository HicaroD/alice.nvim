local alice = {}

local colors = {
  green = "#868E3E",
  purple = "#B294BB",
  yellow = "#F0C674",
  orange = "#D57734",
  blue = "#70C6FF",
  pink = "#E6AACE",
  red = "#CC6666",
  grey = "#282828",
  fg = "#343434",
  bg = "#373737",
  darkgray = '#3c3836',
  lightgray = '#504945',
}

alice.normal = {
  a = { colors.bg, bg = colors.green, gui = 'bold' },
  b = { fg = colors.green, bg = colors.bg },
  c = { fg = colors.fg, bg = colors.bg },
}

alice.inactive = {
  a = { bg = colors.darkgray, fg = colors.gray, gui = 'bold' },
  b = { bg = colors.darkgray, fg = colors.gray },
  c = { bg = colors.darkgray, fg = colors.gray }
}

alice.visual = {
  a = { fg = colors.bg, bg = colors.purple, gui = 'bold' },
  b = { fg = colors.purple, bg = colors.bg },
}

alice.replace = {
  a = { colors.bg, bg = colors.orange, gui = 'bold' },
  b = { fg = colors.orange, bg = colors.bg },
  c = { fg = colors.fg, bg = colors.bg },
}

alice.insert = {
  a = { fg = colors.fg, bg = colors.blue, gui = 'bold' },
  b = { fg = colors.blue, bg = colors.bg },
  c = { fg = colors.fg, bg = colors.bg },
}

alice.terminal = {
  a = { fg = colors.fg, bg = colors.pink, gui = 'bold' },
  b = { fg = colors.fg, bg = colors.bg },
  c = { fg = colors.fg, bg = colors.bg },
}

alice.command = {
  a = { fg = colors.fg, bg = colors.red, gui = 'bold' },
  b = { fg = colors.red, bg = colors.bg },
  c = { fg = colors.fg, bg = colors.bg },
}

return alice
