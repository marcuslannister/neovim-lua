--[[

  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝


Neovim init file
Version: 0.42.1 - 2021/12/27
Maintainer: Brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

-----------------------------------------------------------
-- Import Lua modules
-----------------------------------------------------------
require('settings')
require('keymaps')
require('plugins/packer')
require('plugins/nvim-tree')
require('plugins/indent-blankline')
require('plugins/feline')
require('plugins/vista')
require('plugins/nvim-cmp')
require('plugins/nvim-lspconfig')
require('plugins/nvim-treesitter')
require('plugins/alpha-nvim')
