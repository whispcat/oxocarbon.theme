---@class Palette
local ret = {
  -- oxocarbon base16 slots (resolved from oxocarbon.nvim)
  base00 = "#161616",
  base01 = "#262626",
  base02 = "#393939",
  base03 = "#525252",
  base04 = "#d0d0d0",
  base05 = "#f2f2f2",
  base06 = "#ffffff",
  base07 = "#08bdba",
  base08 = "#3ddbd9",
  base09 = "#78a9ff",
  base10 = "#ee5396",
  base11 = "#33b1ff",
  base12 = "#ff7eb6",
  base13 = "#42be65",
  base14 = "#be95ff",
  base15 = "#82cfff",
  blend = "#131313",
}

-- UI
ret.bg = ret.base00
ret.bg_dark = ret.blend
ret.bg_dark1 = "#0b0b0b"
ret.bg_highlight = ret.base01
ret.fg = ret.base04
ret.fg_dark = ret.base04
ret.fg_gutter = ret.base02
ret.comment = ret.base03
ret.dark3 = ret.base03
ret.dark5 = "#adadad"
ret.terminal_black = ret.base03

-- hues (oxocarbon has no yellow/orange; they map onto its own palette)
ret.red = ret.base10
ret.red1 = ret.base10
ret.magenta2 = ret.base10
ret.orange = ret.base12
ret.yellow = ret.base13
ret.green = ret.base13
ret.green1 = ret.base07
ret.green2 = ret.base07
ret.teal = ret.base07
ret.cyan = ret.base08
ret.blue = ret.base09
ret.blue0 = "#2f3f5c"
ret.blue1 = ret.base08
ret.blue2 = ret.base11
ret.blue5 = ret.base15
ret.blue6 = ret.base15
ret.blue7 = "#222a39"
ret.magenta = ret.base14
ret.purple = ret.base14
ret.pink = ret.base12

ret.git = {
  add = ret.base07,
  change = ret.base09,
  delete = ret.base10,
}

return ret
