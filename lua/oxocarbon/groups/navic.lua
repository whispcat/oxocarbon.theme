local M = {}

M.url = "https://github.com/SmiteshP/nvim-navic"

---@type oxocarbon.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    NavicSeparator = { fg = c.fg, bg = c.none },
    NavicText      = { fg = c.fg, bg = c.none },
  }
  require("oxocarbon.groups.kinds").kinds(ret, "NavicIcons%s")
  return ret
end

return M
