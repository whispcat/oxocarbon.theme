local M = {}

M.url = "https://github.com/nvimtools/hydra.nvim"

---@type oxocarbon.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    HydraRed      = { fg = c.base12 },
    HydraBlue     = { fg = c.base09 },
    HydraAmaranth = { fg = c.base10 },
    HydraTeal     = { fg = c.base08 },
    HydraPink     = { fg = c.base14 },
    HydraHint     = { bg = c.bg_float },
  }
end

return M
