local Extra = require("oxocarbon.extra")
local Groups = require("oxocarbon.groups")

--- Error on any lookup of an undefined color, so typos and leftover
--- tokyonight keys fail loudly instead of silently dropping a highlight.
local function strict(t, path)
  for k, v in pairs(t) do
    if type(v) == "table" and not vim.islist(v) then
      strict(v, path .. "." .. k)
    end
  end
  return setmetatable(t, {
    __index = function(_, k)
      if type(k) ~= "number" then
        error(("undefined color `%s.%s`"):format(path, tostring(k)), 2)
      end
    end,
  })
end

local base = { "base", "kinds", "semantic_tokens", "treesitter" }

for _, style in ipairs({ "dark", "light" }) do
  describe(style, function()
    local opts, colors

    before_each(function()
      vim.o.background = style
      opts = require("oxocarbon.config").extend({ style = style, plugins = { all = true }, cache = false })
      colors = strict(require("oxocarbon.colors").setup(opts), "c")
    end)

    for _, name in ipairs(vim.list_extend(vim.deepcopy(base), vim.tbl_values(Groups.plugins))) do
      it("group " .. name .. " only uses defined colors", function()
        Groups.get(name, colors, opts)
      end)
    end

    -- highlight names are case-insensitive in Neovim
    it("has no case-insensitive duplicate groups", function()
      local seen = {}
      for name in pairs(Groups.setup(colors, opts)) do
        local key = name:lower()
        assert(not seen[key], ("%s duplicates %s"):format(name, seen[key]))
        seen[key] = name
      end
    end)

    it("has no link cycles", function()
      local groups = {}
      for name, hl in pairs(Groups.setup(colors, opts)) do
        groups[name:lower()] = type(hl) == "string" and hl:lower() or hl
      end
      for name in pairs(groups) do
        local seen, cur = {}, name
        while type(groups[cur]) == "string" do
          assert(not seen[cur], "link cycle at " .. name)
          seen[cur] = true
          cur = groups[cur]
        end
      end
    end)

    for extra in pairs(Extra.extras) do
      it("extra " .. extra .. " renders", function()
        local c, g, o = require("oxocarbon.theme").setup(opts)
        c._upstream_url, c._style_name, c._name, c._style = "url", "Oxocarbon", "oxocarbon_" .. style, style
        local out = require("oxocarbon.extra." .. extra).generate(strict(c, "c"), g, o)
        assert.is_nil(out:match("%${[^}]*}"))
      end)
    end
  end)
end
