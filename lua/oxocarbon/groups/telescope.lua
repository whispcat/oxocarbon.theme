local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type oxocarbon.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    TelescopeBorder         = { fg = c.bg_float, bg = c.bg_float },
    TelescopeMatching       = { fg = c.base08, bold = true, italic = true },
    TelescopeNormal         = { bg = c.bg_float },
    TelescopePreviewLine    = { bg = c.base01 },
    TelescopePreviewTitle   = { fg = c.base02, bg = c.base12 },
    TelescopePromptBorder   = { fg = c.base02, bg = c.base02 },
    TelescopePromptNormal   = { fg = c.base05, bg = c.base02 },
    TelescopePromptPrefix   = { fg = c.base08, bg = c.base02 },
    TelescopePromptTitle    = { fg = c.base02, bg = c.base11 },
    TelescopeResultsComment = { fg = c.dark3 },
    TelescopeResultsTitle   = { fg = c.bg_float, bg = c.bg_float },
    TelescopeSelection      = { bg = c.base02 },
  }
end

return M
