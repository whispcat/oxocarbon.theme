local M = {}

M.version = "1.0.2"

---@class oxocarbon.Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: oxocarbon.Highlights, colors: ColorScheme)
M.defaults = {
  style = "dark", -- The theme comes in two styles, `dark` and `light`
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "normal", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  -- selene: allow(unused_variable)
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights oxocarbon.Highlights
  ---@param colors ColorScheme
  -- selene: allow(unused_variable)
  on_highlights = function(highlights, colors) end,

  cache = true, -- When set to true, the theme will be cached for better performance

  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    -- enable all plugins when not using lazy.nvim
    -- set to false to manually enable/disable plugins
    all = package.loaded.lazy == nil,
    -- uses your plugin manager to automatically enable needed plugins
    -- currently only lazy.nvim is supported
    auto = true,
    -- add any plugins here that you want to enable
    -- for all possible plugins, see:
    --   * https://github.com/whispcat/oxocarbon.theme/tree/main/lua/oxocarbon/groups
    -- telescope = true,
  },
}

---@type oxocarbon.Config
M.options = nil

---@param options? oxocarbon.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? oxocarbon.Config
function M.extend(opts)
  return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end,
})

return M
