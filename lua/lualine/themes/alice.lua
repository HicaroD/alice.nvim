local alice = {}

local colors = {
  green = "#B5BD68",
  purple = "#B294BB",
  yellow = "#F0C674",
  orange = "#DE935F",
  blue = "#70C6FF",
  pink = "#E6AACE",
  red = "#CC6666",
  grey = "#282828",
  darkgray = '#3c3836',
  lightgray = '#504945',
}

alice.normal = {
  a = { fg = colors.grey, bg = colors.green, gui = 'bold' },
  -- b = { },
  -- c = { },
}

alice.visual = {
  a = { fg = colors.grey, bg = colors.purple, gui = 'bold' },
  -- b = { },
}

alice.inactive = {
  a = { bg = colors.darkgray, fg = colors.gray, gui = 'bold' },
  b = { bg = colors.darkgray, fg = colors.gray },
  c = { bg = colors.darkgray, fg = colors.gray }
}

alice.replace = {
  a = { fg = colors.grey, bg = colors.orange, gui = 'bold' },
  -- b = { },
  -- c = { },
}

alice.insert = {
  a = { fg = colors.grey, bg = colors.blue, gui = 'bold' },
  -- b = { },
  -- c = { },
}

alice.terminal = {
  a = { fg = colors.grey, bg = colors.pink, gui = 'bold' },
  -- b = { },
  -- c = { },
}

alice.command = {
  a = { fg = colors.grey, bg = colors.red, gui = 'bold' },
  -- b = { },
  -- c = { },
}

return alice
