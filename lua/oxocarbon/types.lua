---@class oxocarbon.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias oxocarbon.Highlights table<string,oxocarbon.Highlight|string>

---@alias oxocarbon.HighlightsFn fun(colors: ColorScheme, opts:oxocarbon.Config):oxocarbon.Highlights

---@class oxocarbon.Cache
---@field groups oxocarbon.Highlights
---@field inputs table
