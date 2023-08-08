local alice = {}

local colors = {
  grey = "#282828",
  green = "#B5BD68",
  purple = "#B294BB",
  yellow = "#F0C674",
  orange = "#DE935F",
  blue = "#70C6FF",
  pink = "#E6AACE",
  red = "#CC6666",
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
  a = { fg = colors.grey, gui = 'bold' },
  -- b = { },
  -- c = { },
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
