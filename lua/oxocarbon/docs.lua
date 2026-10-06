local Docs = require("lazy.docs")
local Groups = require("oxocarbon.groups")

local M = {}

local function link(name, url)
  return "[" .. name .. "](" .. url .. ")"
end

function M.row(t)
  return "| " .. table.concat(t, " | ") .. " |"
end

---@param t string[][]
function M.table(t)
  local header = table.remove(t, 1)
  local lines = {} ---@type string[]
  lines[#lines + 1] = M.row(header)
  lines[#lines + 1] = M.row(vim.tbl_map(function()
    return "---"
  end, header))
  for _, row in ipairs(t) do
    lines[#lines + 1] = M.row(row)
  end
  return table.concat(lines, "\n")
end

function M.extras()
  local Extra = require("oxocarbon.extra")
  local names = vim.tbl_keys(Extra.extras) ---@type string[]
  table.sort(names)
  local t = {
    { "Tool", "Extra" },
  }
  for _, name in ipairs(names) do
    local info = Extra.extras[name]
    t[#t + 1] = { link(info.label, info.url), link("extras/" .. name, "extras/" .. name) }
  end
  return M.table(t)
end

---@param root string path from the generated doc back to the repo root
function M.plugins(root)
  local t = {
    { "Plugin", "Source" },
  }
  local names = vim.tbl_values(Groups.plugins) ---@type string[]
  table.sort(names)
  for _, name in ipairs(names) do
    local group = Groups.get_group(name)
    local repo = group.url:match("[^/]*$")
    t[#t + 1] = {
      link(repo, group.url),
      link(("`%s`"):format(name), root .. "lua/oxocarbon/groups/" .. name .. ".lua"),
    }
  end
  return M.table(t)
end

function M.palette()
  local Colors = require("oxocarbon.colors")
  local dark, light = Colors.styles.dark, Colors.styles.light
  local function swatch(hex)
    return ("![%s](https://placehold.co/12x12/%s/%s.png) `%s`"):format(hex, hex:sub(2), hex:sub(2), hex)
  end
  local t = {
    { "Slot", "Dark", "Light" },
  }
  for i = 0, 15 do
    local slot = ("base%02d"):format(i)
    t[#t + 1] = { "`" .. slot .. "`", swatch(dark[slot]), swatch(light[slot]) }
  end
  t[#t + 1] = { "`blend`", swatch(dark.blend), swatch(light.blend) }
  return M.table(t)
end

function M.update()
  local config = Docs.extract("lua/oxocarbon/config.lua", "\n(--@class oxocarbon%.Config.-\n})")
  config = config:gsub("%s*debug = false.\n", "\n")
  Docs.save({
    extras = { content = M.extras() },
    palette = { content = M.palette() },
  })
  Docs.save({
    config = config,
    plugins = { content = M.plugins("../") },
  }, "docs/neovim.md")
end

M.update()
print("Docs updated")

return M
