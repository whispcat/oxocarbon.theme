local Util = require("oxocarbon.util")

local M = {}

-- zed syntax capture -> neovim highlight group
-- stylua: ignore
M.syntax = {
  ["attribute"]               = "@attribute",
  ["boolean"]                 = "@boolean",
  ["comment"]                 = "@comment",
  ["comment.doc"]             = "@comment",
  ["constant"]                = "@constant",
  ["constructor"]             = "@constructor",
  ["diff.minus"]              = "diffRemoved",
  ["diff.plus"]               = "diffAdded",
  ["embedded"]                = "@variable",
  ["emphasis"]                = "@markup.italic",
  ["emphasis.strong"]         = "@markup.strong",
  ["enum"]                    = "@lsp.type.enum",
  ["function"]                = "@function",
  ["hint"]                    = "LspInlayHint",
  ["keyword"]                 = "@keyword",
  ["label"]                   = "@label",
  ["link_text"]               = "@markup.link.description",
  ["link_uri"]                = "@markup.link.url",
  ["namespace"]               = "@module",
  ["number"]                  = "@number",
  ["operator"]                = "@operator",
  ["predictive"]              = "Comment",
  ["preproc"]                 = "PreProc",
  ["primary"]                 = "@variable",
  ["property"]                = "@property",
  ["punctuation"]             = "@punctuation.delimiter",
  ["punctuation.bracket"]     = "@punctuation.bracket",
  ["punctuation.delimiter"]   = "@punctuation.delimiter",
  ["punctuation.list_marker"] = "@markup.list",
  ["punctuation.markup"]      = "@markup.heading.marker",
  ["punctuation.special"]     = "@punctuation.special",
  ["selector"]                = "@tag",
  ["selector.pseudo"]         = "@attribute",
  ["string"]                  = "@string",
  ["string.escape"]           = "@string.escape",
  ["string.regex"]            = "@string.regexp",
  ["string.special"]          = "@character.special",
  ["string.special.symbol"]   = "@string.special.symbol",
  ["tag"]                     = "@tag",
  ["text.literal"]            = "@markup.raw",
  ["title"]                   = "markdownH1",
  ["type"]                    = "@type",
  ["variable"]                = "@variable",
  ["variable.parameter"]      = "@variable.parameter",
  ["variable.special"]        = "@variable.builtin",
  ["variant"]                 = "@lsp.type.enumMember",
}

--- Follow links (case-insensitively, like Neovim) to the final highlight.
---@param groups oxocarbon.Highlights
local function resolver(groups)
  local lower = {}
  for name, hl in pairs(groups) do
    lower[name:lower()] = hl
  end
  return function(name)
    local hl = lower[name:lower()]
    while type(hl) == "string" do
      hl = lower[hl:lower()]
    end
    return assert(hl, "unknown highlight group " .. name)
  end
end

--- JSON with sorted keys, so regenerated files only change when colors do.
local function encode(value, indent)
  indent = indent or ""
  local inner = indent .. "  "
  if type(value) ~= "table" then
    return vim.json.encode(value)
  end
  local items = {}
  if vim.islist(value) then
    for _, v in ipairs(value) do
      items[#items + 1] = inner .. encode(v, inner)
    end
    return #items == 0 and "[]" or "[\n" .. table.concat(items, ",\n") .. "\n" .. indent .. "]"
  end
  local keys = vim.tbl_keys(value)
  table.sort(keys)
  for _, k in ipairs(keys) do
    items[#items + 1] = inner .. vim.json.encode(k) .. ": " .. encode(value[k], inner)
  end
  return #items == 0 and "{}" or "{\n" .. table.concat(items, ",\n") .. "\n" .. indent .. "}"
end

---@param color string
---@param a number opacity between 0 and 1
local function alpha(color, a)
  return ("%s%02x"):format(color, math.floor(a * 255 + 0.5))
end

--- @param colors ColorScheme
--- @param groups oxocarbon.Highlights
function M.generate(colors, groups)
  local hl = resolver(groups)
  local c = colors
  local transparent = "#00000000"

  local syntax = {}
  for capture, group in pairs(M.syntax) do
    local h = hl(group)
    syntax[capture] = {
      color = h.fg,
      font_style = h.italic and "italic" or vim.NIL,
      font_weight = h.bold and 700 or vim.NIL,
    }
  end

  -- player 1 is the local cursor; the rest color collaborators
  local players = { { cursor = hl("Cursor").bg, background = hl("Cursor").bg, selection = hl("Visual").bg } }
  for _, color in ipairs({ c.base09, c.base12, c.base13, c.base14, c.base08, c.base10, c.base15 }) do
    players[#players + 1] = { cursor = color, background = color, selection = alpha(color, 0.24) }
  end

  ---@param style table<string, any>
  ---@param name string
  ---@param color string
  local function status(style, name, color)
    style[name] = color
    style[name .. ".background"] = Util.blend_bg(color, 0.1)
    style[name .. ".border"] = Util.blend_bg(color, 0.4)
  end

  local t = c.terminal
  -- stylua: ignore
  local style = {
    ["accents"]                                    = c.rainbow,
    ["background"]                                 = c.bg_dark,
    ["background.appearance"]                      = "opaque",
    ["border"]                                     = c.border,
    ["border.disabled"]                            = c.base02,
    ["border.focused"]                             = c.blue,
    ["border.selected"]                            = c.blue,
    ["border.transparent"]                         = transparent,
    ["border.variant"]                             = c.border,
    ["drop_target.background"]                     = alpha(c.blue, 0.2),
    ["editor.active_line.background"]              = hl("CursorLine").bg,
    ["editor.active_line_number"]                  = hl("CursorLineNr").fg,
    ["editor.active_wrap_guide"]                   = c.base02,
    ["editor.background"]                          = hl("Normal").bg,
    ["editor.document_highlight.bracket_background"] = alpha(hl("MatchParen").bg, 0.8),
    ["editor.document_highlight.read_background"]  = alpha(hl("LspReferenceRead").bg, 0.6),
    ["editor.document_highlight.write_background"] = alpha(hl("LspReferenceWrite").bg, 0.8),
    ["editor.foreground"]                          = hl("Normal").fg,
    ["editor.gutter.background"]                   = hl("Normal").bg,
    ["editor.highlighted_line.background"]         = hl("CursorLine").bg,
    ["editor.hover_line_number"]                   = c.dark5,
    ["editor.indent_guide"]                        = c.base01,
    ["editor.indent_guide_active"]                 = c.base02,
    ["editor.invisible"]                           = hl("Whitespace").fg,
    ["editor.line_number"]                         = hl("LineNr").fg,
    ["editor.subheader.background"]                = c.bg_dark,
    ["editor.wrap_guide"]                          = hl("ColorColumn").bg,
    ["element.active"]                             = c.base02,
    ["element.background"]                         = c.base01,
    ["element.disabled"]                           = c.base01,
    ["element.hover"]                              = c.base02,
    ["element.selected"]                           = c.base02,
    ["elevated_surface.background"]                = hl("Pmenu").bg,
    ["ghost_element.active"]                       = c.base02,
    ["ghost_element.background"]                   = transparent,
    ["ghost_element.disabled"]                     = transparent,
    ["ghost_element.hover"]                        = c.base01,
    ["ghost_element.selected"]                     = c.base02,
    ["icon"]                                       = c.fg,
    ["icon.accent"]                                = c.blue,
    ["icon.disabled"]                              = c.comment,
    ["icon.muted"]                                 = c.dark5,
    ["icon.placeholder"]                           = c.comment,
    ["link_text.hover"]                            = hl("markdownUrl").fg,
    ["pane.focused_border"]                        = c.base02,
    ["pane_group.border"]                          = c.border,
    ["panel.background"]                           = c.bg_dark,
    ["panel.focused_border"]                       = c.blue,
    ["panel.indent_guide"]                         = c.base01,
    ["panel.indent_guide_active"]                  = c.base03,
    ["panel.indent_guide_hover"]                   = c.base02,
    ["players"]                                    = players,
    ["scrollbar.thumb.background"]                 = alpha(hl("PmenuThumb").bg, 0.8),
    ["scrollbar.thumb.border"]                     = transparent,
    ["scrollbar.thumb.hover_background"]           = c.base03,
    ["scrollbar.track.background"]                 = transparent,
    ["scrollbar.track.border"]                     = transparent,
    ["search.active_match_background"]             = alpha(hl("CurSearch").bg, 0.5),
    ["search.match_background"]                    = alpha(hl("Search").bg, 0.35),
    ["status_bar.background"]                      = c.bg_dark,
    ["surface.background"]                         = c.bg_dark,
    ["syntax"]                                     = syntax,
    ["tab.active_background"]                      = hl("Normal").bg,
    ["tab.inactive_background"]                    = c.bg_dark,
    ["tab_bar.background"]                         = c.bg_dark,
    ["terminal.ansi.background"]                   = c.bg,
    ["terminal.background"]                        = c.bg,
    ["terminal.bright_foreground"]                 = t.white_bright,
    ["terminal.dim_foreground"]                    = c.comment,
    ["terminal.foreground"]                        = c.fg,
    ["text"]                                       = c.fg,
    ["text.accent"]                                = c.blue,
    ["text.disabled"]                              = c.comment,
    ["text.muted"]                                 = c.dark5,
    ["text.placeholder"]                           = c.comment,
    ["title_bar.background"]                       = c.bg_dark,
    ["title_bar.inactive_background"]              = c.bg_dark,
    ["toolbar.background"]                         = hl("Normal").bg,
    ["version_control.added"]                      = c.git.add,
    ["version_control.conflict_marker.ours"]       = alpha(c.git.add, 0.15),
    ["version_control.conflict_marker.theirs"]     = alpha(c.git.change, 0.15),
    ["version_control.deleted"]                    = c.git.delete,
    ["version_control.modified"]                   = c.git.change,
    ["version_control.word_added"]                 = alpha(c.git.add, 0.3),
    ["version_control.word_deleted"]               = alpha(c.git.delete, 0.3),
  }

  for _, name in ipairs({ "black", "red", "green", "yellow", "blue", "magenta", "cyan", "white" }) do
    style["terminal.ansi." .. name] = t[name]
    style["terminal.ansi.bright_" .. name] = t[name .. "_bright"]
    style["terminal.ansi.dim_" .. name] = Util.blend_bg(t[name], 0.7)
  end

  status(style, "error", c.error)
  status(style, "warning", c.warning)
  status(style, "info", c.info)
  status(style, "hint", c.hint)
  status(style, "success", c.base13)
  status(style, "created", c.git.add)
  status(style, "modified", c.git.change)
  status(style, "deleted", c.git.delete)
  status(style, "renamed", c.base15)
  status(style, "conflict", c.base12)
  status(style, "ignored", c.comment)
  status(style, "hidden", c.comment)
  status(style, "unreachable", c.comment)
  status(style, "predictive", c.comment)

  return encode({
    ["$schema"] = "https://zed.dev/schema/themes/v0.2.0.json",
    name = colors._style_name,
    author = "whispcat",
    themes = {
      {
        name = colors._style_name,
        appearance = colors._style,
        style = style,
      },
    },
  }) .. "\n"
end

return M
