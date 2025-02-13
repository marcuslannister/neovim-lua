--[[

Neovim init file
Maintainer: brainf+ck
Website: https://github.com/brainfucksec/neovim-lua

--]]

-- Import Lua modules
require('packer_init')
require('core/options')
require('core/autocmds')
require('core/keymaps')
require('core/colors')
require('core/statusline')
require('lsp/lspconfig')
-- require('plugins/nvim-tree')
require('plugins/indent-blankline')
require('plugins/nvim-cmp')
require('plugins/nvim-treesitter')
require('plugins/alpha-nvim')
-- require('plugins/leaderf')
-- require('plugins/go')
-- require('plugins/navigator')
require('plugins/lspsaga')
require('plugins/vim-bookmarks')
require('plugins/null-ls')
require('plugins/telescope')
require('plugins/tabline')
-- require('plugins/obsidian')
require('plugins/gitsigns')
-- require('plugins/orgmode')

