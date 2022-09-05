-----------------------------------------------------------
-- Color schemes configuration file
-----------------------------------------------------------

-- See: https://github.com/brainfucksec/neovim-lua#appearance

-- Load nvim color scheme:
-- Change the "require" values with your color scheme
-- Available color schemes: onedark, monokai, rose-pine
--[[ local status_ok, color_scheme = pcall(require, 'onedark')
if not status_ok then
  return
end ]]

-- Note: The instruction to load the color scheme may vary.
-- See the README of the selected color scheme for the instruction
-- to use.
-- e.g.: require('color_scheme').setup{}, vim.cmd('color_scheme')

-- OneDark styles: dark, darker, cool, deep, warm, warmer, light
--[[ require('onedark').setup {
  style = 'light',
  colors = { fg = '#b2bbcc' }, --default: #a0a8b7
}
require('onedark').load() ]]

--[[ vim.g.tokyonight_style = "day"
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.a.tokyonight_colors = { hint = "orange", error = "#ff0000" } ]]

-- Load the colorscheme
-- vim.cmd[[colorscheme tokyonight]]

-- material
--[[ require("material").setup({
  material_style = "Lighter",
  -- other config
}) ]]
--[[ vim.g.material_style= "lighter" -- latte, frappe, macchiato, mocha
require("material").setup()
-- vim.cmd [[colorscheme material]]

-- catppuccin
vim.g.catppuccin_flavour = "latte" -- latte, frappe, macchiato, mocha
require("catppuccin").setup({
  catppuccin_flavour = "latte", -- latte, frappe, macchiato, mocha
  -- catppuccin_flavour = "frappe", -- latte, frappe, macchiato, mocha
  -- other config
})
vim.cmd [[colorscheme catppuccin]]

-- Github
--[[ require("github-theme").setup({
  theme_style = "light",
  -- other config
}) ]]

-- statusline color schemes:
-- import with: require('colors').colorscheme_name
local M = {}

-- Theme: OneDark (dark)
-- Colors: https://github.com/navarasu/onedark.nvim/blob/master/lua/onedark/palette.lua
M.onedark_dark = {
  bg = '#282c34',
  fg = '#b2bbcc',
  pink = '#c678dd',
  green = '#98c379',
  cyan = '#56b6c2',
  yellow = '#e5c07b',
  orange = '#d19a66',
  red = '#e86671',
}

M.onedark_light = {
  black = "#101012",
  bg = "#fafafa",
  fg = "#383a42",
  purple = "#a626a4",
  green = "#50a14f",
  orange = "#c18401",
  blue = "#4078f2",
  yellow = "#986801",
  cyan = "#0184bc",
  red = "#e45649",
  grey = "#a0a1a7",
  light_grey = "#818387",
  dark_cyan = "#2b5d63",
  dark_red = "#833b3b",
  dark_yellow = "#7c5c20",
  dark_purple = "#79428a",
  diff_add = "#282b26",
  diff_delete = "#2a2626",
  diff_change = "#1a2a37",
  diff_text = "#2c485f",
}

-- Theme: Monokai (classic)
-- Colors: https://github.com/tanvirtin/monokai.nvim/blob/master/lua/monokai.lua
M.monokai = {
  bg = '#202328', --default: #272a30
  fg = '#f8f8f0',
  pink = '#f92672',
  green = '#a6e22e',
  cyan = '#66d9ef',
  yellow = '#e6db74',
  orange = '#fd971f',
  red = '#e95678',
}

-- Theme: Rosé Pine (main)
-- Colors: https://github.com/rose-pine/neovim/blob/main/lua/rose-pine/palette.lua
-- color names are adapted to the formats above
M.rose_pine = {
  bg = '#111019', --default: #191724
  fg = '#e0def4',
  pink = '#eb6f92',
  green = '#9ccfd8',
  cyan = '#31748f',
  yellow = '#f6c177',
  orange = '#2a2837',
  red = '#ebbcba',
}

-- Theme: Github
-- Colors: https://github.com/projekt0n/github-nvim-theme/blob/main/lua/github-theme/palette/light.lua
M.github_light = {
    -- Background Colors
    bg = '#ffffff',
    bg2 = '#f6f8fa',

    -- foreground colors
    fg = '#24292f',
    fg_dark = '#666666',
    fg_gutter = '#babbbd',
    fg_light = '#586069',
    fg_term = '#24292f',

    -- Background Highlights Colors
    bg_highlight = '#d5e5f6',
    bg_search = '#fff2be',
    bg_visual = '#e1e4e8',
    bg_visual_selection = '#dbe9f9',
    border = '#044289',

    -- Cursor & LineNumber Colors
    cursor = '#044289',
    cursor_line_nr = '#24292e',
    line_nr = '#babbbd',

    -- LSP & Diagnostic Colors
    error = '#cb2431',
    warning = '#bf8803',
    info = '#75beff',
    hint = '#6c6c6c',
    lsp = { ref_txt = '#c6eed2' },

    -- Auto-Complication Colors
    pmenu = { bg = '#f6f8fa', sbar = '#f0f1f3' },

    -- Git & Diff Colors
    git = {
      add = '#28a745',
      change = '#895503',
      delete = '#d73a49',
      conflict = '#e36209',
      ignore = '#959da5',
      renamed = '#007100',
    },
    diff = {
      add = '#d4f8db',
      add_fg = '#22863a',
      change = '#fff5b1',
      change_fg = '#b08800',
      delete = '#fae5e7',
      delete_fg = '#cb2431',
    },

    -- Syntax Colors
    syntax = {
      comment = '#6a737d',
      constant = '#005cc5',
      string = '#032f62',
      variable = '#005cc5',
      keyword = '#d73a49',
      func = '#6f42c1',
      func_param = '#24292e',
      match_paren_bg = '#c6eed2',
      tag = '#22863a',
      html_arg = '#b31d28',
      param = '#e36209',
      json_label = '#005cc5',
    },

    -- Terminal Colors
    orange = '#d18616',
    black = '#24292e',
    bright_black = '#959da5',
    white = '#6a737d',
    bright_white = '#d1d5da',
    red = '#d73a49',
    bright_red = '#cb2431',
    green = '#28a745',
    bright_green = '#22863a',
    yellow = '#dbab09',
    bright_yellow = '#b08800',
    blue = '#0366d6',
    bright_blue = '#005cc5',
    magenta = '#5a32a3',
    bright_magenta = '#5a32a3',
    cyan = '#0598bc',
    bright_cyan = '#3192aa',

    -- Plugin Colors
    git_signs = { add = '#28a745', change = '#2188ff', delete = '#d73a49' },
}


return M
