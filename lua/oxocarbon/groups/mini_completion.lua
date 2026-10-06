local M = {}

M.url = "https://github.com/echasnovski/mini.completion"

---@type oxocarbon.HighlightsFn
function M.get()
  -- stylua: ignore
  return {
    MiniCompletionActiveParameter = { underline = true },
  }
end

return M
