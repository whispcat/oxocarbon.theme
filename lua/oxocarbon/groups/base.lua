local Util = require("oxocarbon.util")

local M = {}

---@type oxocarbon.HighlightsFn
function M.get(c, opts)
  local bg = opts.transparent and c.none or c.bg
  -- stylua: ignore
  return {
    Comment                     = { fg = c.comment, style = opts.styles.comments }, -- any comment
    ColorColumn                 = { bg = c.base01 }, -- used for the columns set with 'colorcolumn'
    Conceal                     = {}, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                      = { fg = c.base00, bg = c.base04 }, -- character under the cursor
    lCursor                     = "Cursor", -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM                    = "Cursor", -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn                = { bg = c.base01 }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
    CursorLine                  = { bg = c.base01 }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory                   = { fg = c.base08 }, -- directory names (and other special names in listings)
    DiffAdd                     = { bg = c.diff.add }, -- diff mode: Added line |diff.txt|
    DiffChange                  = { bg = c.diff.change }, -- diff mode: Changed line |diff.txt|
    DiffDelete                  = { bg = c.diff.delete }, -- diff mode: Deleted line |diff.txt|
    DiffText                    = { bg = c.diff.text }, -- diff mode: Changed text within a changed line |diff.txt|
    EndOfBuffer                 = { fg = c.base01 }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    ErrorMsg                    = { fg = c.error }, -- error messages on the command line
    VertSplit                   = { fg = c.border, bg = bg }, -- the column separating vertically split windows
    WinSeparator                = { fg = c.border, bg = bg }, -- the column separating vertically split windows
    Folded                      = { fg = c.base02, bg = c.base01 }, -- line used for closed folds
    FoldColumn                  = { fg = c.base01, bg = bg }, -- 'foldcolumn'
    SignColumn                  = { fg = c.base01, bg = bg }, -- column where |signs| are displayed
    SignColumnSB                = { fg = c.base01, bg = c.bg_sidebar }, -- column where |signs| are displayed
    Substitute                  = { fg = c.base01, bg = c.base08 }, -- |:substitute| replacement text highlighting
    LineNr                      = { fg = c.comment, bg = bg }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr                = { fg = c.base04 }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    LineNrAbove                 = "LineNr",
    LineNrBelow                 = "LineNr",
    MatchParen                  = { bg = c.base02, underline = true }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg                     = { fg = c.base04 }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea                     = { fg = c.base04 }, -- Area for messages and cmdline
    MoreMsg                     = { fg = c.base08 }, -- |more-prompt|
    NonText                     = { fg = c.base02 }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal                      = { fg = c.fg, bg = bg }, -- normal text
    NormalNC                    = { fg = c.fg, bg = opts.transparent and c.none or opts.dim_inactive and c.bg_dark or c.bg }, -- normal text in non-current windows
    NormalSB                    = { fg = c.fg_sidebar, bg = c.bg_sidebar }, -- normal text in sidebar
    NormalFloat                 = { fg = c.fg_float, bg = c.bg_float }, -- Normal text in floating windows.
    FloatBorder                 = { fg = c.bg_dark, bg = c.bg_float }, -- borderless floats, as in oxocarbon.nvim
    FloatTitle                  = { fg = c.base04, bg = c.bg_float },
    NvimInternalError           = { fg = c.base00, bg = c.base08 },
    Pmenu                       = { fg = c.base04, bg = c.base01 }, -- Popup menu: normal item.
    PmenuMatch                  = { fg = c.base08, bg = c.base01 }, -- Popup menu: Matched text in normal item.
    PmenuSel                    = { fg = c.base08, bg = c.base02 }, -- Popup menu: selected item.
    PmenuMatchSel               = { fg = c.base08, bg = c.base02, bold = true }, -- Popup menu: Matched text in selected item.
    PmenuSbar                   = { fg = c.base04, bg = c.base01 }, -- Popup menu: scrollbar.
    PmenuThumb                  = { fg = c.base08, bg = c.base02 }, -- Popup menu: Thumb of the scrollbar.
    Question                    = { fg = c.base04 }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine                = { bg = c.base01 }, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search                      = { fg = c.base01, bg = c.base08 }, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    IncSearch                   = { fg = c.base06, bg = c.base10 }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    CurSearch                   = { fg = c.base01, bg = c.base11 },
    SpecialKey                  = { fg = c.base03 }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad                    = { sp = c.error, undercurl = true }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
    SpellCap                    = { sp = c.warning, undercurl = true }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal                  = { sp = c.info, undercurl = true }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare                   = { sp = c.hint, undercurl = true }, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine                  = { fg = c.base04, bg = bg }, -- status line of current window
    StatusLineNC                = { fg = c.base04, bg = c.base01 }, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    StatusReplace               = { fg = c.base00, bg = c.base08 },
    StatusInsert                = { fg = c.base00, bg = c.base12 },
    StatusVisual                = { fg = c.base00, bg = c.base14 },
    StatusTerminal              = { fg = c.base00, bg = c.base11 },
    StatusNormal                = { fg = c.base00, bg = c.base15 },
    StatusCommand               = { fg = c.base00, bg = c.base13 },
    StatusLineDiagnosticWarn    = { fg = c.warning, bg = bg, bold = true },
    StatusLineDiagnosticError   = { fg = c.error, bg = bg, bold = true },
    TabLine                     = "StatusLineNC", -- tab pages line, not active tab page label
    TabLineFill                 = "TabLine", -- tab pages line, where there are no labels
    TabLineSel                  = "StatusLine", -- tab pages line, active tab page label
    TermCursor                  = "Cursor",
    TermCursorNC                = "Cursor",
    Title                       = { fg = c.base04 }, -- titles for output from ":set all", ":autocmd" etc.
    TooLong                     = { bg = c.base02 },
    Visual                      = { bg = c.bg_visual }, -- Visual mode selection
    VisualNOS                   = { bg = c.bg_visual }, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg                  = { fg = c.warning }, -- warning messages
    Whitespace                  = { fg = c.base02 }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu                    = { fg = c.base08, bg = c.base01 }, -- current match in 'wildmenu' completion
    WinBar                      = "StatusLine" , -- window bar
    WinBarNC                    = "StatusLineNC", -- window bar in inactive windows

    Bold                        = { bold = true }, -- (preferred) any bold text
    Boolean                     = { fg = c.base09 }, --  a boolean constant: TRUE, false
    Character                   = { fg = c.base14 }, --  a character constant: 'c', '\n'
    Conditional                 = { fg = c.base09 }, --  if, then, else, endif, switch, etc.
    Constant                    = { fg = c.base04 }, -- (preferred) any constant
    Debug                       = { fg = c.base13 }, --    debugging statements
    Decorator                   = { fg = c.base12 },
    Define                      = { fg = c.base09 }, --   preprocessor #define
    Delimiter                   = "Special", --  character that needs attention
    Error                       = { fg = c.error, bg = c.base01 }, -- (preferred) any erroneous construct
    Exception                   = { fg = c.base09 }, --  try, catch, throw
    Float                       = "Number", --    a floating point constant: 2.3e10
    Function                    = { fg = c.base08, style = opts.styles.functions }, -- function name (also: methods for classes)
    Identifier                  = { fg = c.base04, style = opts.styles.variables }, -- (preferred) any variable name
    Include                     = { fg = c.base09 }, --  preprocessor #include
    Italic                      = { italic = true }, -- (preferred) any italic text
    Keyword                     = { fg = c.base09, style = opts.styles.keywords }, --  any other keyword
    Label                       = { fg = c.base09 }, --  case, default, etc.
    Macro                       = { fg = c.base07 }, --    same as Define
    Number                      = { fg = c.base15 }, --   a number constant: 234, 0xff
    Operator                    = { fg = c.base09 }, -- "sizeof", "+", "*", etc.
    PreProc                     = { fg = c.base09 }, -- (preferred) generic Preprocessor
    Repeat                      = { fg = c.base09 }, --   for, do, while, etc.
    Special                     = { fg = c.base04 }, -- (preferred) any special symbol
    SpecialChar                 = { fg = c.base04 }, --  special character in a constant
    SpecialComment              = { fg = c.base08 }, -- special things inside a comment
    Statement                   = { fg = c.base09 }, -- (preferred) any statement
    StorageClass                = { fg = c.base09 }, -- static, register, volatile, etc.
    String                      = { fg = c.base14 }, --   a string constant: "this is a string"
    Structure                   = { fg = c.base09 }, --  struct, union, enum, etc.
    Tag                         = { fg = c.base04 }, --    you can use CTRL-] on this
    Todo                        = { fg = c.todo }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Type                        = { fg = c.base09 }, -- (preferred) int, long, char, etc.
    Typedef                     = { fg = c.base09 }, --  A typedef
    Underlined                  = { underline = true }, -- (preferred) text that stands out, HTML links
    debugBreakpoint             = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- used for breakpoint colors in terminal-debug
    debugPC                     = { bg = c.bg_sidebar }, -- used for highlighting the current line in terminal-debug
    dosIniLabel                 = "@property",
    helpCommand                 = { fg = c.base09, bg = c.base01 },
    helpExample                 = { fg = c.comment },
    helpHeader                  = { fg = c.base15 },
    helpHeadline                = { fg = c.base10 },
    helpHyperTextJump           = { fg = c.base08 },
    helpSpecial                 = { fg = c.base09 },
    htmlH1                      = "markdownH1",
    htmlH2                      = "markdownH1",
    qfFileName                  = { fg = c.base08 },
    qfLineNr                    = { fg = c.dark5 },

    -- markdown (vim syntax)
    markdownBlockquote          = { fg = c.base08 },
    markdownBold                = "Bold",
    markdownItalic              = "Italic",
    markdownBoldItalic          = { bold = true, italic = true },
    markdownRule                = "Comment",
    markdownH1                  = { fg = c.base10 },
    markdownH2                  = "markdownH1",
    markdownH3                  = "markdownH1",
    markdownH4                  = "markdownH1",
    markdownH5                  = "markdownH1",
    markdownH6                  = "markdownH1",
    markdownHeadingDelimiter    = "markdownH1",
    markdownHeadingRule         = "markdownH1",
    markdownUrl                 = "String",
    markdownCode                = "String",
    markdownCodeBlock           = "markdownCode",
    markdownCodeDelimiter       = "markdownCode",
    markdownListMarker          = { fg = c.base08 },
    markdownOrderedListMarker   = { fg = c.base08 },
    mkdRule                     = "markdownRule",
    mkdListItem                 = "markdownListMarker",
    mkdListItemCheckbox         = "markdownListMarker",

    -- asciidoc
    asciidocAttributeEntry      = { fg = c.base15 },
    asciidocAttributeList       = "asciidocAttributeEntry",
    asciidocAttributeRef        = "asciidocAttributeEntry",
    asciidocHLabel              = "markdownH1",
    asciidocOneLineTitle        = "markdownH1",
    asciidocQuotedMonospaced    = "markdownBlockquote",
    asciidocURL                 = "markdownUrl",

    -- csv/tsv: a ramp of IBM Carbon grays, as in oxocarbon.nvim
    csvCol0                     = { fg = "#878d96" },
    csvCol1                     = { fg = "#a8a8a8" },
    csvCol2                     = { fg = "#8d8d8d" },
    csvCol3                     = { fg = "#a2a9b0" },
    csvCol4                     = { fg = "#8f8b8b" },
    csvCol5                     = { fg = "#ada8a8" },
    csvCol6                     = { fg = "#878d96" },
    csvCol7                     = { fg = "#a8a8a8" },
    csvCol8                     = { fg = "#8d8d8d" },

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own.
    LspReferenceText            = { bg = c.base03 }, -- used for highlighting "text" references
    LspReferenceRead            = { bg = c.base03 }, -- used for highlighting "read" references
    LspReferenceWrite           = { bg = c.base03 }, -- used for highlighting "write" references
    LspSignatureActiveParameter = { fg = c.base08 },
    LspCodeLens                 = { bg = c.base03 },
    LspInlayHint                = { fg = c.dark3, bg = c.base01 },
    LspInfoBorder               = { fg = c.border_highlight, bg = c.bg_float },
    ComplHint                   = { fg = c.terminal_black },

    -- diagnostics
    DiagnosticError             = { fg = c.error }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticWarn              = { fg = c.warning }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticInfo              = { fg = c.info }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticHint              = { fg = c.hint }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticOk                = { fg = c.base13 },
    DiagnosticUnnecessary       = { fg = c.comment }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
    DiagnosticVirtualTextError  = { bg = Util.blend_bg(c.error, 0.1), fg = c.error }, -- Used for "Error" diagnostic virtual text
    DiagnosticVirtualTextWarn   = { bg = Util.blend_bg(c.warning, 0.1), fg = c.warning }, -- Used for "Warning" diagnostic virtual text
    DiagnosticVirtualTextInfo   = { bg = Util.blend_bg(c.info, 0.1), fg = c.info }, -- Used for "Information" diagnostic virtual text
    DiagnosticVirtualTextHint   = { bg = Util.blend_bg(c.hint, 0.1), fg = c.hint }, -- Used for "Hint" diagnostic virtual text
    DiagnosticUnderlineError    = { undercurl = true, sp = c.error }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn     = { undercurl = true, sp = c.warning }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo     = { undercurl = true, sp = c.base04 }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint     = { undercurl = true, sp = c.hint }, -- Used to underline "Hint" diagnostics

    -- Health
    healthError                 = { fg = c.error },
    healthSuccess               = { fg = c.base13 },
    healthWarning               = { fg = c.warning },

    -- diff
    diffAdded                   = { fg = c.git.add },
    diffRemoved                 = { fg = c.git.delete },
    diffChanged                 = { fg = c.git.change },
    diffOldFile                 = { fg = c.base10, bg = c.diff.delete },
    diffNewFile                 = { fg = c.base07, bg = c.diff.add },
    diffFile                    = { fg = c.base09 },
    diffLine                    = { fg = c.comment },
    diffIndexLine               = { fg = c.base14 },
  }
end

return M
