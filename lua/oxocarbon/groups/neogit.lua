local Util = require("oxocarbon.util")

local M = {}

M.url = "https://github.com/TimUntersberger/neogit"

---@type oxocarbon.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    NeogitBranch               = { fg = c.base10 },
    NeogitRemote               = { fg = c.base09 },
    NeogitHunkHeader           = { fg = c.base04, bg = c.base02 },
    NeogitHunkHeaderHighlight  = { fg = c.base04, bg = c.base03 },
    NeogitDiffContextHighlight = { bg = Util.blend_bg(c.fg_gutter, 0.5), fg = c.fg_dark },
    NeogitDiffDeleteHighlight  = { fg = c.git.delete, bg = c.diff.delete },
    NeogitDiffAddHighlight     = { fg = c.git.add, bg = c.diff.add },
  }
end

return M
