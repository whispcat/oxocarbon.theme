local colors = {
  _name = "oxocarbon_dark",
  _style = "dark",
  base00 = "#161616",
  base01 = "#262626",
  base02 = "#393939",
  base03 = "#525252",
  base04 = "#d0d0d0",
  base05 = "#f2f2f2",
  base06 = "#ffffff",
  base07 = "#08bdba",
  base08 = "#3ddbd9",
  base09 = "#78a9ff",
  base10 = "#ee5396",
  base11 = "#33b1ff",
  base12 = "#ff7eb6",
  base13 = "#42be65",
  base14 = "#be95ff",
  base15 = "#82cfff",
  bg = "#161616",
  bg_dark = "#131313",
  bg_dark1 = "#0b0b0b",
  bg_float = "#131313",
  bg_highlight = "#262626",
  bg_popup = "#131313",
  bg_search = "#393939",
  bg_sidebar = "#161616",
  bg_statusline = "#262626",
  bg_visual = "#393939",
  black = "#262626",
  blend = "#131313",
  blue = "#78a9ff",
  blue0 = "#2f3f5c",
  blue1 = "#3ddbd9",
  blue2 = "#33b1ff",
  blue5 = "#82cfff",
  blue6 = "#82cfff",
  blue7 = "#222a39",
  border = "#262626",
  border_highlight = "#393939",
  comment = "#525252",
  cyan = "#3ddbd9",
  dark3 = "#525252",
  dark5 = "#adadad",
  diff = {
    add = "#122f2f",
    change = "#222a39",
    delete = "#361c28",
    text = "#2f3f5c"
  },
  error = "#ee5396",
  fg = "#d0d0d0",
  fg_dark = "#d0d0d0",
  fg_float = "#f2f2f2",
  fg_gutter = "#393939",
  fg_sidebar = "#d0d0d0",
  git = {
    add = "#08bdba",
    change = "#78a9ff",
    delete = "#ee5396",
    ignore = "#525252"
  },
  green = "#42be65",
  green1 = "#08bdba",
  green2 = "#08bdba",
  hint = "#d0d0d0",
  info = "#78a9ff",
  magenta = "#be95ff",
  magenta2 = "#ee5396",
  none = "NONE",
  orange = "#ff7eb6",
  pink = "#ff7eb6",
  purple = "#be95ff",
  rainbow = { "#78a9ff", "#3ddbd9", "#be95ff", "#ff7eb6", "#42be65", "#82cfff", "#08bdba", "#ee5396" },
  red = "#ee5396",
  red1 = "#ee5396",
  teal = "#08bdba",
  terminal = {
    black = "#262626",
    black_bright = "#525252",
    blue = "#78a9ff",
    blue_bright = "#78a9ff",
    cyan = "#3ddbd9",
    cyan_bright = "#08bdba",
    green = "#be95ff",
    green_bright = "#be95ff",
    magenta = "#82cfff",
    magenta_bright = "#82cfff",
    red = "#33b1ff",
    red_bright = "#33b1ff",
    white = "#f2f2f2",
    white_bright = "#ffffff",
    yellow = "#42be65",
    yellow_bright = "#42be65"
  },
  terminal_black = "#525252",
  todo = "#42be65",
  warning = "#be95ff",
  yellow = "#42be65"
}

local highlights = {
  ["@annotation"] = "PreProc",
  ["@attribute"] = {
    fg = "#82cfff"
  },
  ["@boolean"] = "Boolean",
  ["@character"] = "Character",
  ["@character.printf"] = "SpecialChar",
  ["@character.special"] = "SpecialChar",
  ["@comment"] = "Comment",
  ["@comment.error"] = {
    fg = "#ee5396"
  },
  ["@comment.hint"] = {
    fg = "#d0d0d0"
  },
  ["@comment.info"] = {
    fg = "#78a9ff"
  },
  ["@comment.note"] = {
    fg = "#d0d0d0"
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
    fg = "#78a9ff"
  },
  ["@diff.delta"] = "DiffChange",
  ["@diff.minus"] = "DiffDelete",
  ["@diff.plus"] = "DiffAdd",
  ["@function"] = {
    bold = true,
    fg = "#ff7eb6"
  },
  ["@function.builtin"] = {
    fg = "#ff7eb6"
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
    fg = "#78a9ff"
  },
  ["@keyword.conditional"] = {
    fg = "#78a9ff"
  },
  ["@keyword.coroutine"] = "@keyword",
  ["@keyword.debug"] = "Debug",
  ["@keyword.directive"] = "PreProc",
  ["@keyword.directive.define"] = "Define",
  ["@keyword.exception"] = {
    fg = "#82cfff"
  },
  ["@keyword.function"] = {
    fg = "#3ddbd9"
  },
  ["@keyword.import"] = {
    fg = "#78a9ff"
  },
  ["@keyword.operator"] = {
    fg = "#3ddbd9"
  },
  ["@keyword.repeat"] = {
    fg = "#78a9ff"
  },
  ["@keyword.return"] = "@keyword",
  ["@keyword.storage"] = "StorageClass",
  ["@label"] = {
    fg = "#82cfff"
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
    fg = "#82cfff",
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
    fg = "#3ddbd9"
  },
  ["@number.date.effective"] = {
    fg = "#42be65"
  },
  ["@number.float"] = "Float",
  ["@number.interval"] = {
    fg = "#78a9ff"
  },
  ["@number.quantity"] = {
    fg = "#33b1ff"
  },
  ["@number.quantity.negative"] = {
    fg = "#ee5396"
  },
  ["@number.status"] = {
    fg = "#ff7eb6"
  },
  ["@operator"] = "Operator",
  ["@property"] = {
    fg = "#ee5396"
  },
  ["@punctuation.bracket"] = {
    fg = "#3ddbd9"
  },
  ["@punctuation.delimiter"] = {
    fg = "#3ddbd9"
  },
  ["@punctuation.special"] = {
    fg = "#3ddbd9"
  },
  ["@string"] = "String",
  ["@string.documentation"] = "String",
  ["@string.escape"] = {
    fg = "#82cfff"
  },
  ["@string.regexp"] = {
    fg = "#08bdba"
  },
  ["@string.special.symbol"] = {
    bold = true,
    fg = "#82cfff"
  },
  ["@string.special.url"] = {
    fg = "#be95ff",
    underline = true
  },
  ["@tag"] = {
    fg = "#78a9ff"
  },
  ["@tag.attribute"] = {
    fg = "#82cfff"
  },
  ["@tag.builtin.tsx"] = "@tag.tsx",
  ["@tag.delimiter"] = {
    fg = "#82cfff"
  },
  ["@type"] = "Type",
  ["@type.builtin"] = "Type",
  ["@type.definition"] = "Typedef",
  ["@type.qualifier"] = "@keyword",
  ["@variable"] = {
    fg = "#d0d0d0"
  },
  ["@variable.builtin"] = {
    fg = "#d0d0d0"
  },
  ["@variable.member"] = {
    fg = "#d0d0d0"
  },
  ["@variable.parameter"] = {
    fg = "#d0d0d0"
  },
  ["@variable.parameter.builtin"] = {
    fg = "#d0d0d0"
  },
  ALEErrorSign = {
    fg = "#ee5396"
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
    fg = "#393939"
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
    fg = "#d0d0d0"
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
    fg = "#3ddbd9"
  },
  AlphaFooter = {
    fg = "#3ddbd9"
  },
  AlphaHeader = {
    fg = "#78a9ff"
  },
  AlphaHeaderLabel = {
    fg = "#ff7eb6"
  },
  AlphaShortcut = {
    fg = "#ff7eb6"
  },
  BlinkCmpDoc = {
    bg = "#262626",
    fg = "#f2f2f2"
  },
  BlinkCmpDocBorder = {
    bg = "#262626",
    fg = "#525252"
  },
  BlinkCmpDocCursorLine = {
    bg = "#393939"
  },
  BlinkCmpDocSeparator = {
    bg = "#262626",
    fg = "#393939"
  },
  BlinkCmpGhostText = {
    fg = "#525252"
  },
  BlinkCmpKind = {
    fg = "#d0d0d0"
  },
  BlinkCmpKindArray = "LspKindArray",
  BlinkCmpKindBoolean = "LspKindBoolean",
  BlinkCmpKindClass = {
    fg = "#33b1ff"
  },
  BlinkCmpKindCodeium = {
    fg = "#08bdba"
  },
  BlinkCmpKindColor = {
    fg = "#3ddbd9"
  },
  BlinkCmpKindConstant = {
    fg = "#ee5396"
  },
  BlinkCmpKindConstructor = {
    fg = "#ee5396"
  },
  BlinkCmpKindCopilot = {
    fg = "#08bdba"
  },
  BlinkCmpKindDefault = {
    fg = "#d0d0d0"
  },
  BlinkCmpKindEnum = {
    fg = "#78a9ff"
  },
  BlinkCmpKindEnumMember = {
    fg = "#82cfff"
  },
  BlinkCmpKindEvent = {
    fg = "#ff7eb6"
  },
  BlinkCmpKindField = {
    fg = "#ff7eb6"
  },
  BlinkCmpKindFile = {
    fg = "#be95ff"
  },
  BlinkCmpKindFolder = {
    fg = "#42be65"
  },
  BlinkCmpKindFunction = {
    fg = "#33b1ff"
  },
  BlinkCmpKindInterface = {
    fg = "#3ddbd9"
  },
  BlinkCmpKindKey = "LspKindKey",
  BlinkCmpKindKeyword = {
    fg = "#78a9ff"
  },
  BlinkCmpKindMethod = {
    fg = "#82cfff"
  },
  BlinkCmpKindModule = {
    fg = "#33b1ff"
  },
  BlinkCmpKindNamespace = "LspKindNamespace",
  BlinkCmpKindNull = "LspKindNull",
  BlinkCmpKindNumber = "LspKindNumber",
  BlinkCmpKindObject = "LspKindObject",
  BlinkCmpKindOperator = {
    fg = "#33b1ff"
  },
  BlinkCmpKindPackage = "LspKindPackage",
  BlinkCmpKindProperty = {
    fg = "#ff7eb6"
  },
  BlinkCmpKindReference = {
    fg = "#ee5396"
  },
  BlinkCmpKindSnippet = {
    fg = "#42be65"
  },
  BlinkCmpKindString = "LspKindString",
  BlinkCmpKindStruct = {
    fg = "#33b1ff"
  },
  BlinkCmpKindSupermaven = {
    fg = "#08bdba"
  },
  BlinkCmpKindTabNine = {
    fg = "#08bdba"
  },
  BlinkCmpKindText = {
    fg = "#78a9ff"
  },
  BlinkCmpKindTypeParameter = {
    fg = "#3ddbd9"
  },
  BlinkCmpKindUnit = {
    fg = "#42be65"
  },
  BlinkCmpKindValue = {
    fg = "#82cfff"
  },
  BlinkCmpKindVariable = {
    fg = "#be95ff"
  },
  BlinkCmpLabel = {
    fg = "#adadad"
  },
  BlinkCmpLabelDeprecated = {
    fg = "#525252",
    italic = true
  },
  BlinkCmpLabelDescription = {
    fg = "#d0d0d0"
  },
  BlinkCmpLabelDetail = {
    fg = "#d0d0d0",
    italic = true
  },
  BlinkCmpLabelMatch = {
    bold = true,
    fg = "#f2f2f2"
  },
  BlinkCmpMenu = {
    bg = "#262626",
    fg = "#d0d0d0"
  },
  BlinkCmpMenuBorder = {
    bg = "#262626",
    fg = "#525252"
  },
  BlinkCmpMenuSelection = "PmenuSel",
  BlinkCmpScrollBarGutter = {
    bg = "#393939"
  },
  BlinkCmpScrollBarThumb = {
    bg = "#525252"
  },
  BlinkCmpSignatureHelp = {
    bg = "#262626",
    fg = "#f2f2f2"
  },
  BlinkCmpSignatureHelpActiveParameter = {
    bg = "#393939",
    bold = true,
    fg = "#3ddbd9"
  },
  BlinkCmpSignatureHelpBorder = {
    bg = "#262626",
    fg = "#525252"
  },
  BlinkCmpSource = {
    fg = "#d0d0d0",
    italic = true
  },
  Bold = {
    bold = true
  },
  Boolean = {
    fg = "#78a9ff"
  },
  BufferAlternate = {
    bg = "#393939",
    fg = "#d0d0d0"
  },
  BufferAlternateADDED = {
    bg = "#393939",
    fg = "#08bdba"
  },
  BufferAlternateCHANGED = {
    bg = "#393939",
    fg = "#78a9ff"
  },
  BufferAlternateDELETED = {
    bg = "#393939",
    fg = "#ee5396"
  },
  BufferAlternateERROR = {
    bg = "#393939",
    fg = "#ee5396"
  },
  BufferAlternateHINT = {
    bg = "#393939",
    fg = "#d0d0d0"
  },
  BufferAlternateINFO = {
    bg = "#393939",
    fg = "#78a9ff"
  },
  BufferAlternateIndex = {
    bg = "#393939",
    fg = "#78a9ff"
  },
  BufferAlternateMod = {
    bg = "#393939",
    fg = "#be95ff"
  },
  BufferAlternateSign = {
    bg = "#393939",
    fg = "#78a9ff"
  },
  BufferAlternateTarget = {
    bg = "#393939",
    fg = "#ee5396"
  },
  BufferAlternateWARN = {
    bg = "#393939",
    fg = "#be95ff"
  },
  BufferCurrent = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  BufferCurrentADDED = {
    bg = "#161616",
    fg = "#08bdba"
  },
  BufferCurrentCHANGED = {
    bg = "#161616",
    fg = "#78a9ff"
  },
  BufferCurrentDELETED = {
    bg = "#161616",
    fg = "#ee5396"
  },
  BufferCurrentERROR = {
    bg = "#161616",
    fg = "#ee5396"
  },
  BufferCurrentHINT = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  BufferCurrentINFO = {
    bg = "#161616",
    fg = "#78a9ff"
  },
  BufferCurrentIndex = {
    bg = "#161616",
    fg = "#78a9ff"
  },
  BufferCurrentMod = {
    bg = "#161616",
    fg = "#be95ff"
  },
  BufferCurrentSign = {
    bg = "#161616",
    fg = "#161616"
  },
  BufferCurrentTarget = {
    bg = "#161616",
    fg = "#ee5396"
  },
  BufferCurrentWARN = {
    bg = "#161616",
    fg = "#be95ff"
  },
  BufferInactive = {
    bg = "#1c1c1c",
    fg = "#8f8f8f"
  },
  BufferInactiveADDED = {
    bg = "#1c1c1c",
    fg = "#0b9c99"
  },
  BufferInactiveCHANGED = {
    bg = "#1c1c1c",
    fg = "#648cd0"
  },
  BufferInactiveDELETED = {
    bg = "#1c1c1c",
    fg = "#c3477c"
  },
  BufferInactiveERROR = {
    bg = "#1c1c1c",
    fg = "#c3477c"
  },
  BufferInactiveHINT = {
    bg = "#1c1c1c",
    fg = "#ababab"
  },
  BufferInactiveINFO = {
    bg = "#1c1c1c",
    fg = "#648cd0"
  },
  BufferInactiveIndex = {
    bg = "#1c1c1c",
    fg = "#adadad"
  },
  BufferInactiveMod = {
    bg = "#1c1c1c",
    fg = "#9c7cd0"
  },
  BufferInactiveSign = {
    bg = "#1c1c1c",
    fg = "#161616"
  },
  BufferInactiveTarget = {
    bg = "#1c1c1c",
    fg = "#ee5396"
  },
  BufferInactiveWARN = {
    bg = "#1c1c1c",
    fg = "#9c7cd0"
  },
  BufferLineDiagnostic = {
    bold = true,
    fg = "#ee5396"
  },
  BufferLineDiagnosticVisible = {
    bold = true,
    fg = "#ee5396"
  },
  BufferLineIndicatorSelected = {
    fg = "#78a9ff"
  },
  BufferOffset = {
    bg = "#262626",
    fg = "#adadad"
  },
  BufferTabpageFill = {
    bg = "#232323",
    fg = "#adadad"
  },
  BufferTabpages = {
    bg = "#262626",
    fg = "NONE"
  },
  BufferVisible = {
    bg = "#262626",
    fg = "#d0d0d0"
  },
  BufferVisibleADDED = {
    bg = "#262626",
    fg = "#08bdba"
  },
  BufferVisibleCHANGED = {
    bg = "#262626",
    fg = "#78a9ff"
  },
  BufferVisibleDELETED = {
    bg = "#262626",
    fg = "#ee5396"
  },
  BufferVisibleERROR = {
    bg = "#262626",
    fg = "#ee5396"
  },
  BufferVisibleHINT = {
    bg = "#262626",
    fg = "#d0d0d0"
  },
  BufferVisibleINFO = {
    bg = "#262626",
    fg = "#78a9ff"
  },
  BufferVisibleIndex = {
    bg = "#262626",
    fg = "#78a9ff"
  },
  BufferVisibleMod = {
    bg = "#262626",
    fg = "#be95ff"
  },
  BufferVisibleSign = {
    bg = "#262626",
    fg = "#78a9ff"
  },
  BufferVisibleTarget = {
    bg = "#262626",
    fg = "#ee5396"
  },
  BufferVisibleWARN = {
    bg = "#262626",
    fg = "#be95ff"
  },
  Character = {
    fg = "#be95ff"
  },
  CmpDocumentation = {
    bg = "#131313",
    fg = "#f2f2f2"
  },
  CmpDocumentationBorder = {
    bg = "#131313",
    fg = "#131313"
  },
  CmpGhostText = {
    fg = "#525252"
  },
  CmpItemAbbr = {
    fg = "#adadad"
  },
  CmpItemAbbrDeprecated = {
    fg = "#525252",
    strikethrough = true
  },
  CmpItemAbbrMatch = {
    bold = true,
    fg = "#f2f2f2"
  },
  CmpItemAbbrMatchFuzzy = {
    bold = true,
    fg = "#d0d0d0"
  },
  CmpItemKindArray = "LspKindArray",
  CmpItemKindBoolean = "LspKindBoolean",
  CmpItemKindClass = {
    fg = "#33b1ff"
  },
  CmpItemKindCodeium = {
    fg = "#08bdba"
  },
  CmpItemKindColor = {
    fg = "#3ddbd9"
  },
  CmpItemKindConstant = {
    fg = "#ee5396"
  },
  CmpItemKindConstructor = {
    fg = "#ee5396"
  },
  CmpItemKindCopilot = {
    fg = "#08bdba"
  },
  CmpItemKindDefault = {
    fg = "#d0d0d0"
  },
  CmpItemKindEnum = {
    fg = "#78a9ff"
  },
  CmpItemKindEnumMember = {
    fg = "#82cfff"
  },
  CmpItemKindEvent = {
    fg = "#ff7eb6"
  },
  CmpItemKindField = {
    fg = "#ff7eb6"
  },
  CmpItemKindFile = {
    fg = "#be95ff"
  },
  CmpItemKindFolder = {
    fg = "#42be65"
  },
  CmpItemKindFunction = {
    fg = "#33b1ff"
  },
  CmpItemKindInterface = {
    fg = "#3ddbd9"
  },
  CmpItemKindKey = "LspKindKey",
  CmpItemKindKeyword = {
    fg = "#78a9ff"
  },
  CmpItemKindMethod = {
    fg = "#82cfff"
  },
  CmpItemKindModule = {
    fg = "#33b1ff"
  },
  CmpItemKindNamespace = "LspKindNamespace",
  CmpItemKindNull = "LspKindNull",
  CmpItemKindNumber = "LspKindNumber",
  CmpItemKindObject = "LspKindObject",
  CmpItemKindOperator = {
    fg = "#33b1ff"
  },
  CmpItemKindPackage = "LspKindPackage",
  CmpItemKindProperty = {
    fg = "#ff7eb6"
  },
  CmpItemKindReference = {
    fg = "#ee5396"
  },
  CmpItemKindSnippet = {
    fg = "#42be65"
  },
  CmpItemKindString = "LspKindString",
  CmpItemKindStruct = {
    fg = "#33b1ff"
  },
  CmpItemKindSupermaven = {
    fg = "#08bdba"
  },
  CmpItemKindTabNine = {
    fg = "#08bdba"
  },
  CmpItemKindText = {
    fg = "#78a9ff"
  },
  CmpItemKindTypeParameter = {
    fg = "#3ddbd9"
  },
  CmpItemKindUnit = {
    fg = "#42be65"
  },
  CmpItemKindValue = {
    fg = "#82cfff"
  },
  CmpItemKindVariable = {
    fg = "#be95ff"
  },
  CmpItemMenu = {
    fg = "#d0d0d0",
    italic = true
  },
  CodeBlock = {
    bg = "#262626"
  },
  CodeiumSuggestion = {
    fg = "#525252"
  },
  ColorColumn = {
    bg = "#262626"
  },
  Comment = {
    fg = "#525252",
    italic = true
  },
  ComplHint = {
    fg = "#525252"
  },
  Conceal = {},
  Conditional = {
    fg = "#78a9ff"
  },
  Constant = {
    fg = "#d0d0d0"
  },
  CopilotAnnotation = {
    fg = "#525252"
  },
  CopilotSuggestion = {
    fg = "#525252"
  },
  CurSearch = {
    bg = "#33b1ff",
    fg = "#262626"
  },
  Cursor = {
    bg = "#d0d0d0",
    fg = "#161616"
  },
  CursorColumn = {
    bg = "#262626"
  },
  CursorIM = "Cursor",
  CursorLine = {
    bg = "#262626"
  },
  CursorLineNr = {
    fg = "#d0d0d0"
  },
  DapStoppedLine = {
    bg = "#27232d"
  },
  DashboardDesc = {
    fg = "#3ddbd9"
  },
  DashboardFiles = {
    fg = "#78a9ff"
  },
  DashboardFooter = {
    fg = "#3ddbd9"
  },
  DashboardHeader = {
    fg = "#78a9ff"
  },
  DashboardIcon = {
    fg = "#3ddbd9"
  },
  DashboardKey = {
    fg = "#ff7eb6"
  },
  DashboardMruIcon = {
    fg = "#be95ff"
  },
  DashboardMruTitle = {
    fg = "#3ddbd9"
  },
  DashboardProjectIcon = {
    fg = "#42be65"
  },
  DashboardProjectTitle = {
    fg = "#3ddbd9"
  },
  DashboardProjectTitleIcon = {
    fg = "#ff7eb6"
  },
  DashboardShortCut = {
    fg = "#3ddbd9"
  },
  DashboardShortCutIcon = {
    fg = "#be95ff"
  },
  Debug = {
    fg = "#42be65"
  },
  Decorator = {
    fg = "#ff7eb6"
  },
  Define = {
    fg = "#78a9ff"
  },
  DefinitionCount = {
    fg = "#be95ff"
  },
  DefinitionIcon = {
    fg = "#78a9ff"
  },
  Delimiter = "Special",
  DiagnosticError = {
    fg = "#ee5396"
  },
  DiagnosticHint = {
    fg = "#d0d0d0"
  },
  DiagnosticInfo = {
    fg = "#78a9ff"
  },
  DiagnosticInformation = "DiagnosticInfo",
  DiagnosticOk = {
    fg = "#42be65"
  },
  DiagnosticUnderlineError = {
    sp = "#ee5396",
    undercurl = true
  },
  DiagnosticUnderlineHint = {
    sp = "#d0d0d0",
    undercurl = true
  },
  DiagnosticUnderlineInfo = {
    sp = "#d0d0d0",
    undercurl = true
  },
  DiagnosticUnderlineWarn = {
    sp = "#be95ff",
    undercurl = true
  },
  DiagnosticUnnecessary = {
    fg = "#525252"
  },
  DiagnosticVirtualTextError = {
    bg = "#2c1c23",
    fg = "#ee5396"
  },
  DiagnosticVirtualTextHint = {
    bg = "#292929",
    fg = "#d0d0d0"
  },
  DiagnosticVirtualTextInfo = {
    bg = "#20252d",
    fg = "#78a9ff"
  },
  DiagnosticVirtualTextWarn = {
    bg = "#27232d",
    fg = "#be95ff"
  },
  DiagnosticWarn = {
    fg = "#be95ff"
  },
  DiagnosticWarning = "DiagnosticWarn",
  DiffAdd = {
    bg = "#122f2f"
  },
  DiffChange = {
    bg = "#222a39"
  },
  DiffDelete = {
    bg = "#361c28"
  },
  DiffText = {
    bg = "#2f3f5c"
  },
  Directory = {
    fg = "#3ddbd9"
  },
  EndOfBuffer = {
    fg = "#262626"
  },
  Error = {
    bg = "#262626",
    fg = "#ee5396"
  },
  ErrorMsg = {
    fg = "#ee5396"
  },
  Exception = {
    fg = "#78a9ff"
  },
  FlashBackdrop = {
    fg = "#525252"
  },
  FlashLabel = {
    bg = "#161616",
    bold = true,
    fg = "#f2f2f2"
  },
  Float = "Number",
  FloatBorder = {
    bg = "#131313",
    fg = "#131313"
  },
  FloatTitle = {
    bg = "#131313",
    fg = "#d0d0d0"
  },
  FoldColumn = {
    bg = "#161616",
    fg = "#262626"
  },
  Folded = {
    bg = "#262626",
    fg = "#393939"
  },
  Function = {
    fg = "#3ddbd9"
  },
  FzfLuaBorder = {
    bg = "#131313",
    fg = "#393939"
  },
  FzfLuaCursor = "IncSearch",
  FzfLuaDirPart = {
    fg = "#d0d0d0"
  },
  FzfLuaFilePart = "FzfLuaFzfNormal",
  FzfLuaFzfCursorLine = "Visual",
  FzfLuaFzfNormal = {
    fg = "#d0d0d0"
  },
  FzfLuaFzfPointer = {
    fg = "#ee5396"
  },
  FzfLuaFzfSeparator = {
    bg = "#131313",
    fg = "#ff7eb6"
  },
  FzfLuaHeaderBind = "@punctuation.special",
  FzfLuaHeaderText = "Title",
  FzfLuaNormal = {
    bg = "#131313",
    fg = "#d0d0d0"
  },
  FzfLuaPath = "Directory",
  FzfLuaPreviewTitle = {
    bg = "#131313",
    fg = "#393939"
  },
  FzfLuaTitle = {
    bg = "#131313",
    fg = "#ff7eb6"
  },
  GitGutterAdd = {
    fg = "#08bdba"
  },
  GitGutterAddLineNr = {
    fg = "#08bdba"
  },
  GitGutterChange = {
    fg = "#78a9ff"
  },
  GitGutterChangeLineNr = {
    fg = "#78a9ff"
  },
  GitGutterDelete = {
    fg = "#ee5396"
  },
  GitGutterDeleteLineNr = {
    fg = "#ee5396"
  },
  GitSignsAdd = {
    fg = "#08bdba"
  },
  GitSignsChange = {
    fg = "#78a9ff"
  },
  GitSignsCurrentLineBlame = "Comment",
  GitSignsDelete = {
    fg = "#ee5396"
  },
  GlyphPalette1 = {
    fg = "#ee5396"
  },
  GlyphPalette2 = {
    fg = "#42be65"
  },
  GlyphPalette3 = {
    fg = "#42be65"
  },
  GlyphPalette4 = {
    fg = "#78a9ff"
  },
  GlyphPalette6 = {
    fg = "#08bdba"
  },
  GlyphPalette7 = {
    fg = "#d0d0d0"
  },
  GlyphPalette9 = {
    fg = "#ee5396"
  },
  GrugFarHelpHeader = {
    fg = "#525252"
  },
  GrugFarHelpHeaderKey = {
    fg = "#3ddbd9"
  },
  GrugFarInputLabel = {
    fg = "#3ddbd9"
  },
  GrugFarInputPlaceholder = {
    fg = "#525252"
  },
  GrugFarResultsChangeIndicator = {
    fg = "#78a9ff"
  },
  GrugFarResultsHeader = {
    fg = "#ff7eb6"
  },
  GrugFarResultsLineColumn = {
    fg = "#525252"
  },
  GrugFarResultsLineNo = {
    fg = "#525252"
  },
  GrugFarResultsMatch = {
    bg = "#ee5396",
    fg = "#262626"
  },
  GrugFarResultsStats = {
    fg = "#78a9ff"
  },
  Headline = "Headline1",
  Headline1 = {
    bg = "#1b1d22"
  },
  Headline2 = {
    bg = "#182020"
  },
  Headline3 = {
    bg = "#1e1c22"
  },
  Headline4 = {
    bg = "#221b1e"
  },
  Headline5 = {
    bg = "#181e1a"
  },
  Headline6 = {
    bg = "#1b1f22"
  },
  Headline7 = {
    bg = "#151e1e"
  },
  Headline8 = {
    bg = "#21191c"
  },
  HopNextKey = {
    bold = true,
    fg = "#ee5396"
  },
  HopNextKey1 = {
    bold = true,
    fg = "#33b1ff"
  },
  HopNextKey2 = {
    fg = "#2773a2"
  },
  HopUnmatched = {
    fg = "#525252"
  },
  HydraAmaranth = {
    fg = "#ee5396"
  },
  HydraBlue = {
    fg = "#78a9ff"
  },
  HydraHint = {
    bg = "#131313"
  },
  HydraPink = {
    fg = "#be95ff"
  },
  HydraRed = {
    fg = "#ff7eb6"
  },
  HydraTeal = {
    fg = "#3ddbd9"
  },
  IblIndent = {
    fg = "#393939",
    nocombine = true
  },
  IblScope = {
    fg = "#3ddbd9",
    nocombine = true
  },
  Identifier = {
    fg = "#d0d0d0"
  },
  IlluminatedWordRead = {
    bg = "#393939"
  },
  IlluminatedWordText = {
    bg = "#393939"
  },
  IlluminatedWordWrite = {
    bg = "#393939"
  },
  IncSearch = {
    bg = "#ee5396",
    fg = "#ffffff"
  },
  Include = {
    fg = "#78a9ff"
  },
  IndentBlanklineChar = {
    fg = "#393939",
    nocombine = true
  },
  IndentBlanklineContextChar = {
    fg = "#3ddbd9",
    nocombine = true
  },
  IndentLine = {
    fg = "#393939",
    nocombine = true
  },
  IndentLineCurrent = {
    fg = "#3ddbd9",
    nocombine = true
  },
  Italic = {
    italic = true
  },
  Keyword = {
    fg = "#78a9ff"
  },
  Label = {
    fg = "#78a9ff"
  },
  LazyProgressDone = {
    bold = true,
    fg = "#ee5396"
  },
  LazyProgressTodo = {
    bold = true,
    fg = "#393939"
  },
  LeapBackdrop = {
    fg = "#525252"
  },
  LeapLabel = {
    bold = true,
    fg = "#ee5396"
  },
  LeapMatch = {
    bg = "#ee5396",
    bold = true,
    fg = "#d0d0d0"
  },
  LineNr = {
    bg = "#161616",
    fg = "#525252"
  },
  LineNrAbove = "LineNr",
  LineNrBelow = "LineNr",
  LspCodeLens = {
    bg = "#525252"
  },
  LspFloatWinBorder = {
    fg = "#393939"
  },
  LspFloatWinNormal = {
    bg = "#131313"
  },
  LspInfoBorder = {
    bg = "#131313",
    fg = "#393939"
  },
  LspInlayHint = {
    bg = "#262626",
    fg = "#525252"
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
    bg = "#525252"
  },
  LspReferenceText = {
    bg = "#525252"
  },
  LspReferenceWrite = {
    bg = "#525252"
  },
  LspSagaBorderTitle = {
    fg = "#3ddbd9"
  },
  LspSagaCodeActionBorder = {
    fg = "#78a9ff"
  },
  LspSagaCodeActionContent = {
    fg = "#be95ff"
  },
  LspSagaCodeActionTitle = {
    fg = "#3ddbd9"
  },
  LspSagaDefPreviewBorder = {
    fg = "#42be65"
  },
  LspSagaFinderSelection = {
    fg = "#393939"
  },
  LspSagaHoverBorder = {
    fg = "#78a9ff"
  },
  LspSagaRenameBorder = {
    fg = "#42be65"
  },
  LspSagaSignatureHelpBorder = {
    fg = "#ee5396"
  },
  LspSignatureActiveParameter = {
    fg = "#3ddbd9"
  },
  Macro = {
    fg = "#08bdba"
  },
  MatchParen = {
    bg = "#393939",
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
    bg = "#393939"
  },
  MiniCursorwordCurrent = {
    bg = "#393939"
  },
  MiniDepsChangeAdded = "diffAdded",
  MiniDepsChangeRemoved = "diffRemoved",
  MiniDepsHint = "DiagnosticHint",
  MiniDepsInfo = "DiagnosticInfo",
  MiniDepsMsgBreaking = "DiagnosticWarn",
  MiniDepsPlaceholder = "Comment",
  MiniDepsTitle = "Title",
  MiniDepsTitleError = {
    bg = "#ee5396",
    fg = "#262626"
  },
  MiniDepsTitleSame = "Comment",
  MiniDepsTitleUpdate = {
    bg = "#08bdba",
    fg = "#262626"
  },
  MiniDiffOverAdd = "DiffAdd",
  MiniDiffOverChange = "DiffText",
  MiniDiffOverContext = "DiffChange",
  MiniDiffOverDelete = "DiffDelete",
  MiniDiffSignAdd = {
    fg = "#08bdba"
  },
  MiniDiffSignChange = {
    fg = "#78a9ff"
  },
  MiniDiffSignDelete = {
    fg = "#ee5396"
  },
  MiniFilesBorder = "FloatBorder",
  MiniFilesBorderModified = "DiagnosticFloatingWarn",
  MiniFilesCursorLine = "CursorLine",
  MiniFilesDirectory = "Directory",
  MiniFilesFile = {
    fg = "#f2f2f2"
  },
  MiniFilesNormal = "NormalFloat",
  MiniFilesTitle = "FloatTitle",
  MiniFilesTitleFocused = {
    bg = "#131313",
    bold = true,
    fg = "#393939"
  },
  MiniHipatternsFixme = {
    bg = "#ee5396",
    bold = true,
    fg = "#262626"
  },
  MiniHipatternsHack = {
    bg = "#be95ff",
    bold = true,
    fg = "#262626"
  },
  MiniHipatternsNote = {
    bg = "#d0d0d0",
    bold = true,
    fg = "#262626"
  },
  MiniHipatternsTodo = {
    bg = "#78a9ff",
    bold = true,
    fg = "#262626"
  },
  MiniIconsAzure = {
    fg = "#78a9ff"
  },
  MiniIconsBlue = {
    fg = "#78a9ff"
  },
  MiniIconsCyan = {
    fg = "#08bdba"
  },
  MiniIconsGreen = {
    fg = "#42be65"
  },
  MiniIconsGrey = {
    fg = "#d0d0d0"
  },
  MiniIconsOrange = {
    fg = "#ff7eb6"
  },
  MiniIconsPurple = {
    fg = "#be95ff"
  },
  MiniIconsRed = {
    fg = "#ee5396"
  },
  MiniIconsYellow = {
    fg = "#42be65"
  },
  MiniIndentscopePrefix = {
    nocombine = true
  },
  MiniIndentscopeSymbol = {
    fg = "#3ddbd9",
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
    bg = "#131313",
    fg = "#d0d0d0",
    nocombine = true
  },
  MiniJump2dSpotUnique = {
    bold = true,
    fg = "#ff7eb6",
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
    bg = "#131313",
    fg = "#d0d0d0"
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
    bg = "#131313",
    fg = "#78a9ff"
  },
  MiniStarterCurrent = {
    nocombine = true
  },
  MiniStarterFooter = {
    fg = "#42be65",
    italic = true
  },
  MiniStarterHeader = {
    fg = "#78a9ff"
  },
  MiniStarterInactive = {
    fg = "#525252",
    italic = true
  },
  MiniStarterItem = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  MiniStarterItemBullet = {
    fg = "#393939"
  },
  MiniStarterItemPrefix = {
    fg = "#be95ff"
  },
  MiniStarterQuery = {
    fg = "#78a9ff"
  },
  MiniStarterSection = {
    fg = "#3ddbd9"
  },
  MiniStatuslineDevinfo = {
    bg = "#393939",
    fg = "#d0d0d0"
  },
  MiniStatuslineFileinfo = {
    bg = "#393939",
    fg = "#d0d0d0"
  },
  MiniStatuslineFilename = {
    bg = "#262626",
    fg = "#d0d0d0"
  },
  MiniStatuslineInactive = {
    bg = "#262626",
    fg = "#78a9ff"
  },
  MiniStatuslineModeCommand = {
    bg = "#42be65",
    bold = true,
    fg = "#262626"
  },
  MiniStatuslineModeInsert = {
    bg = "#42be65",
    bold = true,
    fg = "#262626"
  },
  MiniStatuslineModeNormal = {
    bg = "#78a9ff",
    bold = true,
    fg = "#262626"
  },
  MiniStatuslineModeOther = {
    bg = "#08bdba",
    bold = true,
    fg = "#262626"
  },
  MiniStatuslineModeReplace = {
    bg = "#ee5396",
    bold = true,
    fg = "#262626"
  },
  MiniStatuslineModeVisual = {
    bg = "#be95ff",
    bold = true,
    fg = "#262626"
  },
  MiniSurround = {
    bg = "#ff7eb6",
    fg = "#262626"
  },
  MiniTablineCurrent = {
    bg = "#393939",
    fg = "#d0d0d0"
  },
  MiniTablineFill = {
    bg = "#262626"
  },
  MiniTablineHidden = {
    bg = "#262626",
    fg = "#adadad"
  },
  MiniTablineModifiedCurrent = {
    bg = "#393939",
    fg = "#be95ff"
  },
  MiniTablineModifiedHidden = {
    bg = "#262626",
    fg = "#8c6fb9"
  },
  MiniTablineModifiedVisible = {
    bg = "#262626",
    fg = "#be95ff"
  },
  MiniTablineTabpagesection = {
    bg = "#393939",
    fg = "NONE"
  },
  MiniTablineVisible = {
    bg = "#262626",
    fg = "#d0d0d0"
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
    fg = "#d0d0d0"
  },
  MoreMsg = {
    fg = "#3ddbd9"
  },
  MsgArea = {
    fg = "#d0d0d0"
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
    fg = "#d0d0d0"
  },
  NavicText = {
    bg = "NONE",
    fg = "#d0d0d0"
  },
  NeoTreeDimText = {
    fg = "#393939"
  },
  NeoTreeFileName = {
    fg = "#d0d0d0"
  },
  NeoTreeGitModified = {
    fg = "#ff7eb6"
  },
  NeoTreeGitStaged = {
    fg = "#08bdba"
  },
  NeoTreeGitUntracked = {
    fg = "#be95ff"
  },
  NeoTreeNormal = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  NeoTreeNormalNC = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  NeoTreeTabActive = {
    bg = "#131313",
    bold = true,
    fg = "#78a9ff"
  },
  NeoTreeTabInactive = {
    bg = "#121212",
    fg = "#525252"
  },
  NeoTreeTabSeparatorActive = {
    bg = "#131313",
    fg = "#78a9ff"
  },
  NeoTreeTabSeparatorInactive = {
    bg = "#121212",
    fg = "#161616"
  },
  NeogitBranch = {
    fg = "#ee5396"
  },
  NeogitDiffAddHighlight = {
    bg = "#122f2f",
    fg = "#08bdba"
  },
  NeogitDiffContextHighlight = {
    bg = "#282828",
    fg = "#d0d0d0"
  },
  NeogitDiffDeleteHighlight = {
    bg = "#361c28",
    fg = "#ee5396"
  },
  NeogitHunkHeader = {
    bg = "#393939",
    fg = "#d0d0d0"
  },
  NeogitHunkHeaderHighlight = {
    bg = "#525252",
    fg = "#d0d0d0"
  },
  NeogitRemote = {
    fg = "#78a9ff"
  },
  NeotestAdapterName = {
    bold = true,
    fg = "#be95ff"
  },
  NeotestBorder = {
    fg = "#78a9ff"
  },
  NeotestDir = {
    fg = "#78a9ff"
  },
  NeotestExpandMarker = {
    fg = "#d0d0d0"
  },
  NeotestFailed = {
    fg = "#ee5396"
  },
  NeotestFile = {
    fg = "#08bdba"
  },
  NeotestFocused = {
    fg = "#42be65"
  },
  NeotestIndent = {
    fg = "#d0d0d0"
  },
  NeotestMarked = {
    fg = "#78a9ff"
  },
  NeotestNamespace = {
    fg = "#08bdba"
  },
  NeotestPassed = {
    fg = "#42be65"
  },
  NeotestRunning = {
    fg = "#42be65"
  },
  NeotestSkipped = {
    fg = "#78a9ff"
  },
  NeotestTarget = {
    fg = "#78a9ff"
  },
  NeotestTest = {
    fg = "#d0d0d0"
  },
  NeotestWinSelect = {
    fg = "#78a9ff"
  },
  NoiceCmdlineIconInput = {
    fg = "#42be65"
  },
  NoiceCmdlineIconLua = {
    fg = "#3ddbd9"
  },
  NoiceCmdlinePopupBorderInput = {
    fg = "#42be65"
  },
  NoiceCmdlinePopupBorderLua = {
    fg = "#3ddbd9"
  },
  NoiceCmdlinePopupTitleInput = {
    fg = "#42be65"
  },
  NoiceCmdlinePopupTitleLua = {
    fg = "#3ddbd9"
  },
  NoiceCompletionItemKindArray = "LspKindArray",
  NoiceCompletionItemKindBoolean = "LspKindBoolean",
  NoiceCompletionItemKindClass = "LspKindClass",
  NoiceCompletionItemKindColor = "LspKindColor",
  NoiceCompletionItemKindConstant = "LspKindConstant",
  NoiceCompletionItemKindConstructor = "LspKindConstructor",
  NoiceCompletionItemKindDefault = {
    bg = "NONE",
    fg = "#d0d0d0"
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
    fg = "#393939"
  },
  Normal = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  NormalFloat = {
    bg = "#131313",
    fg = "#f2f2f2"
  },
  NormalNC = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  NormalSB = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  NotifyBackground = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  NotifyDEBUGBody = {
    bg = "#161616",
    fg = "#d0d0d0"
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
    bg = "#161616",
    fg = "#d0d0d0"
  },
  NotifyERRORBorder = {
    fg = "#3ddbd9"
  },
  NotifyERRORIcon = {
    fg = "#3ddbd9"
  },
  NotifyERRORTitle = {
    fg = "#3ddbd9"
  },
  NotifyINFOBody = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  NotifyINFOBorder = {
    fg = "#f2f2f2"
  },
  NotifyINFOIcon = {
    fg = "#f2f2f2"
  },
  NotifyINFOTitle = {
    fg = "#f2f2f2"
  },
  NotifyTRACEBody = {
    bg = "#161616",
    fg = "#d0d0d0"
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
    bg = "#161616",
    fg = "#d0d0d0"
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
    fg = "#82cfff"
  },
  NvimInternalError = {
    bg = "#3ddbd9",
    fg = "#161616"
  },
  NvimTreeEmptyFolderName = {
    fg = "#82cfff"
  },
  NvimTreeFolderIcon = {
    fg = "#ff7eb6"
  },
  NvimTreeFolderName = {
    fg = "#78a9ff"
  },
  NvimTreeGitDeleted = {
    fg = "#ee5396"
  },
  NvimTreeGitDirty = {
    fg = "#78a9ff"
  },
  NvimTreeGitNew = {
    fg = "#08bdba"
  },
  NvimTreeImageFile = {
    fg = "#ff7eb6"
  },
  NvimTreeIndentMarker = {
    fg = "#393939"
  },
  NvimTreeNormal = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  NvimTreeNormalNC = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  NvimTreeOpenedFile = {
    bg = "#262626"
  },
  NvimTreeOpenedFolderName = {
    fg = "#82cfff"
  },
  NvimTreeRootFolder = {
    bold = true,
    fg = "#78a9ff"
  },
  NvimTreeSpecialFile = {
    fg = "#be95ff",
    underline = true
  },
  NvimTreeSymlink = {
    fg = "#3ddbd9"
  },
  NvimTreeWinSeparator = {
    bg = "#161616",
    fg = "#161616"
  },
  OctoDetailsLabel = {
    bold = true,
    fg = "#3ddbd9"
  },
  OctoDetailsValue = "@variable.member",
  OctoDirty = {
    bold = true,
    fg = "#ff7eb6"
  },
  OctoIssueTitle = {
    bold = true,
    fg = "#be95ff"
  },
  OctoStateChangesRequested = "DiagnosticVirtualTextWarn",
  OctoStateClosed = "DiagnosticVirtualTextError",
  OctoStateMerged = {
    bg = "#27232d",
    fg = "#be95ff"
  },
  OctoStateOpen = "DiagnosticVirtualTextHint",
  OctoStatePending = "DiagnosticVirtualTextWarn",
  OctoStatusColumn = {
    fg = "#3ddbd9"
  },
  Operator = {
    fg = "#78a9ff"
  },
  Pmenu = {
    bg = "#262626",
    fg = "#d0d0d0"
  },
  PmenuMatch = {
    bg = "#262626",
    fg = "#3ddbd9"
  },
  PmenuMatchSel = {
    bg = "#393939",
    bold = true,
    fg = "#3ddbd9"
  },
  PmenuSbar = {
    bg = "#262626",
    fg = "#d0d0d0"
  },
  PmenuSel = {
    bg = "#393939",
    fg = "#3ddbd9"
  },
  PmenuThumb = {
    bg = "#393939",
    fg = "#3ddbd9"
  },
  PreProc = {
    fg = "#78a9ff"
  },
  Question = {
    fg = "#d0d0d0"
  },
  QuickFixLine = {
    bg = "#262626"
  },
  RainbowDelimiterBlue = {
    fg = "#78a9ff"
  },
  RainbowDelimiterCyan = {
    fg = "#3ddbd9"
  },
  RainbowDelimiterGreen = {
    fg = "#42be65"
  },
  RainbowDelimiterOrange = {
    fg = "#ff7eb6"
  },
  RainbowDelimiterRed = {
    fg = "#ee5396"
  },
  RainbowDelimiterViolet = {
    fg = "#be95ff"
  },
  RainbowDelimiterYellow = {
    fg = "#42be65"
  },
  ReferencesCount = {
    fg = "#be95ff"
  },
  ReferencesIcon = {
    fg = "#78a9ff"
  },
  RenderMarkdownBullet = {
    fg = "#ff7eb6"
  },
  RenderMarkdownCode = {
    bg = "#131313"
  },
  RenderMarkdownCodeInline = "@markup.raw.markdown_inline",
  RenderMarkdownDash = {
    fg = "#ff7eb6"
  },
  RenderMarkdownH1Bg = {
    bg = "#20252d"
  },
  RenderMarkdownH1Fg = {
    bold = true,
    fg = "#78a9ff"
  },
  RenderMarkdownH2Bg = {
    bg = "#1a2a2a"
  },
  RenderMarkdownH2Fg = {
    bold = true,
    fg = "#3ddbd9"
  },
  RenderMarkdownH3Bg = {
    bg = "#27232d"
  },
  RenderMarkdownH3Fg = {
    bold = true,
    fg = "#be95ff"
  },
  RenderMarkdownH4Bg = {
    bg = "#2d2026"
  },
  RenderMarkdownH4Fg = {
    bold = true,
    fg = "#ff7eb6"
  },
  RenderMarkdownH5Bg = {
    bg = "#1a271e"
  },
  RenderMarkdownH5Fg = {
    bold = true,
    fg = "#42be65"
  },
  RenderMarkdownH6Bg = {
    bg = "#21292d"
  },
  RenderMarkdownH6Fg = {
    bold = true,
    fg = "#82cfff"
  },
  RenderMarkdownH7Bg = {
    bg = "#152726"
  },
  RenderMarkdownH7Fg = {
    bold = true,
    fg = "#08bdba"
  },
  RenderMarkdownH8Bg = {
    bg = "#2c1c23"
  },
  RenderMarkdownH8Fg = {
    bold = true,
    fg = "#ee5396"
  },
  RenderMarkdownTableHead = {
    fg = "#ee5396"
  },
  RenderMarkdownTableRow = {
    fg = "#ff7eb6"
  },
  Repeat = {
    fg = "#78a9ff"
  },
  ScrollbarError = {
    bg = "NONE",
    fg = "#ee5396"
  },
  ScrollbarErrorHandle = {
    bg = "#262626",
    fg = "#ee5396"
  },
  ScrollbarHandle = {
    bg = "#262626",
    fg = "NONE"
  },
  ScrollbarHint = {
    bg = "NONE",
    fg = "#d0d0d0"
  },
  ScrollbarHintHandle = {
    bg = "#262626",
    fg = "#d0d0d0"
  },
  ScrollbarInfo = {
    bg = "NONE",
    fg = "#78a9ff"
  },
  ScrollbarInfoHandle = {
    bg = "#262626",
    fg = "#78a9ff"
  },
  ScrollbarMisc = {
    bg = "NONE",
    fg = "#be95ff"
  },
  ScrollbarMiscHandle = {
    bg = "#262626",
    fg = "#be95ff"
  },
  ScrollbarSearch = {
    bg = "NONE",
    fg = "#ff7eb6"
  },
  ScrollbarSearchHandle = {
    bg = "#262626",
    fg = "#ff7eb6"
  },
  ScrollbarWarn = {
    bg = "NONE",
    fg = "#be95ff"
  },
  ScrollbarWarnHandle = {
    bg = "#262626",
    fg = "#be95ff"
  },
  Search = {
    bg = "#3ddbd9",
    fg = "#262626"
  },
  SidekickDiffAdd = "DiffAdd",
  SidekickDiffContext = "DiffChange",
  SidekickDiffDelete = "DiffDelete",
  SidekickSignAdd = {
    fg = "#08bdba"
  },
  SidekickSignChange = {
    fg = "#78a9ff"
  },
  SidekickSignDelete = {
    fg = "#ee5396"
  },
  SignColumn = {
    bg = "#161616",
    fg = "#262626"
  },
  SignColumnSB = {
    bg = "#161616",
    fg = "#262626"
  },
  SnacksDashboardDesc = {
    fg = "#3ddbd9"
  },
  SnacksDashboardDir = "SnacksPickerDir",
  SnacksDashboardFooter = {
    fg = "#3ddbd9"
  },
  SnacksDashboardHeader = {
    fg = "#78a9ff"
  },
  SnacksDashboardIcon = {
    fg = "#3ddbd9"
  },
  SnacksDashboardKey = {
    fg = "#ff7eb6"
  },
  SnacksDashboardSpecial = {
    fg = "#be95ff"
  },
  SnacksDiffLabel = {
    bold = true,
    fg = "#3ddbd9"
  },
  SnacksFooterDesc = "SnacksProfilerBadgeInfo",
  SnacksFooterKey = "SnacksProfilerIconInfo",
  SnacksGhDiffHeader = {
    bg = "#1a2a2a",
    fg = "#3ddbd9"
  },
  SnacksGhLabel = {
    bold = true,
    fg = "#3ddbd9"
  },
  SnacksIndent = {
    fg = "#393939",
    nocombine = true
  },
  SnacksIndent1 = {
    fg = "#78a9ff",
    nocombine = true
  },
  SnacksIndent2 = {
    fg = "#3ddbd9",
    nocombine = true
  },
  SnacksIndent3 = {
    fg = "#be95ff",
    nocombine = true
  },
  SnacksIndent4 = {
    fg = "#ff7eb6",
    nocombine = true
  },
  SnacksIndent5 = {
    fg = "#42be65",
    nocombine = true
  },
  SnacksIndent6 = {
    fg = "#82cfff",
    nocombine = true
  },
  SnacksIndent7 = {
    fg = "#08bdba",
    nocombine = true
  },
  SnacksIndent8 = {
    fg = "#ee5396",
    nocombine = true
  },
  SnacksIndentScope = {
    fg = "#3ddbd9",
    nocombine = true
  },
  SnacksInputBorder = {
    fg = "#42be65"
  },
  SnacksInputIcon = {
    fg = "#3ddbd9"
  },
  SnacksInputTitle = {
    fg = "#42be65"
  },
  SnacksNotifierBorderDebug = {
    bg = "#161616",
    fg = "#2e2e2e"
  },
  SnacksNotifierBorderError = {
    bg = "#161616",
    fg = "#6c2e49"
  },
  SnacksNotifierBorderInfo = {
    bg = "#161616",
    fg = "#3d5173"
  },
  SnacksNotifierBorderTrace = {
    bg = "#161616",
    fg = "#594973"
  },
  SnacksNotifierBorderWarn = {
    bg = "#161616",
    fg = "#594973"
  },
  SnacksNotifierDebug = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  SnacksNotifierError = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  SnacksNotifierIconDebug = {
    fg = "#525252"
  },
  SnacksNotifierIconError = {
    fg = "#ee5396"
  },
  SnacksNotifierIconInfo = {
    fg = "#78a9ff"
  },
  SnacksNotifierIconTrace = {
    fg = "#be95ff"
  },
  SnacksNotifierIconWarn = {
    fg = "#be95ff"
  },
  SnacksNotifierInfo = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  SnacksNotifierTitleDebug = {
    fg = "#525252"
  },
  SnacksNotifierTitleError = {
    fg = "#ee5396"
  },
  SnacksNotifierTitleInfo = {
    fg = "#78a9ff"
  },
  SnacksNotifierTitleTrace = {
    fg = "#be95ff"
  },
  SnacksNotifierTitleWarn = {
    fg = "#be95ff"
  },
  SnacksNotifierTrace = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  SnacksNotifierWarn = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  SnacksPickerBoxTitle = {
    bg = "#131313",
    fg = "#ff7eb6"
  },
  SnacksPickerBufFlags = "SnacksPickerDir",
  SnacksPickerDir = {
    fg = "#525252"
  },
  SnacksPickerInputBorder = {
    bg = "#131313",
    fg = "#ff7eb6"
  },
  SnacksPickerInputTitle = {
    bg = "#131313",
    fg = "#ff7eb6"
  },
  SnacksPickerPathHidden = "SnacksPickerDir",
  SnacksPickerPathIgnored = "SnacksPickerDir",
  SnacksPickerPickWin = {
    bg = "#393939",
    bold = true,
    fg = "#d0d0d0"
  },
  SnacksPickerPickWinCurrent = {
    bg = "#ee5396",
    bold = true,
    fg = "#d0d0d0"
  },
  SnacksPickerSelected = {
    fg = "#ee5396"
  },
  SnacksPickerToggle = "SnacksProfilerBadgeInfo",
  SnacksPickerTotals = "SnacksPickerDir",
  SnacksPickerUnselected = "SnacksPickerDir",
  SnacksProfilerBadgeInfo = {
    bg = "#1a2a2a",
    fg = "#3ddbd9"
  },
  SnacksProfilerBadgeTrace = {
    bg = "#17181a",
    fg = "#525252"
  },
  SnacksProfilerIconInfo = {
    bg = "#225151",
    fg = "#3ddbd9"
  },
  SnacksProfilerIconTrace = {
    bg = "#1a1c21",
    fg = "#525252"
  },
  SnacksZenIcon = {
    fg = "#be95ff"
  },
  Sneak = {
    bg = "#be95ff",
    fg = "#262626"
  },
  SneakScope = {
    bg = "#393939"
  },
  Special = {
    fg = "#d0d0d0"
  },
  SpecialChar = {
    fg = "#d0d0d0"
  },
  SpecialComment = {
    fg = "#3ddbd9"
  },
  SpecialKey = {
    fg = "#525252"
  },
  SpellBad = {
    sp = "#ee5396",
    undercurl = true
  },
  SpellCap = {
    sp = "#be95ff",
    undercurl = true
  },
  SpellLocal = {
    sp = "#78a9ff",
    undercurl = true
  },
  SpellRare = {
    sp = "#d0d0d0",
    undercurl = true
  },
  Statement = {
    fg = "#78a9ff"
  },
  StatusCommand = {
    bg = "#42be65",
    fg = "#161616"
  },
  StatusInsert = {
    bg = "#ff7eb6",
    fg = "#161616"
  },
  StatusLine = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  StatusLineDiagnosticError = {
    bg = "#161616",
    bold = true,
    fg = "#ee5396"
  },
  StatusLineDiagnosticWarn = {
    bg = "#161616",
    bold = true,
    fg = "#be95ff"
  },
  StatusLineNC = {
    bg = "#262626",
    fg = "#d0d0d0"
  },
  StatusNormal = {
    bg = "#82cfff",
    fg = "#161616"
  },
  StatusReplace = {
    bg = "#3ddbd9",
    fg = "#161616"
  },
  StatusTerminal = {
    bg = "#33b1ff",
    fg = "#161616"
  },
  StatusVisual = {
    bg = "#be95ff",
    fg = "#161616"
  },
  StorageClass = {
    fg = "#78a9ff"
  },
  String = {
    fg = "#be95ff"
  },
  Structure = {
    fg = "#78a9ff"
  },
  Substitute = {
    bg = "#3ddbd9",
    fg = "#262626"
  },
  SupermavenSuggestion = {
    fg = "#525252"
  },
  TabLine = "StatusLineNC",
  TabLineFill = "TabLine",
  TabLineSel = "StatusLine",
  Tag = {
    fg = "#d0d0d0"
  },
  TargetWord = {
    fg = "#3ddbd9"
  },
  TelescopeBorder = {
    bg = "#131313",
    fg = "#131313"
  },
  TelescopeMatching = {
    bold = true,
    fg = "#3ddbd9",
    italic = true
  },
  TelescopeNormal = {
    bg = "#131313"
  },
  TelescopePreviewLine = {
    bg = "#262626"
  },
  TelescopePreviewTitle = {
    bg = "#ff7eb6",
    fg = "#393939"
  },
  TelescopePromptBorder = {
    bg = "#393939",
    fg = "#393939"
  },
  TelescopePromptNormal = {
    bg = "#393939",
    fg = "#f2f2f2"
  },
  TelescopePromptPrefix = {
    bg = "#393939",
    fg = "#3ddbd9"
  },
  TelescopePromptTitle = {
    bg = "#33b1ff",
    fg = "#393939"
  },
  TelescopeResultsComment = {
    fg = "#525252"
  },
  TelescopeResultsTitle = {
    bg = "#131313",
    fg = "#131313"
  },
  TelescopeSelection = {
    bg = "#393939"
  },
  TermCursor = "Cursor",
  TermCursorNC = "Cursor",
  Title = {
    fg = "#d0d0d0"
  },
  Todo = {
    fg = "#42be65"
  },
  TooLong = {
    bg = "#393939"
  },
  TreesitterContext = {
    bg = "#323232"
  },
  TroubleCount = {
    bg = "#393939",
    fg = "#be95ff"
  },
  TroubleNormal = {
    bg = "#161616",
    fg = "#d0d0d0"
  },
  TroubleText = {
    fg = "#d0d0d0"
  },
  Type = {
    fg = "#78a9ff"
  },
  Typedef = {
    fg = "#78a9ff"
  },
  Underlined = {
    underline = true
  },
  VertSplit = {
    bg = "#161616",
    fg = "#262626"
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
    fg = "#3ddbd9"
  },
  VimwikiTag = {
    fg = "#42be65"
  },
  Visual = {
    bg = "#393939"
  },
  VisualNOS = {
    bg = "#393939"
  },
  WarningMsg = {
    fg = "#be95ff"
  },
  WhichKey = {
    fg = "#3ddbd9"
  },
  WhichKeyDesc = {
    fg = "#be95ff"
  },
  WhichKeyGroup = {
    fg = "#78a9ff"
  },
  WhichKeyNormal = {
    bg = "#161616"
  },
  WhichKeySeparator = {
    fg = "#525252"
  },
  WhichKeyValue = {
    fg = "#adadad"
  },
  Whitespace = {
    fg = "#393939"
  },
  WildMenu = {
    bg = "#262626",
    fg = "#3ddbd9"
  },
  WinBar = "StatusLine",
  WinBarNC = "StatusLineNC",
  WinSeparator = {
    bg = "#161616",
    fg = "#262626"
  },
  YankyPut = "Search",
  YankyYanked = "IncSearch",
  alpha1 = {
    fg = "#525252"
  },
  alpha2 = {
    fg = "#d0d0d0"
  },
  alpha3 = {
    fg = "#525252"
  },
  asciidocAttributeEntry = {
    fg = "#82cfff"
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
    bg = "#20252d",
    fg = "#78a9ff"
  },
  debugPC = {
    bg = "#161616"
  },
  diffAdded = {
    fg = "#08bdba"
  },
  diffChanged = {
    fg = "#78a9ff"
  },
  diffFile = {
    fg = "#78a9ff"
  },
  diffIndexLine = {
    fg = "#be95ff"
  },
  diffLine = {
    fg = "#525252"
  },
  diffNewFile = {
    bg = "#122f2f",
    fg = "#08bdba"
  },
  diffOldFile = {
    bg = "#361c28",
    fg = "#ee5396"
  },
  diffRemoved = {
    fg = "#ee5396"
  },
  dosIniLabel = "@property",
  healthError = {
    fg = "#ee5396"
  },
  healthSuccess = {
    fg = "#42be65"
  },
  healthWarning = {
    fg = "#be95ff"
  },
  helpCommand = {
    bg = "#262626",
    fg = "#78a9ff"
  },
  helpExample = {
    fg = "#525252"
  },
  helpHeader = {
    fg = "#82cfff"
  },
  helpHeadline = {
    fg = "#ee5396"
  },
  helpHyperTextJump = {
    fg = "#3ddbd9"
  },
  helpSpecial = {
    fg = "#78a9ff"
  },
  htmlH1 = "markdownH1",
  htmlH2 = "markdownH1",
  illuminatedCurWord = {
    bg = "#393939"
  },
  illuminatedWord = {
    bg = "#393939"
  },
  lCursor = "Cursor",
  markdownBlockquote = {
    fg = "#3ddbd9"
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
    fg = "#ee5396"
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
    fg = "#3ddbd9"
  },
  markdownOrderedListMarker = {
    fg = "#3ddbd9"
  },
  markdownRule = "Comment",
  markdownUrl = "String",
  mkdListItem = "markdownListMarker",
  mkdListItemCheckbox = "markdownListMarker",
  mkdRule = "markdownRule",
  qfFileName = {
    fg = "#3ddbd9"
  },
  qfLineNr = {
    fg = "#adadad"
  }
}
