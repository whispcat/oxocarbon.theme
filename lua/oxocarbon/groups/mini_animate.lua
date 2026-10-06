local M = {}

M.url = "https://github.com/echasnovski/mini.animate"

---@type oxocarbon.HighlightsFn
function M.get()
  -- stylua: ignore
  return {
    MiniAnimateCursor      = { reverse = true, nocombine = true },
    MiniAnimateNormalFloat = "NormalFloat",
  }
end

return M
