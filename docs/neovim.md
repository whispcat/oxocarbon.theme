# Oxocarbon for Neovim

The Neovim colorscheme in [oxocarbon.theme](../README.md). It ports
[oxocarbon.nvim](https://github.com/nyoom-engineering/oxocarbon.nvim) to the plugin
structure of [tokyonight.nvim](https://github.com/folke/tokyonight.nvim). The
[ports for other tools](../README.md#ports) are generated from its colors and
highlight groups.

<table width="100%">
  <tr>
    <th>Dark</th>
    <th>Light</th>
  </tr>
  <tr>
    <td width="50%"><img src="../.github/assets/dark.png" alt="oxocarbon-dark" /></td>
    <td width="50%"><img src="../.github/assets/light.png" alt="oxocarbon-light" /></td>
  </tr>
</table>

## Features

- oxocarbon.nvim's palette and highlight choices, with Treesitter captures renamed
  to their current names (`@markup.*`, `@function.method`, `@variable.member`, …).
- Two styles, `dark` and `light`, that follow `vim.o.background`.
- Highlights for 68 plugins. With [lazy.nvim](https://github.com/folke/lazy.nvim),
  only the ones you have installed are loaded.
- Highlight groups are cached, so startup stays fast.
- Sets the `:terminal` colors to match.

<details>
<summary>Supported plugins</summary>

<!-- plugins:start -->

| Plugin | Source |
| --- | --- |
| [aerial.nvim](https://github.com/stevearc/aerial.nvim) | [`aerial`](../lua/oxocarbon/groups/aerial.lua) |
| [ale](https://github.com/dense-analysis/ale) | [`ale`](../lua/oxocarbon/groups/ale.lua) |
| [alpha-nvim](https://github.com/goolord/alpha-nvim) | [`alpha`](../lua/oxocarbon/groups/alpha.lua) |
| [barbar.nvim](https://github.com/romgrk/barbar.nvim) | [`barbar`](../lua/oxocarbon/groups/barbar.lua) |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | [`blink`](../lua/oxocarbon/groups/blink.lua) |
| [bufferline.nvim](https://github.com/akinsho/bufferline.nvim) | [`bufferline`](../lua/oxocarbon/groups/bufferline.lua) |
| [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) | [`cmp`](../lua/oxocarbon/groups/cmp.lua) |
| [codeium.nvim](https://github.com/Exafunction/codeium.nvim) | [`codeium`](../lua/oxocarbon/groups/codeium.lua) |
| [copilot.lua](https://github.com/zbirenbaum/copilot.lua) | [`copilot`](../lua/oxocarbon/groups/copilot.lua) |
| [nvim-dap](https://github.com/mfussenegger/nvim-dap) | [`dap`](../lua/oxocarbon/groups/dap.lua) |
| [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim) | [`dashboard`](../lua/oxocarbon/groups/dashboard.lua) |
| [flash.nvim](https://github.com/folke/flash.nvim) | [`flash`](../lua/oxocarbon/groups/flash.lua) |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | [`fzf`](../lua/oxocarbon/groups/fzf.lua) |
| [vim-gitgutter](https://github.com/airblade/vim-gitgutter) | [`gitgutter`](../lua/oxocarbon/groups/gitgutter.lua) |
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | [`gitsigns`](../lua/oxocarbon/groups/gitsigns.lua) |
| [glyph-palette.vim](https://github.com/lambdalisue/glyph-palette.vim) | [`glyph-palette`](../lua/oxocarbon/groups/glyph-palette.lua) |
| [grug-far.nvim](https://github.com/MagicDuck/grug-far.nvim) | [`grug-far`](../lua/oxocarbon/groups/grug-far.lua) |
| [headlines.nvim](https://github.com/lukas-reineke/headlines.nvim) | [`headlines`](../lua/oxocarbon/groups/headlines.lua) |
| [hop.nvim](https://github.com/phaazon/hop.nvim) | [`hop`](../lua/oxocarbon/groups/hop.lua) |
| [hydra.nvim](https://github.com/nvimtools/hydra.nvim) | [`hydra`](../lua/oxocarbon/groups/hydra.lua) |
| [vim-illuminate](https://github.com/RRethy/vim-illuminate) | [`illuminate`](../lua/oxocarbon/groups/illuminate.lua) |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | [`indent-blankline`](../lua/oxocarbon/groups/indent-blankline.lua) |
| [indentmini.nvim](https://github.com/nvimdev/indentmini.nvim) | [`indentmini`](../lua/oxocarbon/groups/indentmini.lua) |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | [`lazy`](../lua/oxocarbon/groups/lazy.lua) |
| [leap.nvim](https://github.com/ggandor/leap.nvim) | [`leap`](../lua/oxocarbon/groups/leap.lua) |
| [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) | [`lspsaga`](../lua/oxocarbon/groups/lspsaga.lua) |
| [mini.animate](https://github.com/echasnovski/mini.animate) | [`mini_animate`](../lua/oxocarbon/groups/mini_animate.lua) |
| [mini.clue](https://github.com/echasnovski/mini.clue) | [`mini_clue`](../lua/oxocarbon/groups/mini_clue.lua) |
| [mini.completion](https://github.com/echasnovski/mini.completion) | [`mini_completion`](../lua/oxocarbon/groups/mini_completion.lua) |
| [mini.cursorword](https://github.com/echasnovski/mini.cursorword) | [`mini_cursorword`](../lua/oxocarbon/groups/mini_cursorword.lua) |
| [mini.deps](https://github.com/echasnovski/mini.deps) | [`mini_deps`](../lua/oxocarbon/groups/mini_deps.lua) |
| [mini.diff](https://github.com/echasnovski/mini.diff) | [`mini_diff`](../lua/oxocarbon/groups/mini_diff.lua) |
| [mini.files](https://github.com/echasnovski/mini.files) | [`mini_files`](../lua/oxocarbon/groups/mini_files.lua) |
| [mini.hipatterns](https://github.com/echasnovski/mini.hipatterns) | [`mini_hipatterns`](../lua/oxocarbon/groups/mini_hipatterns.lua) |
| [mini.icons](https://github.com/echasnovski/mini.icons) | [`mini_icons`](../lua/oxocarbon/groups/mini_icons.lua) |
| [mini.indentscope](https://github.com/echasnovski/mini.indentscope) | [`mini_indentscope`](../lua/oxocarbon/groups/mini_indentscope.lua) |
| [mini.jump](https://github.com/echasnovski/mini.jump) | [`mini_jump`](../lua/oxocarbon/groups/mini_jump.lua) |
| [mini.map](https://github.com/echasnovski/mini.map) | [`mini_map`](../lua/oxocarbon/groups/mini_map.lua) |
| [mini.notify](https://github.com/echasnovski/mini.notify) | [`mini_notify`](../lua/oxocarbon/groups/mini_notify.lua) |
| [mini.operators](https://github.com/echasnovski/mini.operators) | [`mini_operators`](../lua/oxocarbon/groups/mini_operators.lua) |
| [mini.pick](https://github.com/echasnovski/mini.pick) | [`mini_pick`](../lua/oxocarbon/groups/mini_pick.lua) |
| [mini.starter](https://github.com/echasnovski/mini.starter) | [`mini_starter`](../lua/oxocarbon/groups/mini_starter.lua) |
| [mini.statusline](https://github.com/echasnovski/mini.statusline) | [`mini_statusline`](../lua/oxocarbon/groups/mini_statusline.lua) |
| [mini.surround](https://github.com/echasnovski/mini.surround) | [`mini_surround`](../lua/oxocarbon/groups/mini_surround.lua) |
| [mini.tabline](https://github.com/echasnovski/mini.tabline) | [`mini_tabline`](../lua/oxocarbon/groups/mini_tabline.lua) |
| [mini.test](https://github.com/echasnovski/mini.test) | [`mini_test`](../lua/oxocarbon/groups/mini_test.lua) |
| [mini.trailspace](https://github.com/echasnovski/mini.trailspace) | [`mini_trailspace`](../lua/oxocarbon/groups/mini_trailspace.lua) |
| [nvim-navic](https://github.com/SmiteshP/nvim-navic) | [`navic`](../lua/oxocarbon/groups/navic.lua) |
| [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim) | [`neo-tree`](../lua/oxocarbon/groups/neo-tree.lua) |
| [neogit](https://github.com/TimUntersberger/neogit) | [`neogit`](../lua/oxocarbon/groups/neogit.lua) |
| [neotest](https://github.com/nvim-neotest/neotest) | [`neotest`](../lua/oxocarbon/groups/neotest.lua) |
| [noice.nvim](https://github.com/folke/noice.nvim) | [`noice`](../lua/oxocarbon/groups/noice.lua) |
| [nvim-notify](https://github.com/rcarriga/nvim-notify) | [`notify`](../lua/oxocarbon/groups/notify.lua) |
| [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua) | [`nvim-tree`](../lua/oxocarbon/groups/nvim-tree.lua) |
| [octo.nvim](https://github.com/pwntester/octo.nvim) | [`octo`](../lua/oxocarbon/groups/octo.lua) |
| [rainbow-delimiters.nvim](https://github.com/HiPhish/rainbow-delimiters.nvim) | [`rainbow`](../lua/oxocarbon/groups/rainbow.lua) |
| [render-markdown.nvim](https://github.com/MeanderingProgrammer/render-markdown.nvim) | [`render-markdown`](../lua/oxocarbon/groups/render-markdown.lua) |
| [nvim-scrollbar](https://github.com/petertriho/nvim-scrollbar) | [`scrollbar`](../lua/oxocarbon/groups/scrollbar.lua) |
| [sidekick.nvim](https://github.com/folke/sidekick.nvim) | [`sidekick`](../lua/oxocarbon/groups/sidekick.lua) |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | [`snacks`](../lua/oxocarbon/groups/snacks.lua) |
| [vim-sneak](https://github.com/justinmk/vim-sneak) | [`sneak`](../lua/oxocarbon/groups/sneak.lua) |
| [supermaven-nvim](https://github.com/supermaven-inc/supermaven-nvim) | [`supermaven`](../lua/oxocarbon/groups/supermaven.lua) |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | [`telescope`](../lua/oxocarbon/groups/telescope.lua) |
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | [`treesitter-context`](../lua/oxocarbon/groups/treesitter-context.lua) |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | [`trouble`](../lua/oxocarbon/groups/trouble.lua) |
| [vimwiki](https://github.com/vimwiki/vimwiki) | [`vimwiki`](../lua/oxocarbon/groups/vimwiki.lua) |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | [`which-key`](../lua/oxocarbon/groups/which-key.lua) |
| [yanky.nvim](https://github.com/gbprod/yanky.nvim) | [`yanky`](../lua/oxocarbon/groups/yanky.lua) |

<!-- plugins:end -->

</details>

## Requirements

- [Neovim](https://github.com/neovim/neovim) >= 0.10

## Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "whispcat/oxocarbon.theme",
  main = "oxocarbon",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

With `vim.pack` (Neovim >= 0.12):

```lua
vim.pack.add({ "https://github.com/whispcat/oxocarbon.theme" })
```

> [!NOTE]
> This plugin uses the `oxocarbon` Lua module, so it replaces
> [oxocarbon.nvim](https://github.com/nyoom-engineering/oxocarbon.nvim). Don't install both.

## Usage

```lua
vim.cmd.colorscheme("oxocarbon")
```

```vim
" follows 'background'
colorscheme oxocarbon

" or pick a style explicitly
colorscheme oxocarbon-dark
colorscheme oxocarbon-light
```

Statusline and winbar plugins need the theme name set in their own config.

<details>
  <summary>Plugin setup</summary>

### [Barbecue](https://github.com/utilyre/barbecue.nvim)

```lua
require("barbecue").setup({ theme = "oxocarbon" })
```

### [Lualine](https://github.com/nvim-lualine/lualine.nvim)

```lua
require("lualine").setup({ options = { theme = "oxocarbon" } })
```

### [Lightline](https://github.com/itchyny/lightline.vim)

```vim
let g:lightline = {'colorscheme': 'oxocarbon'}
```

</details>

## Configuration

> [!IMPORTANT]
> Call `setup` before loading the color scheme with `colorscheme oxocarbon`.

You get the `light` style by passing `{ style = "light" }` to `setup(options)` or
by setting `vim.o.background = "light"`. Changing `background` at runtime switches
styles. Without a `setup` call, the defaults below apply.

<details>
  <summary>Default options</summary>

<!-- config:start -->

```lua
---@class oxocarbon.Config
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: oxocarbon.Highlights, colors: ColorScheme)
M.defaults = {
  style = "dark", -- The theme comes in two styles, `dark` and `light`
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
    -- Value is any valid attr-list value for `:help nvim_set_hl`
    comments = { italic = true },
    keywords = {},
    functions = {},
    variables = {},
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "normal", -- style for sidebars, see below
    floats = "dark", -- style for floating windows
  },
  dim_inactive = false, -- dims inactive windows
  lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

  --- You can override specific color groups to use other groups or a hex color
  --- function will be called with a ColorScheme table
  ---@param colors ColorScheme
  -- selene: allow(unused_variable)
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  ---@param highlights oxocarbon.Highlights
  ---@param colors ColorScheme
  -- selene: allow(unused_variable)
  on_highlights = function(highlights, colors) end,

  cache = true, -- When set to true, the theme will be cached for better performance

  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    -- enable all plugins when not using lazy.nvim
    -- set to false to manually enable/disable plugins
    all = package.loaded.lazy == nil,
    -- uses your plugin manager to automatically enable needed plugins
    -- currently only lazy.nvim is supported
    auto = true,
    -- add any plugins here that you want to enable
    -- for all possible plugins, see:
    --   * https://github.com/whispcat/oxocarbon.theme/tree/main/lua/oxocarbon/groups
    -- telescope = true,
  },
}
```

<!-- config:end -->

</details>

## Overriding colors and highlight groups

Highlights are built in three steps:

1. Your configuration picks the `colors`. Change them in `config.on_colors(colors)`.
1. The theme builds the highlight groups from those `colors`.
1. Change individual groups in `config.on_highlights(highlights, colors)`.

`colors` has oxocarbon's raw slots (`base00` to `base15`, and `blend`) and named
aliases such as `bg`, `fg`, `comment`, `blue`, `red`, `error` and `warning`. The
[dark](../extras/lua/oxocarbon_dark.lua) and [light](../extras/lua/oxocarbon_light.lua)
palettes list every value.

Oxocarbon has no yellow or orange, so those aliases point at other palette
colors. In dark, `orange` is pink `base12` and `yellow` is green `base13`.
Terminal (ANSI) colors copy oxocarbon.nvim's mapping unchanged.

<details>
  <summary>Example: settings and colors</summary>

```lua
require("oxocarbon").setup({
  styles = {
    keywords = { italic = true }, -- italic keywords
    sidebars = "dark", -- darker sidebars (nvim-tree, neo-tree, …)
  },
  -- recolor hints and make errors bright red
  on_colors = function(colors)
    colors.hint = colors.base08
    colors.error = "#ff0000"
  end,
})
```

</details>

<details>
  <summary>Light style: muted comments</summary>

oxocarbon.nvim's light palette draws comments and line numbers in near-black
`base03` (`#161616`). This theme uses the gray `base05` (`#90a4ae`) instead, so
comments and shell autosuggestions don't look like code. To get the original
back:

```lua
require("oxocarbon").setup({
  on_colors = function(c)
    if vim.o.background == "light" then
      c.comment = c.base03
    end
  end,
})
```

</details>

<details>
  <summary>Fix <code>undercurls</code> in Tmux</summary>

For colored undercurls inside [Tmux](https://github.com/tmux/tmux), add this to
your Tmux config:

```sh
# Undercurl
set -g default-terminal "${TERM}"
set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'  # undercurl support
set -as terminal-overrides ',*:Setulc=\E[58::2::::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m'  # underscore colours - needs tmux-3.0
```

</details>

## Using the palette in your config

Other plugins in your config can read the same colors:

```lua
local colors = require("oxocarbon.colors").setup() -- pass in any of the config options as explained above
local util = require("oxocarbon.util")

aplugin.background = colors.bg_dark
aplugin.my_error = util.lighten(colors.red, 0.3) -- number between 0 and 1. 0 results in white, 1 results in red
```
