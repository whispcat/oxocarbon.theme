local config = require("oxocarbon.config")

local M = {}

---@param opts? oxocarbon.Config
function M.load(opts)
  opts = require("oxocarbon.config").extend(opts)
  local bg = vim.o.background

  if bg ~= opts.style then
    -- `:set background` re-sources the active colorscheme: follow it instead of reverting it
    if vim.g.colors_name == "oxocarbon-" .. opts.style then
      opts.style = bg
    else
      vim.o.background = opts.style
    end
  end
  return require("oxocarbon.theme").setup(opts)
end

M.setup = config.setup

return M
