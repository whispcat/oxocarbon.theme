local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

---@type oxocarbon.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    BlinkCmpDoc                          = { fg = c.base05, bg = c.base01 },
    BlinkCmpDocBorder                    = { fg = c.base03, bg = c.base01 },
    BlinkCmpDocCursorLine                = { bg = c.base02 },
    BlinkCmpDocSeparator                 = { fg = c.base02, bg = c.base01 },
    BlinkCmpGhostText                    = { fg = c.comment },
    BlinkCmpKind                         = { fg = c.base04 },
    BlinkCmpKindCodeium                  = { fg = c.base01, bg = c.base07 },
    BlinkCmpKindCopilot                  = { fg = c.base01, bg = c.base07 },
    BlinkCmpKindDefault                  = { fg = c.base04 },
    BlinkCmpKindSupermaven               = { fg = c.base01, bg = c.base07 },
    BlinkCmpKindTabNine                  = { fg = c.base01, bg = c.base07 },
    BlinkCmpLabel                        = { fg = c.dark5 },
    BlinkCmpLabelDeprecated              = { fg = c.comment, italic = true },
    BlinkCmpLabelDescription             = { fg = c.base04 },
    BlinkCmpLabelDetail                  = { fg = c.base04, italic = true },
    BlinkCmpLabelMatch                   = { fg = c.base05, bold = true },
    BlinkCmpMenu                         = { fg = c.base04, bg = c.base01 },
    BlinkCmpMenuBorder                   = { fg = c.base03, bg = c.base01 },
    BlinkCmpMenuSelection                = "PmenuSel",
    BlinkCmpScrollBarGutter              = { bg = c.base02 },
    BlinkCmpScrollBarThumb               = { bg = c.base03 },
    BlinkCmpSignatureHelp                = { fg = c.base05, bg = c.base01 },
    BlinkCmpSignatureHelpActiveParameter = { fg = c.base08, bg = c.base02, bold = true },
    BlinkCmpSignatureHelpBorder          = { fg = c.base03, bg = c.base01 },
    BlinkCmpSource                       = { fg = c.base04, italic = true },
  }

  require("oxocarbon.groups.kinds").kinds(ret, "BlinkCmpKind%s")
  require("oxocarbon.groups.kinds").badges(ret, "BlinkCmpKind%s", c)
  return ret
end

return M
