local M = {}

M.url = "https://github.com/goolord/alpha-nvim"

---@type oxocarbon.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    AlphaShortcut    = { fg = c.base12 },
    AlphaHeader      = { fg = c.base09 },
    AlphaHeaderLabel = { fg = c.base12 },
    AlphaFooter      = { fg = c.base08 },
    AlphaButtons     = { fg = c.base08 },
    alpha1           = { fg = c.base03 },
    alpha2           = { fg = c.base04 },
    alpha3           = { fg = c.base03 },
  }
end

return M
