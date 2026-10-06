local M = {}

---@type oxocarbon.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    ["@annotation"]                 = "PreProc",
    ["@attribute"]                  = { fg = c.base15 },
    ["@boolean"]                    = "Boolean",
    ["@character"]                  = "Character",
    ["@character.printf"]           = "SpecialChar",
    ["@character.special"]          = "SpecialChar",
    ["@comment"]                    = "Comment",
    ["@comment.error"]              = { fg = c.error },
    ["@comment.hint"]               = { fg = c.hint },
    ["@comment.info"]               = { fg = c.info },
    ["@comment.note"]               = { fg = c.hint },
    ["@comment.todo"]               = { fg = c.todo },
    ["@comment.warning"]            = { fg = c.warning },
    ["@constant"]                   = { fg = c.base14 },
    ["@constant.builtin"]           = { fg = c.base07 },
    ["@constant.macro"]             = { fg = c.base07 },
    ["@constructor"]                = { fg = c.base09 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ["@diff.delta"]                 = "DiffChange",
    ["@diff.minus"]                 = "DiffDelete",
    ["@diff.plus"]                  = "DiffAdd",
    ["@function"]                   = { fg = c.base12, bold = true, style = opts.styles.functions },
    ["@function.builtin"]           = { fg = c.base12 },
    ["@function.call"]              = "@function",
    ["@function.macro"]             = { fg = c.base07 },
    ["@function.method"]            = { fg = c.base07 },
    ["@function.method.call"]       = "@function.method",
    ["@keyword"]                    = { fg = c.base09, style = opts.styles.keywords }, -- For keywords that don't fall in previous categories.
    ["@keyword.conditional"]        = { fg = c.base09, style = opts.styles.keywords },
    ["@keyword.coroutine"]          = "@keyword",
    ["@keyword.debug"]              = "Debug",
    ["@keyword.directive"]          = "PreProc",
    ["@keyword.directive.define"]   = "Define",
    ["@keyword.exception"]          = { fg = c.base15, style = opts.styles.keywords },
    ["@keyword.function"]           = { fg = c.base08, style = opts.styles.keywords }, -- For keywords used to define a function.
    ["@keyword.import"]             = { fg = c.base09, style = opts.styles.keywords },
    ["@keyword.operator"]           = { fg = c.base08, style = opts.styles.keywords },
    ["@keyword.repeat"]             = { fg = c.base09, style = opts.styles.keywords },
    ["@keyword.return"]             = "@keyword",
    ["@keyword.storage"]            = "StorageClass",
    ["@label"]                      = { fg = c.base15 }, -- For labels: `label:` in C and `:label:` in Lua.
    ["@markup"]                     = "@none",
    ["@markup.code.block"]          = "markdownCodeBlock",
    ["@markup.emphasis"]            = { italic = true },
    ["@markup.environment"]         = "Macro",
    ["@markup.environment.name"]    = "Type",
    ["@markup.heading"]             = "Title",
    ["@markup.heading.marker"]      = "markdownHeadingDelimiter",
    ["@markup.italic"]              = { italic = true },
    ["@markup.link"]                = "markdownUrl",
    ["@markup.link.description"]    = { fg = c.base15, underline = true, italic = true },
    ["@markup.link.destination"]    = "markdownUrl",
    ["@markup.link.label"]          = { underline = true },
    ["@markup.link.label.markdown_inline"] = "markdownItalic",
    ["@markup.link.label.symbol"]   = "markdownItalic",
    ["@markup.link.title"]          = "Title",
    ["@markup.link.url"]            = "markdownUrl",
    ["@markup.list"]                = "markdownListMarker",
    ["@markup.list.bullet"]         = "markdownListMarker",
    ["@markup.list.checked"]        = "markdownListMarker",
    ["@markup.list.markdown"]       = "markdownListMarker",
    ["@markup.list.ordered"]        = "markdownOrderedListMarker",
    ["@markup.list.unchecked"]      = "markdownListMarker",
    ["@markup.literal"]             = "markdownCode",
    ["@markup.math"]                = "Special",
    ["@markup.quote"]               = "markdownBlockquote",
    ["@markup.raw"]                 = "String",
    ["@markup.raw.markdown_inline"] = "String",
    ["@markup.rule"]                = "Comment",
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.strong"]              = { bold = true },
    ["@markup.underline"]           = { underline = true },
    ["@module"]                     = { fg = c.base07 },
    ["@module.builtin"]             = "@module",
    ["@namespace.builtin"]          = "@variable.builtin",
    ["@none"]                       = {},
    ["@number"]                     = "Number",
    ["@number.float"]               = "Float",
    ["@operator"]                   = "Operator", -- For any operator: `+`, but also `->` and `*` in C.
    ["@property"]                   = { fg = c.base10 },
    ["@punctuation.bracket"]        = { fg = c.base08 }, -- For brackets and parens.
    ["@punctuation.delimiter"]      = { fg = c.base08 }, -- For delimiters ie: `.`
    ["@punctuation.special"]        = { fg = c.base08 }, -- For special symbols (e.g. `{}` in string interpolation)
    ["@string"]                     = "String",
    ["@string.documentation"]       = "String",
    ["@string.escape"]              = { fg = c.base15 }, -- For escape characters within a string.
    ["@string.regexp"]              = { fg = c.base07 }, -- For regexes.
    ["@string.special.symbol"]      = { fg = c.base15, bold = true },
    ["@string.special.url"]         = { fg = c.base14, underline = true },
    ["@tag"]                        = { fg = c.base09 },
    ["@tag.attribute"]              = { fg = c.base15 },
    ["@tag.builtin.tsx"]            = "@tag.tsx",
    ["@tag.delimiter"]              = { fg = c.base15 },
    ["@type"]                       = "Type",
    ["@type.builtin"]               = "Type",
    ["@type.definition"]            = "Typedef",
    ["@type.qualifier"]             = "@keyword",
    ["@variable"]                   = { fg = c.base04, style = opts.styles.variables }, -- Any variable name that does not have another highlight.
    ["@variable.builtin"]           = { fg = c.base04 }, -- Variable names that are defined by the languages, like `this` or `self`.
    ["@variable.member"]            = { fg = c.base04 }, -- For fields.
    ["@variable.parameter"]         = { fg = c.base04 }, -- For parameters of a function.
    ["@variable.parameter.builtin"] = { fg = c.base04 },

    -- markdown headings
    ["@markup.heading.1.markdown"]  = "markdownH1",
    ["@markup.heading.2.markdown"]  = "markdownH1",
    ["@markup.heading.3.markdown"]  = "markdownH1",
    ["@markup.heading.4.markdown"]  = "markdownH1",
    ["@markup.heading.5.markdown"]  = "markdownH1",
    ["@markup.heading.6.markdown"]  = "markdownH1",
    ["@markup.heading.7.markdown"]  = "markdownH1",
    ["@markup.heading.8.markdown"]  = "markdownH1",

    -- ledger
    ["@markup.raw.commodity"]       = { fg = c.base13 },
    ["@number.date"]                = { fg = c.base08 },
    ["@number.date.effective"]      = { fg = c.base13 },
    ["@number.interval"]            = { fg = c.base09 },
    ["@number.status"]              = { fg = c.base12 },
    ["@number.quantity"]            = { fg = c.base11 },
    ["@number.quantity.negative"]   = { fg = c.base10 },
  }
end

return M
