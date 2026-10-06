local M = {}

M.url = "https://github.com/vimwiki/vimwiki"

---@type oxocarbon.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    VimwikiCode       = "markdownCode",
    VimwikiHeaderChar = "markdownH1",
    VimwikiHR         = "markdownRule",
    VimwikiLink       = "markdownUrl",
    VimwikiList       = "markdownListMarker",
    VimwikiMarkers    = { fg = c.base08 },
    VimwikiTag        = { fg = c.base13 },
  }
  for i = 1, 6 do
    ret["VimwikiHeader" .. i] = "markdownH1"
  end
  return ret
end

return M
