local M = {}

M.url = "https://github.com/folke/flash.nvim"

---@type oxocarbon.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    FlashBackdrop = { fg = c.dark3 },
    FlashLabel    = { fg = c.base05, bg = c.base00, bold = true },
  }
end

return M
