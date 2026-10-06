local M = {}

M.url = "https://github.com/stevearc/aerial.nvim"

---@type oxocarbon.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    AerialNormal = { fg = c.fg, bg = c.none },
    AerialGuide  = { fg = c.fg_gutter },
    AerialLine   = "LspInlayHint",
  }
  require("oxocarbon.groups.kinds").kinds(ret, "Aerial%sIcon")
  return ret
end

return M
