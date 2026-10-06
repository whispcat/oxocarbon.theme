---@class Palette
local ret = {
  -- oxocarbon base16 slots (resolved from oxocarbon.nvim)
  base00 = "#ffffff",
  base01 = "#f2f2f2",
  base02 = "#d0d0d0",
  base03 = "#161616",
  base04 = "#37474f",
  base05 = "#90a4ae",
  base06 = "#525252",
  base07 = "#08bdba",
  base08 = "#ff7eb6",
  base09 = "#ee5396",
  base10 = "#ff6f00",
  base11 = "#0f62fe",
  base12 = "#673ab7",
  base13 = "#42be65",
  base14 = "#be95ff",
  base15 = "#ffab91",
  blend = "#fafafa",
}

-- UI
ret.bg = ret.base00
ret.bg_dark = ret.blend
ret.bg_dark1 = "#e8e8e8"
ret.bg_highlight = ret.base01
ret.fg = ret.base04
ret.fg_dark = ret.base04
ret.fg_gutter = ret.base02
-- base03 is near-black in light, so comments use the muted blue-gray instead
ret.comment = ret.base05
ret.dark3 = ret.base05
ret.dark5 = "#6f7f86"
ret.terminal_black = ret.base05

-- hues
ret.red = ret.base09
ret.red1 = ret.base09
ret.magenta2 = ret.base09
ret.orange = ret.base10
ret.yellow = ret.base10
ret.green = ret.base13
ret.green1 = ret.base07
ret.green2 = ret.base07
ret.teal = ret.base07
ret.cyan = ret.base07
ret.blue = ret.base11
ret.blue0 = "#c6d7fe"
ret.blue1 = ret.base11
ret.blue2 = ret.base11
ret.blue5 = ret.base11
ret.blue6 = ret.base07
ret.blue7 = "#dfe8ff"
ret.magenta = ret.base12
ret.purple = ret.base14
ret.pink = ret.base08

ret.git = {
  add = ret.base07,
  change = ret.base09,
  delete = ret.base10,
}

return ret
