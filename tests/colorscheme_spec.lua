local Config = require("oxocarbon.config")

before_each(function()
  vim.o.background = "dark"
  vim.cmd.colorscheme("default")
  Config.setup({ cache = false })
end)

it("did proper init", function()
  assert.same("default", vim.g.colors_name)
  assert.same("dark", vim.o.background)
end)

describe("loading respects vim.o.background", function()
  it("= dark", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("oxocarbon")
    assert.same("dark", vim.o.background)
    assert.same("oxocarbon-dark", vim.g.colors_name)
  end)

  it("= light", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("oxocarbon")
    assert.same("light", vim.o.background)
    assert.same("oxocarbon-light", vim.g.colors_name)
  end)

  it("= dark with light", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("oxocarbon-light")
    assert.same("light", vim.o.background)
    assert.same("oxocarbon-light", vim.g.colors_name)
  end)

  it("= light with dark", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("oxocarbon-dark")
    assert.same("dark", vim.o.background)
    assert.same("oxocarbon-dark", vim.g.colors_name)
  end)

  it("and switches to light", function()
    vim.o.background = "dark"
    vim.cmd.colorscheme("oxocarbon-dark")
    vim.o.background = "light"
    assert.same("light", vim.o.background)
    assert.same("oxocarbon-light", vim.g.colors_name)
  end)

  it("and switches back to dark", function()
    vim.o.background = "light"
    vim.cmd.colorscheme("oxocarbon")
    vim.o.background = "dark"
    assert.same("dark", vim.o.background)
    assert.same("oxocarbon-dark", vim.g.colors_name)
  end)
end)

describe("palette", function()
  it("matches oxocarbon.nvim", function()
    vim.cmd.colorscheme("oxocarbon-dark")
    local normal = vim.api.nvim_get_hl(0, { name = "Normal" })
    assert.same(0xd0d0d0, normal.fg)
    assert.same(0x161616, normal.bg)
    assert.same("#33b1ff", vim.g.terminal_color_1)
  end)

  it("respects transparent", function()
    Config.setup({ cache = false, transparent = true })
    vim.cmd.colorscheme("oxocarbon-dark")
    assert.is_nil(vim.api.nvim_get_hl(0, { name = "Normal" }).bg)
  end)
end)
