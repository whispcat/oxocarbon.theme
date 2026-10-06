local M = {}

M.url = "https://github.com/kyazdani42/nvim-tree.lua"

---@type oxocarbon.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NvimTreeEmptyFolderName  = { fg = c.base15 },
    NvimTreeFolderIcon   = { fg = c.base12 },
    NvimTreeFolderName   = { fg = c.base09 },
    NvimTreeGitDeleted   = { fg = c.git.delete },
    NvimTreeGitDirty     = { fg = c.git.change },
    NvimTreeGitNew       = { fg = c.git.add },
    NvimTreeImageFile    = { fg = c.base12 },
    NvimTreeIndentMarker = { fg = c.base02 },
    NvimTreeNormal       = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeNormalNC     = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeOpenedFile   = { bg = c.bg_highlight },
    NvimTreeOpenedFolderName = { fg = c.base15 },
    NvimTreeRootFolder   = { fg = c.base09, bold = true },
    NvimTreeSpecialFile  = { fg = c.base14, underline = true },
    NvimTreeSymlink      = { fg = c.base08 },
    NvimTreeWinSeparator = { fg = opts.styles.sidebars == "transparent" and c.border or c.bg_sidebar, bg = c.bg_sidebar },
  }
end

return M
