local M = {}

M.url = "https://github.com/echasnovski/mini.map"

---@type oxocarbon.HighlightsFn
function M.get()
  -- stylua: ignore
  return {
    MiniMapNormal      = "NormalFloat",
    MiniMapSymbolCount = "Special",
    MiniMapSymbolLine  = "Title",
    MiniMapSymbolView  = "Delimiter",
  }
end

return M
