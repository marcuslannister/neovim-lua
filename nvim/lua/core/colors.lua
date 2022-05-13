-----------------------------------------------------------
-- Color schemes configuration file
-----------------------------------------------------------

-- See: https://github.com/brainfucksec/neovim-lua#appearance

-- Load nvim color scheme:
-- Change the "require" values with your color scheme
-- Available color schemes: onedark, monokai, rose-pine
local status_ok, color_scheme = pcall(require, 'onedark')
if not status_ok then
  return
end

-- OneDark styles: dark, darker, cool, deep, warm, warmer, light
require('onedark').setup {
  style = 'light',
  colors = { fg = '#b2bbcc' }, --default: #a0a8b7
}
require('onedark').load()

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

return M
