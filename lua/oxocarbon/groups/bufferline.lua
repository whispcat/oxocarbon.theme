local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

---@type oxocarbon.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    BufferLineIndicatorSelected = { fg = c.git.change },
    BufferLineDiagnostic        = { fg = c.error, bold = true },
    BufferLineDiagnosticVisible = { fg = c.error, bold = true },
  }
end

return M
