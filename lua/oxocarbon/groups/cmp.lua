local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type oxocarbon.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    CmpDocumentation       = { fg = c.fg_float, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.bg_float, bg = c.bg_float },
    CmpGhostText           = { fg = c.comment },
    CmpItemAbbr            = { fg = c.dark5 },
    CmpItemAbbrDeprecated  = { fg = c.comment, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.base05, bold = true },
    CmpItemAbbrMatchFuzzy  = { fg = c.base04, bold = true },
    CmpItemKindCodeium     = { fg = c.base07 },
    CmpItemKindCopilot     = { fg = c.base07 },
    CmpItemKindSupermaven  = { fg = c.base07 },
    CmpItemKindDefault     = { fg = c.base04 },
    CmpItemKindTabNine     = { fg = c.base07 },
    CmpItemMenu            = { fg = c.base04, italic = true },
  }

  require("oxocarbon.groups.kinds").kinds(ret, "CmpItemKind%s")
  require("oxocarbon.groups.kinds").colors(ret, "CmpItemKind%s", c)
  return ret
end

return M
