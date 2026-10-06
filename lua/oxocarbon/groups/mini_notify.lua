local M = {}

M.url = "https://github.com/echasnovski/mini.notify"

---@type oxocarbon.HighlightsFn
function M.get()
  -- stylua: ignore
  return {
    MiniNotifyBorder = "FloatBorder",
    MiniNotifyNormal = "NormalFloat",
    MiniNotifyTitle = "FloatTitle",
  }
end

return M
