local util = require("oxocarbon.util")

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local tailwindv4 = util.template(
    [[
@theme inline {
  --color-oxocarbon-${_style}-bg: oklch(from ${bg} l c h);
  --color-oxocarbon-${_style}-bg-dark: oklch(from ${bg_dark} l c h);
  --color-oxocarbon-${_style}-bg-dark1: oklch(from ${bg_dark1} l c h);
  --color-oxocarbon-${_style}-bg-float: var(--color-oxocarbon-${_style}-bg-dark);
  --color-oxocarbon-${_style}-bg-highlight: oklch(from ${bg_highlight} l c h);
  --color-oxocarbon-${_style}-bg-popup: var(--color-oxocarbon-${_style}-bg-dark);
  --color-oxocarbon-${_style}-bg-search: var(--color-oxocarbon-${_style}-blue0);
  --color-oxocarbon-${_style}-bg-sidebar: var(--color-oxocarbon-${_style}-bg-dark);
  --color-oxocarbon-${_style}-bg-statusline: var(--color-oxocarbon-${_style}-bg-dark);
  --color-oxocarbon-${_style}-bg-visual: oklch(from ${bg_visual} l c h);
  --color-oxocarbon-${_style}-black: oklch(from ${black} l c h);
  --color-oxocarbon-${_style}-black-bright: oklch(from ${terminal.black_bright} l c h);
  --color-oxocarbon-${_style}-blue: oklch(from ${blue} l c h);
  --color-oxocarbon-${_style}-blue-bright: oklch(from ${terminal.blue_bright} l c h);
  --color-oxocarbon-${_style}-blue0: oklch(from ${blue0} l c h);
  --color-oxocarbon-${_style}-blue1: oklch(from ${blue1} l c h);
  --color-oxocarbon-${_style}-blue2: oklch(from ${blue2} l c h);
  --color-oxocarbon-${_style}-blue5: oklch(from ${blue5} l c h);
  --color-oxocarbon-${_style}-blue6: oklch(from ${blue6} l c h);
  --color-oxocarbon-${_style}-blue7: oklch(from ${blue7} l c h);
  --color-oxocarbon-${_style}-border: var(--color-oxocarbon-${_style}-black);
  --color-oxocarbon-${_style}-border-highlight: oklch(from ${border_highlight} l c h);
  --color-oxocarbon-${_style}-comment: oklch(from ${comment} l c h);
  --color-oxocarbon-${_style}-cyan: oklch(from ${cyan} l c h);
  --color-oxocarbon-${_style}-cyan-bright: oklch(from ${terminal.cyan_bright} l c h);
  --color-oxocarbon-${_style}-dark3: oklch(from ${dark3} l c h);
  --color-oxocarbon-${_style}-dark5: oklch(from ${dark5} l c h);
  --color-oxocarbon-${_style}-diff-add: oklch(from ${diff.add} l c h);
  --color-oxocarbon-${_style}-diff-change: oklch(from ${diff.change} l c h);
  --color-oxocarbon-${_style}-diff-delete: oklch(from ${diff.delete} l c h);
  --color-oxocarbon-${_style}-diff-text: var(--color-oxocarbon-${_style}-blue7);
  --color-oxocarbon-${_style}-error: var(--color-oxocarbon-${_style}-red1);
  --color-oxocarbon-${_style}-fg: oklch(from ${fg} l c h);
  --color-oxocarbon-${_style}-fg-dark: oklch(from ${fg_dark} l c h);
  --color-oxocarbon-${_style}-fg-float: var(--color-oxocarbon-${_style}-fg);
  --color-oxocarbon-${_style}-fg-gutter: oklch(from ${fg_gutter} l c h);
  --color-oxocarbon-${_style}-fg-sidebar: var(--color-oxocarbon-${_style}-fg-dark);
  --color-oxocarbon-${_style}-git-add: oklch(from ${git.add} l c h);
  --color-oxocarbon-${_style}-git-change: oklch(from ${git.change} l c h);
  --color-oxocarbon-${_style}-git-delete: oklch(from ${git.delete} l c h);
  --color-oxocarbon-${_style}-git-ignore: var(--color-oxocarbon-${_style}-dark3);
  --color-oxocarbon-${_style}-green: oklch(from ${green} l c h);
  --color-oxocarbon-${_style}-green-bright: oklch(from ${terminal.green_bright} l c h);
  --color-oxocarbon-${_style}-green1: oklch(from ${green1} l c h);
  --color-oxocarbon-${_style}-green2: oklch(from ${green2} l c h);
  --color-oxocarbon-${_style}-hint: var(--color-oxocarbon-${_style}-teal);
  --color-oxocarbon-${_style}-info: var(--color-oxocarbon-${_style}-blue2);
  --color-oxocarbon-${_style}-magenta: oklch(from ${magenta} l c h);
  --color-oxocarbon-${_style}-magenta-bright: oklch(from ${terminal.magenta_bright} l c h);
  --color-oxocarbon-${_style}-magenta2: oklch(from ${magenta2} l c h);
  --color-oxocarbon-${_style}-orange: oklch(from ${orange} l c h);
  --color-oxocarbon-${_style}-purple: oklch(from ${purple} l c h);
  --color-oxocarbon-${_style}-rainbow1: var(--color-oxocarbon-${_style}-blue);
  --color-oxocarbon-${_style}-rainbow2: var(--color-oxocarbon-${_style}-yellow);
  --color-oxocarbon-${_style}-rainbow3: var(--color-oxocarbon-${_style}-green);
  --color-oxocarbon-${_style}-rainbow4: var(--color-oxocarbon-${_style}-teal);
  --color-oxocarbon-${_style}-rainbow5: var(--color-oxocarbon-${_style}-magenta);
  --color-oxocarbon-${_style}-rainbow6: var(--color-oxocarbon-${_style}-purple);
  --color-oxocarbon-${_style}-rainbow7: var(--color-oxocarbon-${_style}-orange);
  --color-oxocarbon-${_style}-rainbow8: var(--color-oxocarbon-${_style}-red);
  --color-oxocarbon-${_style}-red: oklch(from ${red} l c h);
  --color-oxocarbon-${_style}-red-bright: oklch(from ${terminal.red_bright} l c h);
  --color-oxocarbon-${_style}-red1: oklch(from ${red1} l c h);
  --color-oxocarbon-${_style}-teal: oklch(from ${teal} l c h);
  --color-oxocarbon-${_style}-todo: var(--color-oxocarbon-${_style}-blue);
  --color-oxocarbon-${_style}-warning: var(--color-oxocarbon-${_style}-yellow);
  --color-oxocarbon-${_style}-yellow: oklch(from ${yellow} l c h);
  --color-oxocarbon-${_style}-yellow-bright: oklch(from ${terminal.yellow_bright} l c h);
}]],
    colors
  )

  return tailwindv4
end

return M
