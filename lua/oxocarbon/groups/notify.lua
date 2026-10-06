local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type oxocarbon.HighlightsFn
function M.get(c, opts)
  local bg = opts.transparent and c.none or c.bg
  -- stylua: ignore
  return {
    NotifyBackground  = { fg = c.fg, bg = c.bg },
    NotifyDEBUGBody   = { fg = c.fg, bg = bg },
    NotifyDEBUGBorder = { fg = c.base13 },
    NotifyDEBUGIcon   = { fg = c.base13 },
    NotifyDEBUGTitle  = { fg = c.base13 },
    NotifyERRORBody   = { fg = c.fg, bg = bg },
    NotifyERRORBorder = { fg = c.base08 },
    NotifyERRORIcon   = { fg = c.base08 },
    NotifyERRORTitle  = { fg = c.base08 },
    NotifyINFOBody    = { fg = c.fg, bg = bg },
    NotifyINFOBorder  = { fg = c.base05 },
    NotifyINFOIcon    = { fg = c.base05 },
    NotifyINFOTitle   = { fg = c.base05 },
    NotifyTRACEBody   = { fg = c.fg, bg = bg },
    NotifyTRACEBorder = { fg = c.base13 },
    NotifyTRACEIcon   = { fg = c.base13 },
    NotifyTRACETitle  = { fg = c.base13 },
    NotifyWARNBody    = { fg = c.fg, bg = bg },
    NotifyWARNBorder  = { fg = c.base14 },
    NotifyWARNIcon    = { fg = c.base14 },
    NotifyWARNTitle   = { fg = c.base14 },
  }
end

return M
