local Util = require("oxocarbon.util")

local M = {}

---@type table<string, Palette>
M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("oxocarbon.colors." .. style))
  end,
})

---@param opts? oxocarbon.Config
function M.setup(opts)
  opts = require("oxocarbon.config").extend(opts)

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = M.styles[opts.style]

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  -- oxocarbon.nvim hardcodes these for dark; light derives them the same way
  colors.diff = opts.style == "dark"
      and {
        add = "#122f2f",
        delete = "#361c28",
        change = "#222a39",
        text = "#2f3f5c",
      }
    or {
      add = Util.blend_bg(colors.base07, 0.2),
      delete = Util.blend_bg(colors.base09, 0.2),
      change = Util.blend_bg(colors.base11, 0.1),
      text = Util.blend_bg(colors.base11, 0.25),
    }

  colors.git.ignore = colors.dark3
  colors.black = colors.base01
  colors.border_highlight = colors.base02
  colors.border = colors.base01

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.base01

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = colors.base02
  colors.bg_search = colors.base02
  colors.fg_sidebar = colors.fg_dark
  colors.fg_float = colors.base05

  -- diagnostics, as in oxocarbon.nvim
  colors.error = colors.base10
  colors.warning = colors.base14
  colors.info = colors.base09
  colors.hint = colors.base04
  colors.todo = colors.base13

  colors.rainbow = {
    colors.base09,
    colors.base08,
    colors.base14,
    colors.base12,
    colors.base13,
    colors.base15,
    colors.base07,
    colors.base10,
  }

  -- oxocarbon's terminal mapping is intentionally non-semantic; bright == normal
  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    black          = colors.base01,
    black_bright   = colors.base03,
    red            = colors.base11,
    red_bright     = colors.base11,
    green          = colors.base14,
    green_bright   = colors.base14,
    yellow         = colors.base13,
    yellow_bright  = colors.base13,
    blue           = colors.base09,
    blue_bright    = colors.base09,
    magenta        = colors.base15,
    magenta_bright = colors.base15,
    cyan           = colors.base08,
    cyan_bright    = colors.base07,
    white          = colors.base05,
    white_bright   = colors.base06,
  }

  opts.on_colors(colors)

  return colors, opts
end

return M
