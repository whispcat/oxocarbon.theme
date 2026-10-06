local M = {}

-- lsp symbol kind and completion kind highlights
local kinds = {
  Array = "@punctuation.bracket",
  Boolean = "@boolean",
  Class = "@type",
  Color = "Special",
  Constant = "@constant",
  Constructor = "@constructor",
  Enum = "@lsp.type.enum",
  EnumMember = "@lsp.type.enumMember",
  Event = "Special",
  Field = "@variable.member",
  File = "Normal",
  Folder = "Directory",
  Function = "@function",
  Interface = "@lsp.type.interface",
  Key = "@variable.member",
  Keyword = "@lsp.type.keyword",
  Method = "@function.method",
  Module = "@module",
  Namespace = "@module",
  Null = "@constant.builtin",
  Number = "@number",
  Object = "@constant",
  Operator = "@operator",
  Package = "@module",
  Property = "@property",
  Reference = "@markup.link",
  Snippet = "Conceal",
  String = "@string",
  Struct = "@lsp.type.struct",
  Unit = "@lsp.type.struct",
  Text = "@markup",
  TypeParameter = "@lsp.type.typeParameter",
  Variable = "@variable",
  Value = "@string",
}

---@param hl? oxocarbon.Highlights
---@param pattern? string
function M.kinds(hl, pattern)
  hl = hl or {}
  for kind, link in pairs(kinds) do
    local base = "LspKind" .. kind
    if pattern then
      hl[pattern:format(kind)] = base
    else
      hl[base] = link
    end
  end
  return hl
end

-- completion kind icon colors, grouped as in oxocarbon.nvim
-- stylua: ignore
local kind_colors = {
  base08 = { "Interface", "Color", "TypeParameter" },
  base09 = { "Text", "Enum", "Keyword" },
  base10 = { "Constant", "Constructor", "Reference" },
  base11 = { "Function", "Struct", "Class", "Module", "Operator" },
  base12 = { "Field", "Property", "Event" },
  base13 = { "Unit", "Snippet", "Folder" },
  base14 = { "Variable", "File" },
  base15 = { "Method", "Value", "EnumMember" },
}

---@param hl oxocarbon.Highlights
---@param pattern string
---@param c ColorScheme
function M.colors(hl, pattern, c)
  for slot, names in pairs(kind_colors) do
    for _, kind in ipairs(names) do
      hl[pattern:format(kind)] = { fg = c[slot] }
    end
  end
  return hl
end

---@type oxocarbon.HighlightsFn
function M.get()
  return M.kinds()
end

return M
