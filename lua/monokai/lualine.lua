local palette = require("monokai.palette")

local theme = {
  normal = {
    a = { fg = palette.base1, bg = palette.green, gui = "bold" },
    b = { fg = palette.white, bg = palette.base4 },
    c = { fg = palette.orange, bg = palette.base3 },
  },
  insert = { a = { fg = palette.base1, bg = palette.aqua, gui = "bold" } },
  terminal = { a = { fg = palette.base1, bg = palette.aqua, gui = "bold" } },
  visual = { a = { fg = palette.base1, bg = palette.purple, gui = "bold" } },
  replace = { a = { fg = palette.base1, bg = palette.red, gui = "bold" } },
  command = { a = { fg = palette.base1, bg = palette.white, gui = "bold" } },
  inactive = {
    a = { fg = palette.purple, bg = palette.base1, gui = "bold" },
    b = { fg = palette.white, bg = palette.purple },
    c = { fg = palette.base7, bg = palette.base3 },
  },
}

return theme
