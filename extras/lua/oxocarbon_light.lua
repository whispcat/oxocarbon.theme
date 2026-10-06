local colors = {
  _name = "oxocarbon_light",
  _style = "light",
  base00 = "#ffffff",
  base01 = "#f2f2f2",
  base02 = "#d0d0d0",
  base03 = "#161616",
  base04 = "#37474f",
  base05 = "#90a4ae",
  base06 = "#525252",
  base07 = "#08bdba",
  base08 = "#ff7eb6",
  base09 = "#ee5396",
  base10 = "#ff6f00",
  base11 = "#0f62fe",
  base12 = "#673ab7",
  base13 = "#42be65",
  base14 = "#be95ff",
  base15 = "#ffab91",
  bg = "#ffffff",
  bg_dark = "#fafafa",
  bg_dark1 = "#e8e8e8",
  bg_float = "#fafafa",
  bg_highlight = "#f2f2f2",
  bg_popup = "#fafafa",
  bg_search = "#d0d0d0",
  bg_sidebar = "#ffffff",
  bg_statusline = "#f2f2f2",
  bg_visual = "#d0d0d0",
  black = "#f2f2f2",
  blend = "#fafafa",
  blue = "#0f62fe",
  blue0 = "#c6d7fe",
  blue1 = "#0f62fe",
  blue2 = "#0f62fe",
  blue5 = "#0f62fe",
  blue6 = "#08bdba",
  blue7 = "#dfe8ff",
  border = "#f2f2f2",
  border_highlight = "#d0d0d0",
  comment = "#90a4ae",
  cyan = "#08bdba",
  dark3 = "#90a4ae",
  dark5 = "#6f7f86",
  diff = {
    add = "#cef2f1",
    change = "#e7efff",
    delete = "#fcddea",
    text = "#c3d8ff"
  },
  error = "#ff6f00",
  fg = "#37474f",
  fg_dark = "#37474f",
  fg_float = "#90a4ae",
  fg_gutter = "#d0d0d0",
  fg_sidebar = "#37474f",
  git = {
    add = "#08bdba",
    change = "#ee5396",
    delete = "#ff6f00",
    ignore = "#90a4ae"
  },
  green = "#42be65",
  green1 = "#08bdba",
  green2 = "#08bdba",
  hint = "#37474f",
  info = "#ee5396",
  magenta = "#673ab7",
  magenta2 = "#ee5396",
  none = "NONE",
  orange = "#ff6f00",
  pink = "#ff7eb6",
  purple = "#be95ff",
  rainbow = { "#ee5396", "#ff7eb6", "#be95ff", "#673ab7", "#42be65", "#ffab91", "#08bdba", "#ff6f00" },
  red = "#ee5396",
  red1 = "#ee5396",
  teal = "#08bdba",
  terminal = {
    black = "#f2f2f2",
    black_bright = "#161616",
    blue = "#ee5396",
    blue_bright = "#ee5396",
    cyan = "#ff7eb6",
    cyan_bright = "#08bdba",
    green = "#be95ff",
    green_bright = "#be95ff",
    magenta = "#ffab91",
    magenta_bright = "#ffab91",
    red = "#0f62fe",
    red_bright = "#0f62fe",
    white = "#90a4ae",
    white_bright = "#525252",
    yellow = "#42be65",
    yellow_bright = "#42be65"
  },
  terminal_black = "#90a4ae",
  todo = "#42be65",
  warning = "#be95ff",
  yellow = "#ff6f00"
}

local highlights = {
  ["@annotation"] = "PreProc",
  ["@attribute"] = {
    fg = "#ffab91"
  },
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.printf"] = "SpecialChar",
  ["@character.special"] = "SpecialChar",
  ["@comment"] = "Comment",
  ["@comment.error"] = {
    fg = "#ff6f00"
  },
  ["@comment.hint"] = {
    fg = "#37474f"
  },
  ["@comment.info"] = {
    fg = "#ee5396"
  },
  ["@comment.note"] = {
    fg = "#37474f"
  },
  ["@comment.todo"] = {
    fg = "#42be65"
  },
  ["@comment.warning"] = {
    fg = "#be95ff"
  },
  ["@constant"] = {
    fg = "#be95ff"
  },
  ["@constant.builtin"] = {
    fg = "#08bdba"
  },
  ["@constant.macro"] = {
    fg = "#08bdba"
  },
  ["@constructor"] = {
    fg = "#ee5396"
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@function"] = {
    bold = true,
    fg = "#673ab7"
  },
  ["@function.builtin"] = {
    fg = "#673ab7"
  },
  ["@function.call"] = "@function",
  ["@function.macro"] = {
    fg = "#08bdba"
  },
  ["@function.method"] = {
    fg = "#08bdba"
  },
  ["@function.method.call"] = "@function.method",
  ["@keyword"] = {
    fg = "#ee5396"
  },
  ["@keyword.conditional"] = {
    fg = "#ee5396"
  },
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = {
    fg = "#ffab91"
  },
  ["@keyword.function"] = {
    fg = "#ff7eb6"
  },
  ["@keyword.import"] = {
    fg = "#ee5396"
  },
  ["@keyword.operator"] = {
    fg = "#ff7eb6"
  },
  ["@keyword.repeat"] = {
    fg = "#ee5396"
  },
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#ffab91"
  },
  ["@lsp.mod.builtin"] = "Special",
  ["@lsp.mod.readonly"] = "@constant",
  ["@lsp.mod.typeHint"] = "Type",
  ["@lsp.type.boolean"] = "@boolean",
  ["@lsp.type.builtinConstant"] = "@constant.builtin",
  ["@lsp.type.builtinType"] = "@type.builtin",
  ["@lsp.type.class"] = "Structure",
  ["@lsp.type.comment"] = "@comment",
  ["@lsp.type.decorator"] = "Decorator",
  ["@lsp.type.decorator.markdown"] = "Structure",
  ["@lsp.type.deriveHelper"] = "@attribute",
  ["@lsp.type.enum"] = "@type",
  ["@lsp.type.enumMember"] = "@constant",
  ["@lsp.type.escapeSequence"] = "@string.escape",
  ["@lsp.type.formatSpecifier"] = "@punctuation.special",
  ["@lsp.type.function"] = "@function",
  ["@lsp.type.generic"] = "@variable",
  ["@lsp.type.interface"] = "Structure",
  ["@lsp.type.keyword"] = "@keyword",
  ["@lsp.type.lifetime"] = "@keyword.storage",
  ["@lsp.type.macro"] = "Macro",
  ["@lsp.type.magicFunction"] = "@function.builtin",
  ["@lsp.type.method"] = "@function",
  ["@lsp.type.namespace"] = "@module",
  ["@lsp.type.number"] = "@number",
  ["@lsp.type.operator"] = "@operator",
  ["@lsp.type.parameter"] = "@variable.parameter",
  ["@lsp.type.property"] = "@property",
  ["@lsp.type.selfKeyword"] = "@variable.builtin",
  ["@lsp.type.selfParameter"] = "@variable.builtin",
  ["@lsp.type.selfTypeKeyword"] = "@variable.builtin",
  ["@lsp.type.string"] = "@string",
  ["@lsp.type.struct"] = "Structure",
  ["@lsp.type.type"] = "Type",
  ["@lsp.type.typeAlias"] = "@type.definition",
  ["@lsp.type.typeParameter"] = "Typedef",
  ["@lsp.type.unresolvedReference"] = "Error",
  ["@lsp.type.variable"] = {},
  ["@lsp.typemod.class.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enum.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.enumMember.defaultLibrary"] = "@constant.builtin",
  ["@lsp.typemod.function.builtin"] = "@function.builtin",
  ["@lsp.typemod.function.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.function.readonly"] = "@function.method",
  ["@lsp.typemod.keyword.async"] = "@keyword.coroutine",
  ["@lsp.typemod.keyword.documentation"] = "Special",
  ["@lsp.typemod.keyword.injected"] = "@keyword",
  ["@lsp.typemod.macro.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.method.defaultLibrary"] = "@function.builtin",
  ["@lsp.typemod.operator.controlFlow"] = "@keyword.exception",
  ["@lsp.typemod.operator.injected"] = "@operator",
  ["@lsp.typemod.string.injected"] = "@string",
  ["@lsp.typemod.struct.defaultLibrary"] = "@type.builtin",
  ["@lsp.typemod.variable.callable"] = "@function",
  ["@lsp.typemod.variable.defaultLibrary"] = "@variable.builtin",
  ["@lsp.typemod.variable.global"] = "@constant",
  ["@lsp.typemod.variable.injected"] = "@variable",
  ["@lsp.typemod.variable.static"] = "@constant",
  ["@markup"] = "@none",
  ["@markup.code.block"] = "markdownCodeBlock",
  ["@markup.emphasis"] = {
    italic = true
  },
  ["@markup.environment"] = "Macro",
  ["@markup.environment.name"] = "Type",
  ["@markup.heading"] = "Title",
  ["@markup.heading.1.markdown"] = "markdownH1",
  ["@markup.heading.2.markdown"] = "markdownH1",
  ["@markup.heading.3.markdown"] = "markdownH1",
  ["@markup.heading.4.markdown"] = "markdownH1",
  ["@markup.heading.5.markdown"] = "markdownH1",
  ["@markup.heading.6.markdown"] = "markdownH1",
  ["@markup.heading.7.markdown"] = "markdownH1",
  ["@markup.heading.8.markdown"] = "markdownH1",
  ["@markup.heading.marker"] = "markdownHeadingDelimiter",
  ["@markup.italic"] = {
    italic = true
  },
  ["@markup.link"] = "markdownUrl",
  ["@markup.link.description"] = {
    fg = "#ffab91",
    italic = true,
    underline = true
  },
  ["@markup.link.destination"] = "markdownUrl",
  ["@markup.link.label"] = {
    underline = true
  },
  ["@markup.link.label.markdown_inline"] = "markdownItalic",
  ["@markup.link.label.symbol"] = "markdownItalic",
  ["@markup.link.title"] = "Title",
  ["@markup.link.url"] = "markdownUrl",
  ["@markup.list"] = "markdownListMarker",
  ["@markup.list.bullet"] = "markdownListMarker",
  ["@markup.list.checked"] = "markdownListMarker",
  ["@markup.list.markdown"] = "markdownListMarker",
  ["@markup.list.ordered"] = "markdownOrderedListMarker",
  ["@markup.list.unchecked"] = "markdownListMarker",
  ["@markup.literal"] = "markdownCode",
  ["@markup.math"] = "Special",
  ["@markup.quote"] = "markdownBlockquote",
  ["@markup.raw"] = "String",
  ["@markup.raw.commodity"] = {
    fg = "#42be65"
  },
  ["@markup.raw.markdown_inline"] = "String",
  ["@markup.rule"] = "Comment",
  ["@markup.strikethrough"] = {
    strikethrough = true
  },
  ["@markup.strong"] = {
    bold = true
  },
  ["@markup.underline"] = {
    underline = true
  },
  ["@module"] = {
    fg = "#08bdba"
  },
  ["@module.builtin"] = "@module",
  ["@namespace.builtin"] = "@variable.builtin",
  ["@none"] = {},
  ["@number"] = "Number",
  ["@number.date"] = {
    fg = "#ff7eb6"
  },
  ["@number.date.effective"] = {
    fg = "#42be65"
  },
  ["@number.float"] = "Float",
  ["@number.interval"] = {
    fg = "#ee5396"
  },
  ["@number.quantity"] = {
    fg = "#0f62fe"
  },
  ["@number.quantity.negative"] = {
    fg = "#ff6f00"
  },
  ["@number.status"] = {
    fg = "#673ab7"
  },
  ["@operator"] = "Operator",
  ["@property"] = {
    fg = "#ff6f00"
  },
  ["@punctuation.bracket"] = {
    fg = "#ff7eb6"
  },
  ["@punctuation.delimiter"] = {
    fg = "#ff7eb6"
  },
  ["@punctuation.special"] = {
    fg = "#ff7eb6"
  },
  ["@string"] = "String",
  ["@string.documentation"] = "String",
  ["@string.escape"] = {
    fg = "#ffab91"
  },
  ["@string.regexp"] = {
    fg = "#08bdba"
  },
  ["@string.special.symbol"] = {
    bold = true,
    fg = "#ffab91"
  },
  ["@string.special.url"] = {
    fg = "#be95ff",
    underline = true
  },
  ["@tag"] = {
    fg = "#ee5396"
  },
  ["@tag.attribute"] = {
    fg = "#ffab91"
  },
  ["@tag.builtin.tsx"] = "@tag.tsx",
  ["@tag.delimiter"] = {
    fg = "#ffab91"
  },
  ["@type"] = "Type",
  ["@type.builtin"] = "Type",
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#37474f"
  },
  ["@variable.builtin"] = {
    fg = "#37474f"
  },
  ["@variable.member"] = {
    fg = "#37474f"
  },
  ["@variable.parameter"] = {
    fg = "#37474f"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#37474f"
  },
  ALEErrorSign = {
    fg = "#ff6f00"
  },
  ALEWarningSign = {
    fg = "#be95ff"
  },
  AerialArrayIcon = "LspKindArray",
  AerialBooleanIcon = "LspKindBoolean",
  AerialClassIcon = "LspKindClass",
  AerialColorIcon = "LspKindColor",
  AerialConstantIcon = "LspKindConstant",
  AerialConstructorIcon = "LspKindConstructor",
  AerialEnumIcon = "LspKindEnum",
  AerialEnumMemberIcon = "LspKindEnumMember",
  AerialEventIcon = "LspKindEvent",
  AerialFieldIcon = "LspKindField",
  AerialFileIcon = "LspKindFile",
  AerialFolderIcon = "LspKindFolder",
  AerialFunctionIcon = "LspKindFunction",
  AerialGuide = {
    fg = "#d0d0d0"
  },
  AerialInterfaceIcon = "LspKindInterface",
  AerialKeyIcon = "LspKindKey",
  AerialKeywordIcon = "LspKindKeyword",
  AerialLine = "LspInlayHint",
  AerialMethodIcon = "LspKindMethod",
  AerialModuleIcon = "LspKindModule",
  AerialNamespaceIcon = "LspKindNamespace",
  AerialNormal = {
    bg = "NONE",
    fg = "#37474f"
  },
  AerialNullIcon = "LspKindNull",
  AerialNumberIcon = "LspKindNumber",
  AerialObjectIcon = "LspKindObject",
  AerialOperatorIcon = "LspKindOperator",
  AerialPackageIcon = "LspKindPackage",
  AerialPropertyIcon = "LspKindProperty",
  AerialReferenceIcon = "LspKindReference",
  AerialSnippetIcon = "LspKindSnippet",
  AerialStringIcon = "LspKindString",
  AerialStructIcon = "LspKindStruct",
  AerialTextIcon = "LspKindText",
  AerialTypeParameterIcon = "LspKindTypeParameter",
  AerialUnitIcon = "LspKindUnit",
  AerialValueIcon = "LspKindValue",
  AerialVariableIcon = "LspKindVariable",
  AlphaButtons = {
    fg = "#ff7eb6"
  },
  AlphaFooter = {
    fg = "#ff7eb6"
  },
  AlphaHeader = {
    fg = "#ee5396"
  },
  AlphaHeaderLabel = {
    fg = "#673ab7"
  },
  AlphaShortcut = {
    fg = "#673ab7"
  },
  BlinkCmpDoc = {
    bg = "#f2f2f2",
    fg = "#90a4ae"
  },
  BlinkCmpDocBorder = {
    bg = "#f2f2f2",
    fg = "#161616"
  },
  BlinkCmpDocCursorLine = {
    bg = "#d0d0d0"
  },
  BlinkCmpDocSeparator = {
    bg = "#f2f2f2",
    fg = "#d0d0d0"
  },
  BlinkCmpGhostText = {
    fg = "#90a4ae"
  },
  BlinkCmpKind = {
    fg = "#37474f"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = {
    fg = "#0f62fe"
  },
  BlinkCmpKindCodeium = {
    fg = "#08bdba"
  },
  BlinkCmpKindColor = {
    fg = "#ff7eb6"
  },
  BlinkCmpKindConstant = {
    fg = "#ff6f00"
  },
  BlinkCmpKindConstructor = {
    fg = "#ff6f00"
  },
  BlinkCmpKindCopilot = {
    fg = "#08bdba"
  },
  BlinkCmpKindDefault = {
    fg = "#37474f"
  },
  BlinkCmpKindEnum = {
    fg = "#ee5396"
  },
  BlinkCmpKindEnumMember = {
    fg = "#ffab91"
  },
  BlinkCmpKindEvent = {
    fg = "#673ab7"
  },
  BlinkCmpKindField = {
    fg = "#673ab7"
  },
  BlinkCmpKindFile = {
    fg = "#be95ff"
  },
  BlinkCmpKindFolder = {
    fg = "#42be65"
  },
  BlinkCmpKindFunction = {
    fg = "#0f62fe"
  },
  BlinkCmpKindInterface = {
    fg = "#ff7eb6"
  },
  BlinkCmpKindKey = "LspKindKey",
  BlinkCmpKindKeyword = {
    fg = "#ee5396"
  },
  BlinkCmpKindMethod = {
    fg = "#ffab91"
  },
  BlinkCmpKindModule = {
    fg = "#0f62fe"
  },
  BlinkCmpKindNamespace = "LspKindNamespace",
  BlinkCmpKindNull = "LspKindNull",
  BlinkCmpKindNumber = "LspKindNumber",
  BlinkCmpKindObject = "LspKindObject",
  BlinkCmpKindOperator = {
    fg = "#0f62fe"
  },
  BlinkCmpKindPackage = "LspKindPackage",
  BlinkCmpKindProperty = {
    fg = "#673ab7"
  },
  BlinkCmpKindReference = {
    fg = "#ff6f00"
  },
  BlinkCmpKindSnippet = {
    fg = "#42be65"
  },
  BlinkCmpKindString = "LspKindString",
  BlinkCmpKindStruct = {
    fg = "#0f62fe"
  },
  BlinkCmpKindSupermaven = {
    fg = "#08bdba"
  },
  BlinkCmpKindTabNine = {
    fg = "#08bdba"
  },
  BlinkCmpKindText = {
    fg = "#ee5396"
  },
  BlinkCmpKindTypeParameter = {
    fg = "#ff7eb6"
  },
  BlinkCmpKindUnit = {
    fg = "#42be65"
  },
  BlinkCmpKindValue = {
    fg = "#ffab91"
  },
  BlinkCmpKindVariable = {
    fg = "#be95ff"
  },
  BlinkCmpLabel = {
    fg = "#6f7f86"
  },
  BlinkCmpLabelDeprecated = {
    fg = "#90a4ae",
    italic = true
  },
  BlinkCmpLabelDescription = {
    fg = "#37474f"
  },
  BlinkCmpLabelDetail = {
    fg = "#37474f",
    italic = true
  },
  BlinkCmpLabelMatch = {
    bold = true,
    fg = "#90a4ae"
  },
  BlinkCmpMenu = {
    bg = "#f2f2f2",
    fg = "#37474f"
  },
  BlinkCmpMenuBorder = {
    bg = "#f2f2f2",
    fg = "#161616"
  },
  BlinkCmpMenuSelection = "PmenuSel",
  BlinkCmpScrollBarGutter = {
    bg = "#d0d0d0"
  },
  BlinkCmpScrollBarThumb = {
    bg = "#161616"
  },
  BlinkCmpSignatureHelp = {
    bg = "#f2f2f2",
    fg = "#90a4ae"
  },
  BlinkCmpSignatureHelpActiveParameter = {
    bg = "#d0d0d0",
    bold = true,
    fg = "#ff7eb6"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#f2f2f2",
    fg = "#161616"
  },
  BlinkCmpSource = {
    fg = "#37474f",
    italic = true
  },
  Bold = {
    bold = true
  },
  Boolean = {
    fg = "#ee5396"
  },
  BufferAlternate = {
    bg = "#d0d0d0",
    fg = "#37474f"
  },
  BufferAlternateADDED = {
    bg = "#d0d0d0",
    fg = "#08bdba"
  },
  BufferAlternateCHANGED = {
    bg = "#d0d0d0",
    fg = "#ee5396"
  },
  BufferAlternateDELETED = {
    bg = "#d0d0d0",
    fg = "#ff6f00"
  },
  BufferAlternateERROR = {
    bg = "#d0d0d0",
    fg = "#ff6f00"
  },
  BufferAlternateHINT = {
    bg = "#d0d0d0",
    fg = "#37474f"
  },
  BufferAlternateINFO = {
    bg = "#d0d0d0",
    fg = "#ee5396"
  },
  BufferAlternateIndex = {
    bg = "#d0d0d0",
    fg = "#ee5396"
  },
  BufferAlternateMod = {
    bg = "#d0d0d0",
    fg = "#be95ff"
  },
  BufferAlternateSign = {
    bg = "#d0d0d0",
    fg = "#ee5396"
  },
  BufferAlternateTarget = {
    bg = "#d0d0d0",
    fg = "#ee5396"
  },
  BufferAlternateWARN = {
    bg = "#d0d0d0",
    fg = "#be95ff"
  },
  BufferCurrent = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  BufferCurrentADDED = {
    bg = "#ffffff",
    fg = "#08bdba"
  },
  BufferCurrentCHANGED = {
    bg = "#ffffff",
    fg = "#ee5396"
  },
  BufferCurrentDELETED = {
    bg = "#ffffff",
    fg = "#ff6f00"
  },
  BufferCurrentERROR = {
    bg = "#ffffff",
    fg = "#ff6f00"
  },
  BufferCurrentHINT = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  BufferCurrentINFO = {
    bg = "#ffffff",
    fg = "#ee5396"
  },
  BufferCurrentIndex = {
    bg = "#ffffff",
    fg = "#ee5396"
  },
  BufferCurrentMod = {
    bg = "#ffffff",
    fg = "#be95ff"
  },
  BufferCurrentSign = {
    bg = "#ffffff",
    fg = "#ffffff"
  },
  BufferCurrentTarget = {
    bg = "#ffffff",
    fg = "#ee5396"
  },
  BufferCurrentWARN = {
    bg = "#ffffff",
    fg = "#be95ff"
  },
  BufferInactive = {
    bg = "#fafafa",
    fg = "#8c999e"
  },
  BufferInactiveADDED = {
    bg = "#fafafa",
    fg = "#39cac8"
  },
  BufferInactiveCHANGED = {
    bg = "#fafafa",
    fg = "#f175ab"
  },
  BufferInactiveDELETED = {
    bg = "#fafafa",
    fg = "#ff8c33"
  },
  BufferInactiveERROR = {
    bg = "#fafafa",
    fg = "#ff8c33"
  },
  BufferInactiveHINT = {
    bg = "#fafafa",
    fg = "#5f6c72"
  },
  BufferInactiveINFO = {
    bg = "#fafafa",
    fg = "#f175ab"
  },
  BufferInactiveIndex = {
    bg = "#fafafa",
    fg = "#6f7f86"
  },
  BufferInactiveMod = {
    bg = "#fafafa",
    fg = "#cbaaff"
  },
  BufferInactiveSign = {
    bg = "#fafafa",
    fg = "#ffffff"
  },
  BufferInactiveTarget = {
    bg = "#fafafa",
    fg = "#ee5396"
  },
  BufferInactiveWARN = {
    bg = "#fafafa",
    fg = "#cbaaff"
  },
  BufferLineDiagnostic = {
    bold = true,
    fg = "#ff6f00"
  },
  BufferLineDiagnosticVisible = {
    bold = true,
    fg = "#ff6f00"
  },
  BufferLineIndicatorSelected = {
    fg = "#ee5396"
  },
  BufferOffset = {
    bg = "#f2f2f2",
    fg = "#6f7f86"
  },
  BufferTabpageFill = {
    bg = "#f5f5f5",
    fg = "#6f7f86"
  },
  BufferTabpages = {
    bg = "#f2f2f2",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#f2f2f2",
    fg = "#37474f"
  },
  BufferVisibleADDED = {
    bg = "#f2f2f2",
    fg = "#08bdba"
  },
  BufferVisibleCHANGED = {
    bg = "#f2f2f2",
    fg = "#ee5396"
  },
  BufferVisibleDELETED = {
    bg = "#f2f2f2",
    fg = "#ff6f00"
  },
  BufferVisibleERROR = {
    bg = "#f2f2f2",
    fg = "#ff6f00"
  },
  BufferVisibleHINT = {
    bg = "#f2f2f2",
    fg = "#37474f"
  },
  BufferVisibleINFO = {
    bg = "#f2f2f2",
    fg = "#ee5396"
  },
  BufferVisibleIndex = {
    bg = "#f2f2f2",
    fg = "#ee5396"
  },
  BufferVisibleMod = {
    bg = "#f2f2f2",
    fg = "#be95ff"
  },
  BufferVisibleSign = {
    bg = "#f2f2f2",
    fg = "#ee5396"
  },
  BufferVisibleTarget = {
    bg = "#f2f2f2",
    fg = "#ee5396"
  },
  BufferVisibleWARN = {
    bg = "#f2f2f2",
    fg = "#be95ff"
  },
  Character = {
    fg = "#be95ff"
  },
  CmpDocumentation = {
    bg = "#fafafa",
    fg = "#90a4ae"
  },
  CmpDocumentationBorder = {
    bg = "#fafafa",
    fg = "#fafafa"
  },
  CmpGhostText = {
    fg = "#90a4ae"
  },
  CmpItemAbbr = {
    fg = "#6f7f86"
  },
  CmpItemAbbrDeprecated = {
    fg = "#90a4ae",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bold = true,
    fg = "#90a4ae"
  },
  CmpItemAbbrMatchFuzzy = {
    bold = true,
    fg = "#37474f"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = {
    fg = "#0f62fe"
  },
  CmpItemKindCodeium = {
    fg = "#08bdba"
  },
  CmpItemKindColor = {
    fg = "#ff7eb6"
  },
  CmpItemKindConstant = {
    fg = "#ff6f00"
  },
  CmpItemKindConstructor = {
    fg = "#ff6f00"
  },
  CmpItemKindCopilot = {
    fg = "#08bdba"
  },
  CmpItemKindDefault = {
    fg = "#37474f"
  },
  CmpItemKindEnum = {
    fg = "#ee5396"
  },
  CmpItemKindEnumMember = {
    fg = "#ffab91"
  },
  CmpItemKindEvent = {
    fg = "#673ab7"
  },
  CmpItemKindField = {
    fg = "#673ab7"
  },
  CmpItemKindFile = {
    fg = "#be95ff"
  },
  CmpItemKindFolder = {
    fg = "#42be65"
  },
  CmpItemKindFunction = {
    fg = "#0f62fe"
  },
  CmpItemKindInterface = {
    fg = "#ff7eb6"
  },
  CmpItemKindKey = "LspKindKey",
  CmpItemKindKeyword = {
    fg = "#ee5396"
  },
  CmpItemKindMethod = {
    fg = "#ffab91"
  },
  CmpItemKindModule = {
    fg = "#0f62fe"
  },
  CmpItemKindNamespace = "LspKindNamespace",
  CmpItemKindNull = "LspKindNull",
  CmpItemKindNumber = "LspKindNumber",
  CmpItemKindObject = "LspKindObject",
  CmpItemKindOperator = {
    fg = "#0f62fe"
  },
  CmpItemKindPackage = "LspKindPackage",
  CmpItemKindProperty = {
    fg = "#673ab7"
  },
  CmpItemKindReference = {
    fg = "#ff6f00"
  },
  CmpItemKindSnippet = {
    fg = "#42be65"
  },
  CmpItemKindString = "LspKindString",
  CmpItemKindStruct = {
    fg = "#0f62fe"
  },
  CmpItemKindSupermaven = {
    fg = "#08bdba"
  },
  CmpItemKindTabNine = {
    fg = "#08bdba"
  },
  CmpItemKindText = {
    fg = "#ee5396"
  },
  CmpItemKindTypeParameter = {
    fg = "#ff7eb6"
  },
  CmpItemKindUnit = {
    fg = "#42be65"
  },
  CmpItemKindValue = {
    fg = "#ffab91"
  },
  CmpItemKindVariable = {
    fg = "#be95ff"
  },
  CmpItemMenu = {
    fg = "#37474f",
    italic = true
  },
  CodeBlock = {
    bg = "#f2f2f2"
  },
  CodeiumSuggestion = {
    fg = "#90a4ae"
  },
  ColorColumn = {
    bg = "#f2f2f2"
  },
  Comment = {
    fg = "#90a4ae",
    italic = true
  },
  ComplHint = {
    fg = "#90a4ae"
  },
  Conceal = {},
  Conditional = {
    fg = "#ee5396"
  },
  Constant = {
    fg = "#37474f"
  },
  CopilotAnnotation = {
    fg = "#90a4ae"
  },
  CopilotSuggestion = {
    fg = "#90a4ae"
  },
  CurSearch = {
    bg = "#0f62fe",
    fg = "#f2f2f2"
  },
  Cursor = {
    bg = "#37474f",
    fg = "#ffffff"
  },
  CursorColumn = {
    bg = "#f2f2f2"
  },
  CursorIM = "Cursor",
  CursorLine = {
    bg = "#f2f2f2"
  },
  CursorLineNr = {
    fg = "#37474f"
  },
  DapStoppedLine = {
    bg = "#f9f4ff"
  },
  DashboardDesc = {
    fg = "#08bdba"
  },
  DashboardFiles = {
    fg = "#0f62fe"
  },
  DashboardFooter = {
    fg = "#0f62fe"
  },
  DashboardHeader = {
    fg = "#0f62fe"
  },
  DashboardIcon = {
    fg = "#08bdba"
  },
  DashboardKey = {
    fg = "#ff6f00"
  },
  DashboardMruIcon = {
    fg = "#be95ff"
  },
  DashboardMruTitle = {
    fg = "#08bdba"
  },
  DashboardProjectIcon = {
    fg = "#ff6f00"
  },
  DashboardProjectTitle = {
    fg = "#08bdba"
  },
  DashboardProjectTitleIcon = {
    fg = "#ff6f00"
  },
  DashboardShortCut = {
    fg = "#08bdba"
  },
  DashboardShortCutIcon = {
    fg = "#673ab7"
  },
  Debug = {
    fg = "#42be65"
  },
  Decorator = {
    fg = "#673ab7"
  },
  Define = {
    fg = "#ee5396"
  },
  DefinitionCount = {
    fg = "#be95ff"
  },
  DefinitionIcon = {
    fg = "#0f62fe"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#ff6f00"
  },
  DiagnosticHint = {
    fg = "#37474f"
  },
  DiagnosticInfo = {
    fg = "#ee5396"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticOk = {
    fg = "#42be65"
  },
  DiagnosticUnderlineError = {
    sp = "#ff6f00",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#37474f",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#37474f",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#be95ff",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#90a4ae"
  },
  DiagnosticVirtualTextError = {
    bg = "#fff1e6",
    fg = "#ff6f00"
  },
  DiagnosticVirtualTextHint = {
    bg = "#ebeded",
    fg = "#37474f"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#fdeef5",
    fg = "#ee5396"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#f9f4ff",
    fg = "#be95ff"
  },
  DiagnosticWarn = {
    fg = "#be95ff"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#cef2f1"
  },
  DiffChange = {
    bg = "#e7efff"
  },
  DiffDelete = {
    bg = "#fcddea"
  },
  DiffText = {
    bg = "#c3d8ff"
  },
  Directory = {
    fg = "#ff7eb6"
  },
  EndOfBuffer = {
    fg = "#f2f2f2"
  },
  Error = {
    bg = "#f2f2f2",
    fg = "#ff6f00"
  },
  ErrorMsg = {
    fg = "#ff6f00"
  },
  Exception = {
    fg = "#ee5396"
  },
  FlashBackdrop = {
    fg = "#90a4ae"
  },
  FlashLabel = {
    bg = "#ffffff",
    bold = true,
    fg = "#90a4ae"
  },
  Float = "Number",
  FloatBorder = {
    bg = "#fafafa",
    fg = "#fafafa"
  },
  FloatTitle = {
    bg = "#fafafa",
    fg = "#37474f"
  },
  FoldColumn = {
    bg = "#ffffff",
    fg = "#f2f2f2"
  },
  Folded = {
    bg = "#f2f2f2",
    fg = "#d0d0d0"
  },
  Function = {
    fg = "#ff7eb6"
  },
  FzfLuaBorder = {
    bg = "#fafafa",
    fg = "#d0d0d0"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#37474f"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#37474f"
  },
  FzfLuaFzfPointer = {
    fg = "#ee5396"
  },
  FzfLuaFzfSeparator = {
    bg = "#fafafa",
    fg = "#ff6f00"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#fafafa",
    fg = "#37474f"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#fafafa",
    fg = "#d0d0d0"
  },
  FzfLuaTitle = {
    bg = "#fafafa",
    fg = "#ff6f00"
  },
  GitGutterAdd = {
    fg = "#08bdba"
  },
  GitGutterAddLineNr = {
    fg = "#08bdba"
  },
  GitGutterChange = {
    fg = "#ee5396"
  },
  GitGutterChangeLineNr = {
    fg = "#ee5396"
  },
  GitGutterDelete = {
    fg = "#ff6f00"
  },
  GitGutterDeleteLineNr = {
    fg = "#ff6f00"
  },
  GitSignsAdd = {
    fg = "#08bdba"
  },
  GitSignsChange = {
    fg = "#ee5396"
  },
  GitSignsCurrentLineBlame = "Comment",
  GitSignsDelete = {
    fg = "#ff6f00"
  },
  GlyphPalette1 = {
    fg = "#ee5396"
  },
  GlyphPalette2 = {
    fg = "#42be65"
  },
  GlyphPalette3 = {
    fg = "#ff6f00"
  },
  GlyphPalette4 = {
    fg = "#0f62fe"
  },
  GlyphPalette6 = {
    fg = "#08bdba"
  },
  GlyphPalette7 = {
    fg = "#37474f"
  },
  GlyphPalette9 = {
    fg = "#ee5396"
  },
  GrugFarHelpHeader = {
    fg = "#90a4ae"
  },
  GrugFarHelpHeaderKey = {
    fg = "#08bdba"
  },
  GrugFarInputLabel = {
    fg = "#0f62fe"
  },
  GrugFarInputPlaceholder = {
    fg = "#90a4ae"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#ee5396"
  },
  GrugFarResultsHeader = {
    fg = "#ff6f00"
  },
  GrugFarResultsLineColumn = {
    fg = "#90a4ae"
  },
  GrugFarResultsLineNo = {
    fg = "#90a4ae"
  },
  GrugFarResultsMatch = {
    bg = "#ee5396",
    fg = "#f2f2f2"
  },
  GrugFarResultsStats = {
    fg = "#0f62fe"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#fef6fa"
  },
  Headline2 = {
    bg = "#fff9fb"
  },
  Headline3 = {
    bg = "#fcfaff"
  },
  Headline4 = {
    bg = "#f7f5fb"
  },
  Headline5 = {
    bg = "#f6fcf7"
  },
  Headline6 = {
    bg = "#fffbfa"
  },
  Headline7 = {
    bg = "#f3fcfc"
  },
  Headline8 = {
    bg = "#fff8f2"
  },
  HopNextKey = {
    bold = true,
    fg = "#ee5396"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#0f62fe"
  },
  HopNextKey2 = {
    fg = "#6fa1fe"
  },
  HopUnmatched = {
    fg = "#90a4ae"
  },
  HydraAmaranth = {
    fg = "#ff6f00"
  },
  HydraBlue = {
    fg = "#ee5396"
  },
  HydraHint = {
    bg = "#fafafa"
  },
  HydraPink = {
    fg = "#be95ff"
  },
  HydraRed = {
    fg = "#673ab7"
  },
  HydraTeal = {
    fg = "#ff7eb6"
  },
  IblIndent = {
    fg = "#d0d0d0",
    nocombine = true
  },
  IblScope = {
    fg = "#0f62fe",
    nocombine = true
  },
  Identifier = {
    fg = "#37474f"
  },
  IlluminatedWordRead = {
    bg = "#d0d0d0"
  },
  IlluminatedWordText = {
    bg = "#d0d0d0"
  },
  IlluminatedWordWrite = {
    bg = "#d0d0d0"
  },
  IncSearch = {
    bg = "#ff6f00",
    fg = "#525252"
  },
  Include = {
    fg = "#ee5396"
  },
  IndentBlanklineChar = {
    fg = "#d0d0d0",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#0f62fe",
    nocombine = true
  },
  IndentLine = {
    fg = "#d0d0d0",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#0f62fe",
    nocombine = true
  },
  Italic = {
    italic = true
  },
  Keyword = {
    fg = "#ee5396"
  },
  Label = {
    fg = "#ee5396"
  },
  LazyProgressDone = {
    bold = true,
    fg = "#ee5396"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#d0d0d0"
  },
  LeapBackdrop = {
    fg = "#90a4ae"
  },
  LeapLabel = {
    bold = true,
    fg = "#ee5396"
  },
  LeapMatch = {
    bg = "#ee5396",
    bold = true,
    fg = "#37474f"
  },
  LineNr = {
    bg = "#ffffff",
    fg = "#90a4ae"
  },
  LineNrAbove = "LineNr",
  LineNrBelow = "LineNr",
  LspCodeLens = {
    bg = "#161616"
  },
  LspFloatWinBorder = {
    fg = "#d0d0d0"
  },
  LspFloatWinNormal = {
    bg = "#fafafa"
  },
  LspInfoBorder = {
    bg = "#fafafa",
    fg = "#d0d0d0"
  },
  LspInlayHint = {
    bg = "#f2f2f2",
    fg = "#90a4ae"
  },
  LspKindArray = "@punctuation.bracket",
  LspKindBoolean = "@boolean",
  LspKindClass = "@type",
  LspKindColor = "Special",
  LspKindConstant = "@constant",
  LspKindConstructor = "@constructor",
  LspKindEnum = "@lsp.type.enum",
  LspKindEnumMember = "@lsp.type.enumMember",
  LspKindEvent = "Special",
  LspKindField = "@variable.member",
  LspKindFile = "Normal",
  LspKindFolder = "Directory",
  LspKindFunction = "@function",
  LspKindInterface = "@lsp.type.interface",
  LspKindKey = "@variable.member",
  LspKindKeyword = "@lsp.type.keyword",
  LspKindMethod = "@function.method",
  LspKindModule = "@module",
  LspKindNamespace = "@module",
  LspKindNull = "@constant.builtin",
  LspKindNumber = "@number",
  LspKindObject = "@constant",
  LspKindOperator = "@operator",
  LspKindPackage = "@module",
  LspKindProperty = "@property",
  LspKindReference = "@markup.link",
  LspKindSnippet = "Conceal",
  LspKindString = "@string",
  LspKindStruct = "@lsp.type.struct",
  LspKindText = "@markup",
  LspKindTypeParameter = "@lsp.type.typeParameter",
  LspKindUnit = "@lsp.type.struct",
  LspKindValue = "@string",
  LspKindVariable = "@variable",
  LspReferenceRead = {
    bg = "#161616"
  },
  LspReferenceText = {
    bg = "#161616"
  },
  LspReferenceWrite = {
    bg = "#161616"
  },
  LspSagaBorderTitle = {
    fg = "#08bdba"
  },
  LspSagaCodeActionBorder = {
    fg = "#0f62fe"
  },
  LspSagaCodeActionContent = {
    fg = "#be95ff"
  },
  LspSagaCodeActionTitle = {
    fg = "#0f62fe"
  },
  LspSagaDefPreviewBorder = {
    fg = "#42be65"
  },
  LspSagaFinderSelection = {
    fg = "#d0d0d0"
  },
  LspSagaHoverBorder = {
    fg = "#0f62fe"
  },
  LspSagaRenameBorder = {
    fg = "#42be65"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#ee5396"
  },
  LspSignatureActiveParameter = {
    fg = "#ff7eb6"
  },
  Macro = {
    fg = "#08bdba"
  },
  MatchParen = {
    bg = "#d0d0d0",
    underline = true
  },
  MiniAnimateCursor = {
    nocombine = true,
    reverse = true
  },
  MiniAnimateNormalFloat = "NormalFloat",
  MiniClueBorder = "FloatBorder",
  MiniClueDescGroup = "DiagnosticFloatingWarn",
  MiniClueDescSingle = "NormalFloat",
  MiniClueNextKey = "DiagnosticFloatingHint",
  MiniClueNextKeyWithPostkeys = "DiagnosticFloatingError",
  MiniClueSeparator = "DiagnosticFloatingInfo",
  MiniClueTitle = "FloatTitle",
  MiniCompletionActiveParameter = {
    underline = true
  },
  MiniCursorword = {
    bg = "#d0d0d0"
  },
  MiniCursorwordCurrent = {
    bg = "#d0d0d0"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#ff6f00",
    fg = "#f2f2f2"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#08bdba",
    fg = "#f2f2f2"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#08bdba"
  },
  MiniDiffSignChange = {
    fg = "#ee5396"
  },
  MiniDiffSignDelete = {
    fg = "#ff6f00"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#90a4ae"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#fafafa",
    bold = true,
    fg = "#d0d0d0"
  },
  MiniHipatternsFixme = {
    bg = "#ff6f00",
    bold = true,
    fg = "#f2f2f2"
  },
  MiniHipatternsHack = {
    bg = "#be95ff",
    bold = true,
    fg = "#f2f2f2"
  },
  MiniHipatternsNote = {
    bg = "#37474f",
    bold = true,
    fg = "#f2f2f2"
  },
  MiniHipatternsTodo = {
    bg = "#ee5396",
    bold = true,
    fg = "#f2f2f2"
  },
  MiniIconsAzure = {
    fg = "#ee5396"
  },
  MiniIconsBlue = {
    fg = "#0f62fe"
  },
  MiniIconsCyan = {
    fg = "#08bdba"
  },
  MiniIconsGreen = {
    fg = "#42be65"
  },
  MiniIconsGrey = {
    fg = "#37474f"
  },
  MiniIconsOrange = {
    fg = "#ff6f00"
  },
  MiniIconsPurple = {
    fg = "#be95ff"
  },
  MiniIconsRed = {
    fg = "#ee5396"
  },
  MiniIconsYellow = {
    fg = "#ff6f00"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#0f62fe",
    nocombine = true
  },
  MiniJump = {
    bg = "#ee5396",
    fg = "#ffffff"
  },
  MiniJump2dDim = "Comment",
  MiniJump2dSpot = {
    bold = true,
    fg = "#ee5396",
    nocombine = true
  },
  MiniJump2dSpotAhead = {
    bg = "#fafafa",
    fg = "#37474f",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#ff6f00",
    nocombine = true
  },
  MiniMapNormal = "NormalFloat",
  MiniMapSymbolCount = "Special",
  MiniMapSymbolLine = "Title",
  MiniMapSymbolView = "Delimiter",
  MiniNotifyBorder = "FloatBorder",
  MiniNotifyNormal = "NormalFloat",
  MiniNotifyTitle = "FloatTitle",
  MiniOperatorsExchangeFrom = "IncSearch",
  MiniPickBorder = "FloatBorder",
  MiniPickBorderBusy = "DiagnosticFloatingWarn",
  MiniPickBorderText = {
    bg = "#fafafa",
    fg = "#37474f"
  },
  MiniPickHeader = "DiagnosticFloatingHint",
  MiniPickIconDirectory = "Directory",
  MiniPickIconFile = "MiniPickNormal",
  MiniPickMatchCurrent = "CursorLine",
  MiniPickMatchMarked = "Visual",
  MiniPickMatchRanges = "DiagnosticFloatingHint",
  MiniPickNormal = "NormalFloat",
  MiniPickPreviewLine = "CursorLine",
  MiniPickPreviewRegion = "IncSearch",
  MiniPickPrompt = {
    bg = "#fafafa",
    fg = "#ee5396"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#ff6f00",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#0f62fe"
  },
  MiniStarterInactive = {
    fg = "#90a4ae",
    italic = true
  },
  MiniStarterItem = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  MiniStarterItemBullet = {
    fg = "#d0d0d0"
  },
  MiniStarterItemPrefix = {
    fg = "#be95ff"
  },
  MiniStarterQuery = {
    fg = "#ee5396"
  },
  MiniStarterSection = {
    fg = "#0f62fe"
  },
  MiniStatuslineDevinfo = {
    bg = "#d0d0d0",
    fg = "#37474f"
  },
  MiniStatuslineFileinfo = {
    bg = "#d0d0d0",
    fg = "#37474f"
  },
  MiniStatuslineFilename = {
    bg = "#f2f2f2",
    fg = "#37474f"
  },
  MiniStatuslineInactive = {
    bg = "#f2f2f2",
    fg = "#0f62fe"
  },
  MiniStatuslineModeCommand = {
    bg = "#ff6f00",
    bold = true,
    fg = "#f2f2f2"
  },
  MiniStatuslineModeInsert = {
    bg = "#42be65",
    bold = true,
    fg = "#f2f2f2"
  },
  MiniStatuslineModeNormal = {
    bg = "#0f62fe",
    bold = true,
    fg = "#f2f2f2"
  },
  MiniStatuslineModeOther = {
    bg = "#08bdba",
    bold = true,
    fg = "#f2f2f2"
  },
  MiniStatuslineModeReplace = {
    bg = "#ee5396",
    bold = true,
    fg = "#f2f2f2"
  },
  MiniStatuslineModeVisual = {
    bg = "#673ab7",
    bold = true,
    fg = "#f2f2f2"
  },
  MiniSurround = {
    bg = "#ff6f00",
    fg = "#f2f2f2"
  },
  MiniTablineCurrent = {
    bg = "#d0d0d0",
    fg = "#37474f"
  },
  MiniTablineFill = {
    bg = "#f2f2f2"
  },
  MiniTablineHidden = {
    bg = "#f2f2f2",
    fg = "#6f7f86"
  },
  MiniTablineModifiedCurrent = {
    bg = "#d0d0d0",
    fg = "#be95ff"
  },
  MiniTablineModifiedHidden = {
    bg = "#f2f2f2",
    fg = "#d2b5ff"
  },
  MiniTablineModifiedVisible = {
    bg = "#f2f2f2",
    fg = "#be95ff"
  },
  MiniTablineTabpagesection = {
    bg = "#d0d0d0",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#f2f2f2",
    fg = "#37474f"
  },
  MiniTestEmphasis = {
    bold = true
  },
  MiniTestFail = {
    bold = true,
    fg = "#ee5396"
  },
  MiniTestPass = {
    bold = true,
    fg = "#42be65"
  },
  MiniTrailspace = {
    bg = "#ee5396"
  },
  ModeMsg = {
    fg = "#37474f"
  },
  MoreMsg = {
    fg = "#ff7eb6"
  },
  MsgArea = {
    fg = "#37474f"
  },
  NavicIconsArray = "LspKindArray",
  NavicIconsBoolean = "LspKindBoolean",
  NavicIconsClass = "LspKindClass",
  NavicIconsColor = "LspKindColor",
  NavicIconsConstant = "LspKindConstant",
  NavicIconsConstructor = "LspKindConstructor",
  NavicIconsEnum = "LspKindEnum",
  NavicIconsEnumMember = "LspKindEnumMember",
  NavicIconsEvent = "LspKindEvent",
  NavicIconsField = "LspKindField",
  NavicIconsFile = "LspKindFile",
  NavicIconsFolder = "LspKindFolder",
  NavicIconsFunction = "LspKindFunction",
  NavicIconsInterface = "LspKindInterface",
  NavicIconsKey = "LspKindKey",
  NavicIconsKeyword = "LspKindKeyword",
  NavicIconsMethod = "LspKindMethod",
  NavicIconsModule = "LspKindModule",
  NavicIconsNamespace = "LspKindNamespace",
  NavicIconsNull = "LspKindNull",
  NavicIconsNumber = "LspKindNumber",
  NavicIconsObject = "LspKindObject",
  NavicIconsOperator = "LspKindOperator",
  NavicIconsPackage = "LspKindPackage",
  NavicIconsProperty = "LspKindProperty",
  NavicIconsReference = "LspKindReference",
  NavicIconsSnippet = "LspKindSnippet",
  NavicIconsString = "LspKindString",
  NavicIconsStruct = "LspKindStruct",
  NavicIconsText = "LspKindText",
  NavicIconsTypeParameter = "LspKindTypeParameter",
  NavicIconsUnit = "LspKindUnit",
  NavicIconsValue = "LspKindValue",
  NavicIconsVariable = "LspKindVariable",
  NavicSeparator = {
    bg = "NONE",
    fg = "#37474f"
  },
  NavicText = {
    bg = "NONE",
    fg = "#37474f"
  },
  NeoTreeDimText = {
    fg = "#d0d0d0"
  },
  NeoTreeFileName = {
    fg = "#37474f"
  },
  NeoTreeGitModified = {
    fg = "#ff6f00"
  },
  NeoTreeGitStaged = {
    fg = "#08bdba"
  },
  NeoTreeGitUntracked = {
    fg = "#673ab7"
  },
  NeoTreeNormal = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NeoTreeNormalNC = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NeoTreeTabActive = {
    bg = "#fafafa",
    bold = true,
    fg = "#0f62fe"
  },
  NeoTreeTabInactive = {
    bg = "#cfe0ff",
    fg = "#90a4ae"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#fafafa",
    fg = "#0f62fe"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#cfe0ff",
    fg = "#ffffff"
  },
  NeogitBranch = {
    fg = "#ff6f00"
  },
  NeogitDiffAddHighlight = {
    bg = "#cef2f1",
    fg = "#08bdba"
  },
  NeogitDiffContextHighlight = {
    bg = "#e8e8e8",
    fg = "#37474f"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#fcddea",
    fg = "#ff6f00"
  },
  NeogitHunkHeader = {
    bg = "#d0d0d0",
    fg = "#37474f"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#161616",
    fg = "#37474f"
  },
  NeogitRemote = {
    fg = "#ee5396"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#be95ff"
  },
  NeotestBorder = {
    fg = "#0f62fe"
  },
  NeotestDir = {
    fg = "#0f62fe"
  },
  NeotestExpandMarker = {
    fg = "#37474f"
  },
  NeotestFailed = {
    fg = "#ee5396"
  },
  NeotestFile = {
    fg = "#08bdba"
  },
  NeotestFocused = {
    fg = "#ff6f00"
  },
  NeotestIndent = {
    fg = "#37474f"
  },
  NeotestMarked = {
    fg = "#0f62fe"
  },
  NeotestNamespace = {
    fg = "#08bdba"
  },
  NeotestPassed = {
    fg = "#42be65"
  },
  NeotestRunning = {
    fg = "#ff6f00"
  },
  NeotestSkipped = {
    fg = "#0f62fe"
  },
  NeotestTarget = {
    fg = "#0f62fe"
  },
  NeotestTest = {
    fg = "#37474f"
  },
  NeotestWinSelect = {
    fg = "#0f62fe"
  },
  NoiceCmdlineIconInput = {
    fg = "#ff6f00"
  },
  NoiceCmdlineIconLua = {
    fg = "#0f62fe"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#ff6f00"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#0f62fe"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#ff6f00"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#0f62fe"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#37474f"
  },
  NoiceCompletionItemKindEnum = "LspKindEnum",
  NoiceCompletionItemKindEnumMember = "LspKindEnumMember",
  NoiceCompletionItemKindEvent = "LspKindEvent",
  NoiceCompletionItemKindField = "LspKindField",
  NoiceCompletionItemKindFile = "LspKindFile",
  NoiceCompletionItemKindFolder = "LspKindFolder",
  NoiceCompletionItemKindFunction = "LspKindFunction",
  NoiceCompletionItemKindInterface = "LspKindInterface",
  NoiceCompletionItemKindKey = "LspKindKey",
  NoiceCompletionItemKindKeyword = "LspKindKeyword",
  NoiceCompletionItemKindMethod = "LspKindMethod",
  NoiceCompletionItemKindModule = "LspKindModule",
  NoiceCompletionItemKindNamespace = "LspKindNamespace",
  NoiceCompletionItemKindNull = "LspKindNull",
  NoiceCompletionItemKindNumber = "LspKindNumber",
  NoiceCompletionItemKindObject = "LspKindObject",
  NoiceCompletionItemKindOperator = "LspKindOperator",
  NoiceCompletionItemKindPackage = "LspKindPackage",
  NoiceCompletionItemKindProperty = "LspKindProperty",
  NoiceCompletionItemKindReference = "LspKindReference",
  NoiceCompletionItemKindSnippet = "LspKindSnippet",
  NoiceCompletionItemKindString = "LspKindString",
  NoiceCompletionItemKindStruct = "LspKindStruct",
  NoiceCompletionItemKindText = "LspKindText",
  NoiceCompletionItemKindTypeParameter = "LspKindTypeParameter",
  NoiceCompletionItemKindUnit = "LspKindUnit",
  NoiceCompletionItemKindValue = "LspKindValue",
  NoiceCompletionItemKindVariable = "LspKindVariable",
  NonText = {
    fg = "#d0d0d0"
  },
  Normal = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NormalFloat = {
    bg = "#fafafa",
    fg = "#90a4ae"
  },
  NormalNC = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NormalSB = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NotifyBackground = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NotifyDEBUGBody = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NotifyDEBUGBorder = {
    fg = "#42be65"
  },
  NotifyDEBUGIcon = {
    fg = "#42be65"
  },
  NotifyDEBUGTitle = {
    fg = "#42be65"
  },
  NotifyERRORBody = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NotifyERRORBorder = {
    fg = "#ff7eb6"
  },
  NotifyERRORIcon = {
    fg = "#ff7eb6"
  },
  NotifyERRORTitle = {
    fg = "#ff7eb6"
  },
  NotifyINFOBody = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NotifyINFOBorder = {
    fg = "#90a4ae"
  },
  NotifyINFOIcon = {
    fg = "#90a4ae"
  },
  NotifyINFOTitle = {
    fg = "#90a4ae"
  },
  NotifyTRACEBody = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NotifyTRACEBorder = {
    fg = "#42be65"
  },
  NotifyTRACEIcon = {
    fg = "#42be65"
  },
  NotifyTRACETitle = {
    fg = "#42be65"
  },
  NotifyWARNBody = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NotifyWARNBorder = {
    fg = "#be95ff"
  },
  NotifyWARNIcon = {
    fg = "#be95ff"
  },
  NotifyWARNTitle = {
    fg = "#be95ff"
  },
  Number = {
    fg = "#ffab91"
  },
  NvimInternalError = {
    bg = "#ff7eb6",
    fg = "#ffffff"
  },
  NvimTreeEmptyFolderName = {
    fg = "#ffab91"
  },
  NvimTreeFolderIcon = {
    fg = "#673ab7"
  },
  NvimTreeFolderName = {
    fg = "#ee5396"
  },
  NvimTreeGitDeleted = {
    fg = "#ff6f00"
  },
  NvimTreeGitDirty = {
    fg = "#ee5396"
  },
  NvimTreeGitNew = {
    fg = "#08bdba"
  },
  NvimTreeImageFile = {
    fg = "#673ab7"
  },
  NvimTreeIndentMarker = {
    fg = "#d0d0d0"
  },
  NvimTreeNormal = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NvimTreeNormalNC = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  NvimTreeOpenedFile = {
    bg = "#f2f2f2"
  },
  NvimTreeOpenedFolderName = {
    fg = "#ffab91"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#ee5396"
  },
  NvimTreeSpecialFile = {
    fg = "#be95ff",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#ff7eb6"
  },
  NvimTreeWinSeparator = {
    bg = "#ffffff",
    fg = "#ffffff"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#0f62fe"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#ff6f00"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#be95ff"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#f0ebf8",
    fg = "#673ab7"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#0f62fe"
  },
  Operator = {
    fg = "#ee5396"
  },
  Pmenu = {
    bg = "#f2f2f2",
    fg = "#37474f"
  },
  PmenuMatch = {
    bg = "#f2f2f2",
    fg = "#ff7eb6"
  },
  PmenuMatchSel = {
    bg = "#d0d0d0",
    bold = true,
    fg = "#ff7eb6"
  },
  PmenuSbar = {
    bg = "#f2f2f2",
    fg = "#37474f"
  },
  PmenuSel = {
    bg = "#d0d0d0",
    fg = "#ff7eb6"
  },
  PmenuThumb = {
    bg = "#d0d0d0",
    fg = "#ff7eb6"
  },
  PreProc = {
    fg = "#ee5396"
  },
  Question = {
    fg = "#37474f"
  },
  QuickFixLine = {
    bg = "#f2f2f2"
  },
  RainbowDelimiterBlue = {
    fg = "#0f62fe"
  },
  RainbowDelimiterCyan = {
    fg = "#08bdba"
  },
  RainbowDelimiterGreen = {
    fg = "#42be65"
  },
  RainbowDelimiterOrange = {
    fg = "#ff6f00"
  },
  RainbowDelimiterRed = {
    fg = "#ee5396"
  },
  RainbowDelimiterViolet = {
    fg = "#be95ff"
  },
  RainbowDelimiterYellow = {
    fg = "#ff6f00"
  },
  ReferencesCount = {
    fg = "#be95ff"
  },
  ReferencesIcon = {
    fg = "#0f62fe"
  },
  RenderMarkdownBullet = {
    fg = "#ff6f00"
  },
  RenderMarkdownCode = {
    bg = "#fafafa"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#ff6f00"
  },
  RenderMarkdownH1Bg = {
    bg = "#fdeef5"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#ee5396"
  },
  RenderMarkdownH2Bg = {
    bg = "#fff2f8"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#ff7eb6"
  },
  RenderMarkdownH3Bg = {
    bg = "#f9f4ff"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#be95ff"
  },
  RenderMarkdownH4Bg = {
    bg = "#f0ebf8"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#673ab7"
  },
  RenderMarkdownH5Bg = {
    bg = "#ecf9f0"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#42be65"
  },
  RenderMarkdownH6Bg = {
    bg = "#fff7f4"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#ffab91"
  },
  RenderMarkdownH7Bg = {
    bg = "#e6f8f8"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#08bdba"
  },
  RenderMarkdownH8Bg = {
    bg = "#fff1e6"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#ff6f00"
  },
  RenderMarkdownTableHead = {
    fg = "#ee5396"
  },
  RenderMarkdownTableRow = {
    fg = "#ff6f00"
  },
  Repeat = {
    fg = "#ee5396"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#ff6f00"
  },
  ScrollbarErrorHandle = {
    bg = "#f2f2f2",
    fg = "#ff6f00"
  },
  ScrollbarHandle = {
    bg = "#f2f2f2",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#37474f"
  },
  ScrollbarHintHandle = {
    bg = "#f2f2f2",
    fg = "#37474f"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#ee5396"
  },
  ScrollbarInfoHandle = {
    bg = "#f2f2f2",
    fg = "#ee5396"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#be95ff"
  },
  ScrollbarMiscHandle = {
    bg = "#f2f2f2",
    fg = "#be95ff"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#ff6f00"
  },
  ScrollbarSearchHandle = {
    bg = "#f2f2f2",
    fg = "#ff6f00"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#be95ff"
  },
  ScrollbarWarnHandle = {
    bg = "#f2f2f2",
    fg = "#be95ff"
  },
  Search = {
    bg = "#ff7eb6",
    fg = "#f2f2f2"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#08bdba"
  },
  SidekickSignChange = {
    fg = "#ee5396"
  },
  SidekickSignDelete = {
    fg = "#ff6f00"
  },
  SignColumn = {
    bg = "#ffffff",
    fg = "#f2f2f2"
  },
  SignColumnSB = {
    bg = "#ffffff",
    fg = "#f2f2f2"
  },
  SnacksDashboardDesc = {
    fg = "#08bdba"
  },
  SnacksDashboardDir = {
    fg = "#90a4ae"
  },
  SnacksDashboardFooter = {
    fg = "#0f62fe"
  },
  SnacksDashboardHeader = {
    fg = "#0f62fe"
  },
  SnacksDashboardIcon = {
    fg = "#0f62fe"
  },
  SnacksDashboardKey = {
    fg = "#ff6f00"
  },
  SnacksDashboardSpecial = {
    fg = "#be95ff"
  },
  SnacksDiffLabel = {
    bold = true,
    fg = "#0f62fe"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#e7efff",
    fg = "#0f62fe"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#0f62fe"
  },
  SnacksIndent = {
    fg = "#d0d0d0",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#ee5396",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#ff7eb6",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#be95ff",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#673ab7",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#42be65",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#ffab91",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#08bdba",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#ff6f00",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#0f62fe",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#ff6f00"
  },
  SnacksInputIcon = {
    fg = "#0f62fe"
  },
  SnacksInputTitle = {
    fg = "#ff6f00"
  },
  SnacksNotifierBorderDebug = {
    bg = "#ffffff",
    fg = "#d3dbdf"
  },
  SnacksNotifierBorderError = {
    bg = "#ffffff",
    fg = "#ffc599"
  },
  SnacksNotifierBorderInfo = {
    bg = "#ffffff",
    fg = "#f8bad5"
  },
  SnacksNotifierBorderTrace = {
    bg = "#ffffff",
    fg = "#e5d5ff"
  },
  SnacksNotifierBorderWarn = {
    bg = "#ffffff",
    fg = "#e5d5ff"
  },
  SnacksNotifierDebug = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  SnacksNotifierError = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  SnacksNotifierIconDebug = {
    fg = "#90a4ae"
  },
  SnacksNotifierIconError = {
    fg = "#ff6f00"
  },
  SnacksNotifierIconInfo = {
    fg = "#ee5396"
  },
  SnacksNotifierIconTrace = {
    fg = "#be95ff"
  },
  SnacksNotifierIconWarn = {
    fg = "#be95ff"
  },
  SnacksNotifierInfo = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  SnacksNotifierTitleDebug = {
    fg = "#90a4ae"
  },
  SnacksNotifierTitleError = {
    fg = "#ff6f00"
  },
  SnacksNotifierTitleInfo = {
    fg = "#ee5396"
  },
  SnacksNotifierTitleTrace = {
    fg = "#be95ff"
  },
  SnacksNotifierTitleWarn = {
    fg = "#be95ff"
  },
  SnacksNotifierTrace = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  SnacksNotifierWarn = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  SnacksPickerBoxTitle = {
    bg = "#fafafa",
    fg = "#ff6f00"
  },
  SnacksPickerInputBorder = {
    bg = "#fafafa",
    fg = "#ff6f00"
  },
  SnacksPickerInputTitle = {
    bg = "#fafafa",
    fg = "#ff6f00"
  },
  SnacksPickerPickWin = {
    bg = "#d0d0d0",
    bold = true,
    fg = "#37474f"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#ee5396",
    bold = true,
    fg = "#37474f"
  },
  SnacksPickerSelected = {
    fg = "#ee5396"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksProfilerBadgeInfo = {
    bg = "#e7efff",
    fg = "#0f62fe"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#fcfdff",
    fg = "#90a4ae"
  },
  SnacksProfilerIconInfo = {
    bg = "#b7d0ff",
    fg = "#0f62fe"
  },
  SnacksProfilerIconTrace = {
    bg = "#f5f8ff",
    fg = "#90a4ae"
  },
  SnacksZenIcon = {
    fg = "#be95ff"
  },
  Sneak = {
    bg = "#673ab7",
    fg = "#f2f2f2"
  },
  SneakScope = {
    bg = "#d0d0d0"
  },
  Special = {
    fg = "#37474f"
  },
  SpecialChar = {
    fg = "#37474f"
  },
  SpecialComment = {
    fg = "#ff7eb6"
  },
  SpecialKey = {
    fg = "#161616"
  },
  SpellBad = {
    sp = "#ff6f00",
    undercurl = true
  },
  SpellCap = {
    sp = "#be95ff",
    undercurl = true
  },
  SpellLocal = {
    sp = "#ee5396",
    undercurl = true
  },
  SpellRare = {
    sp = "#37474f",
    undercurl = true
  },
  Statement = {
    fg = "#ee5396"
  },
  StatusCommand = {
    bg = "#42be65",
    fg = "#ffffff"
  },
  StatusInsert = {
    bg = "#673ab7",
    fg = "#ffffff"
  },
  StatusLine = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  StatusLineDiagnosticError = {
    bg = "#ffffff",
    bold = true,
    fg = "#ff6f00"
  },
  StatusLineDiagnosticWarn = {
    bg = "#ffffff",
    bold = true,
    fg = "#be95ff"
  },
  StatusLineNC = {
    bg = "#f2f2f2",
    fg = "#37474f"
  },
  StatusNormal = {
    bg = "#ffab91",
    fg = "#ffffff"
  },
  StatusReplace = {
    bg = "#ff7eb6",
    fg = "#ffffff"
  },
  StatusTerminal = {
    bg = "#0f62fe",
    fg = "#ffffff"
  },
  StatusVisual = {
    bg = "#be95ff",
    fg = "#ffffff"
  },
  StorageClass = {
    fg = "#ee5396"
  },
  String = {
    fg = "#be95ff"
  },
  Structure = {
    fg = "#ee5396"
  },
  Substitute = {
    bg = "#ff7eb6",
    fg = "#f2f2f2"
  },
  SupermavenSuggestion = {
    fg = "#90a4ae"
  },
  TabLine = "StatusLineNC",
  TabLineFill = "TabLine",
  TabLineSel = "StatusLine",
  Tag = {
    fg = "#37474f"
  },
  TargetWord = {
    fg = "#08bdba"
  },
  TelescopeBorder = {
    bg = "#fafafa",
    fg = "#fafafa"
  },
  TelescopeMatching = {
    bold = true,
    fg = "#ff7eb6",
    italic = true
  },
  TelescopeNormal = {
    bg = "#fafafa"
  },
  TelescopePreviewLine = {
    bg = "#f2f2f2"
  },
  TelescopePreviewTitle = {
    bg = "#673ab7",
    fg = "#d0d0d0"
  },
  TelescopePromptBorder = {
    bg = "#d0d0d0",
    fg = "#d0d0d0"
  },
  TelescopePromptNormal = {
    bg = "#d0d0d0",
    fg = "#90a4ae"
  },
  TelescopePromptPrefix = {
    bg = "#d0d0d0",
    fg = "#ff7eb6"
  },
  TelescopePromptTitle = {
    bg = "#0f62fe",
    fg = "#d0d0d0"
  },
  TelescopeResultsComment = {
    fg = "#90a4ae"
  },
  TelescopeResultsTitle = {
    bg = "#fafafa",
    fg = "#fafafa"
  },
  TelescopeSelection = {
    bg = "#d0d0d0"
  },
  TermCursor = "Cursor",
  TermCursorNC = "Cursor",
  Title = {
    fg = "#37474f"
  },
  Todo = {
    fg = "#42be65"
  },
  TooLong = {
    bg = "#d0d0d0"
  },
  TreesitterContext = {
    bg = "#d9d9d9"
  },
  TroubleCount = {
    bg = "#d0d0d0",
    fg = "#673ab7"
  },
  TroubleNormal = {
    bg = "#ffffff",
    fg = "#37474f"
  },
  TroubleText = {
    fg = "#37474f"
  },
  Type = {
    fg = "#ee5396"
  },
  Typedef = {
    fg = "#ee5396"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    bg = "#ffffff",
    fg = "#f2f2f2"
  },
  VimwikiCode = "markdownCode",
  VimwikiHR = "markdownRule",
  VimwikiHeader1 = "markdownH1",
  VimwikiHeader2 = "markdownH1",
  VimwikiHeader3 = "markdownH1",
  VimwikiHeader4 = "markdownH1",
  VimwikiHeader5 = "markdownH1",
  VimwikiHeader6 = "markdownH1",
  VimwikiHeaderChar = "markdownH1",
  VimwikiLink = "markdownUrl",
  VimwikiList = "markdownListMarker",
  VimwikiMarkers = {
    fg = "#ff7eb6"
  },
  VimwikiTag = {
    fg = "#42be65"
  },
  Visual = {
    bg = "#d0d0d0"
  },
  VisualNOS = {
    bg = "#d0d0d0"
  },
  WarningMsg = {
    fg = "#be95ff"
  },
  WhichKey = {
    fg = "#08bdba"
  },
  WhichKeyDesc = {
    fg = "#673ab7"
  },
  WhichKeyGroup = {
    fg = "#0f62fe"
  },
  WhichKeyNormal = {
    bg = "#ffffff"
  },
  WhichKeySeparator = {
    fg = "#90a4ae"
  },
  WhichKeyValue = {
    fg = "#6f7f86"
  },
  Whitespace = {
    fg = "#d0d0d0"
  },
  WildMenu = {
    bg = "#f2f2f2",
    fg = "#ff7eb6"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bg = "#ffffff",
    fg = "#f2f2f2"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  alpha1 = {
    fg = "#161616"
  },
  alpha2 = {
    fg = "#37474f"
  },
  alpha3 = {
    fg = "#161616"
  },
  asciidocAttributeEntry = {
    fg = "#ffab91"
  },
  asciidocAttributeList = "asciidocAttributeEntry",
  asciidocAttributeRef = "asciidocAttributeEntry",
  asciidocHLabel = "markdownH1",
  asciidocOneLineTitle = "markdownH1",
  asciidocQuotedMonospaced = "markdownBlockquote",
  asciidocURL = "markdownUrl",
  csvCol0 = {
    fg = "#878d96"
  },
  csvCol1 = {
    fg = "#a8a8a8"
  },
  csvCol2 = {
    fg = "#8d8d8d"
  },
  csvCol3 = {
    fg = "#a2a9b0"
  },
  csvCol4 = {
    fg = "#8f8b8b"
  },
  csvCol5 = {
    fg = "#ada8a8"
  },
  csvCol6 = {
    fg = "#878d96"
  },
  csvCol7 = {
    fg = "#a8a8a8"
  },
  csvCol8 = {
    fg = "#8d8d8d"
  },
  debugBreakpoint = {
    bg = "#fdeef5",
    fg = "#ee5396"
  },
  debugPC = {
    bg = "#ffffff"
  },
  diffAdded = {
    fg = "#08bdba"
  },
  diffChanged = {
    fg = "#ee5396"
  },
  diffFile = {
    fg = "#ee5396"
  },
  diffIndexLine = {
    fg = "#be95ff"
  },
  diffLine = {
    fg = "#90a4ae"
  },
  diffNewFile = {
    bg = "#cef2f1",
    fg = "#08bdba"
  },
  diffOldFile = {
    bg = "#fcddea",
    fg = "#ff6f00"
  },
  diffRemoved = {
    fg = "#ff6f00"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#ff6f00"
  },
  healthSuccess = {
    fg = "#42be65"
  },
  healthWarning = {
    fg = "#be95ff"
  },
  helpCommand = {
    bg = "#f2f2f2",
    fg = "#ee5396"
  },
  helpExample = {
    fg = "#90a4ae"
  },
  helpHeader = {
    fg = "#ffab91"
  },
  helpHeadline = {
    fg = "#ff6f00"
  },
  helpHyperTextJump = {
    fg = "#ff7eb6"
  },
  helpSpecial = {
    fg = "#ee5396"
  },
  htmlH1 = "markdownH1",
  htmlH2 = "markdownH1",
  illuminatedCurWord = {
    bg = "#d0d0d0"
  },
  illuminatedWord = {
    bg = "#d0d0d0"
  },
  lCursor = "Cursor",
  markdownBlockquote = {
    fg = "#ff7eb6"
  },
  markdownBold = "Bold",
  markdownBoldItalic = {
    bold = true,
    italic = true
  },
  markdownCode = "String",
  markdownCodeBlock = "markdownCode",
  markdownCodeDelimiter = "markdownCode",
  markdownH1 = {
    fg = "#ff6f00"
  },
  markdownH2 = "markdownH1",
  markdownH3 = "markdownH1",
  markdownH4 = "markdownH1",
  markdownH5 = "markdownH1",
  markdownH6 = "markdownH1",
  markdownHeadingDelimiter = "markdownH1",
  markdownHeadingRule = "markdownH1",
  markdownItalic = "Italic",
  markdownListMarker = {
    fg = "#ff7eb6"
  },
  markdownOrderedListMarker = {
    fg = "#ff7eb6"
  },
  markdownRule = "Comment",
  markdownUrl = "String",
  mkdListItem = "markdownListMarker",
  mkdListItemCheckbox = "markdownListMarker",
  mkdRule = "markdownRule",
  qfFileName = {
    fg = "#ff7eb6"
  },
  qfLineNr = {
    fg = "#6f7f86"
  }
}
