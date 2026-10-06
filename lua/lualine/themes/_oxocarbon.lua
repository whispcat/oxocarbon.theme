local M = {}

---@param style? string
function M.get(style)
  local c, config = require("oxocarbon.colors").setup({ style = style or vim.o.background })

  -- mode colors follow oxocarbon.nvim's lualine theme
  local function mode(color)
    return {
      a = { bg = color, fg = c.base02 },
      b = { bg = c.base00, fg = c.base04 },
      c = { bg = c.base00, fg = c.base04 },
      z = { bg = c.base00, fg = color },
    }
  end

  local hl = {
    normal = mode(c.base09),
    insert = mode(c.base12),
    visual = mode(c.base14),
    replace = mode(c.base10),
    command = mode(c.base13),
    terminal = mode(c.base11),
    inactive = {
      a = { bg = c.base00, fg = c.base09 },
      b = { bg = c.base00, fg = c.base03 },
      c = { bg = c.base00, fg = c.base03 },
    },
  }
  hl.normal.z.fg = c.base04

  if config.lualine_bold then
    for _, m in pairs(hl) do
      m.a.gui = "bold"
    end
  end
  return hl
end

return M
