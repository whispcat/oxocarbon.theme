local M = {}

M.url = "https://github.com/echasnovski/mini.operators"

---@type oxocarbon.HighlightsFn
function M.get()
  -- stylua: ignore
  return {
    MiniOperatorsExchangeFrom = "IncSearch",
  }
end

return M
