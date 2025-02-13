-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Change leader to a space
vim.g.mapleader = ' '

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Map Esc to kk
map('i', 'kk', '<Esc>')

-- Clear search highlighting with <leader> and c
map('n', '<leader>h', ':nohl<CR>')

-- Toggle auto-indenting for code paste
map('n', '<F2>', ':set invpaste paste?<CR>')
vim.opt.pastetoggle = '<F2>'

-- Change split orientation
map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical

-- Move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and w
map('n', '<leader>w', ':w<CR>')
map('i', '<leader>w', '<C-c>:w<CR>')
map('n', '<leader>bs', ':w<CR>')
map('i', '<leader>bs', '<C-c>:w<CR>')

-- Close all windows and exit from Neovim with <leader> and qq
map('n', '<leader>qa', ':qa!<CR>')
map('n', '<leader>qq', ':q<CR>')

-- Manage window
map('n', '<leader>wq', '<C-w><C-q>')
map('n', '<leader>wo', '<C-w><C-o>')
map('n', '<leader>wv', '<C-w><C-v>')
map('n', '<leader>ww', '<C-w><C-w>')

-- Setting
map('n', '<leader>ed', ':e $HOME/.config/nvim/init.lua<CR>')
map('n', '<leader>ep', ':e $HOME/.config/nvim/lua/packer_init.lua<CR>')
map('n', '<leader>ek', ':e $HOME/.config/nvim/lua/core/keymaps.lua<CR>')

-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
--[[ map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file ]]

-- Tagbar
map('n', '<leader>z', ':TagbarToggle<CR>')          -- open/close

-- kommentary
vim.api.nvim_set_keymap("n", "<leader>cc", "<Plug>kommentary_line_default", {})
vim.api.nvim_set_keymap("n", "<leader>c", "<Plug>kommentary_motion_default", {})
vim.api.nvim_set_keymap("x", "<leader>c", "<Plug>kommentary_visual_default<C-c>", {})

-- Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>.', ':Telescope find_files<CR>')
-- map('n', '<leader>fg', ':Telescope live_grep<CR>')
map('n', '<leader>fb', ':Telescope buffers<CR>')
map('n', '<leader>fh', ':Telescope help_tags<CR>')
map('n', '<leader>fc', ':Telescope grep_string<CR>')
map('n', '<leader>fg', ':Telescope live_grep_args<CR>')
map('n', '<leader>fl', ':Telescope lsp_document_symbols<CR>')

-- LeaderF
map('n', '<leader>lgu', ':Leaderf gtags --update')
map('n', '<leader>lm', ':LeaderfMru<CR>')
map('n', '<leader>lf', ':LeaderfFunction!<CR>')
map('n', '<leader>lb', ':LeaderfBuffer<CR>')
map('n', '<leader>lt', ':LeaderfBufTag<CR>')

map('n', '<leader>rg', ':<C-U><C-R>=printf("Leaderf! rg -e ")<CR>')
-- search word under cursor, the pattern is treated as regex, and enter normal mode directly
-- map('n', '<leader>rc', ':<C-U><C-R>=printf("Leaderf! rg -e %s -tc -tcpp", expand("<cword>"))<CR>')
-- map('n', '<leader>rc', ':<C-U><C-R>=printf("Leaderf! rg -e %s -tc -tcpp", expand("<cword>"))<CR><CR>')

map('n', '<leader>fd', ':<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>')

-- vim-easy-align
-- Start interactive EasyAlign in visual mode (e.g. vipga)
vim.api.nvim_set_keymap("x", "<leader>ga", "<Plug>EasyAlign", {})
-- Start interactive EasyAlign for a motion/text object (e.g. gaip)
vim.api.nvim_set_keymap("n", "<leader>ga", "<Plug>EasyAlign", {})

map('n', '<F5>', ':!python %<CR>')
-- map('n', '<F5>', ':term python %<CR>')

-- d and x for delete
map('n', 'x', '"_x')
map('n', 'X', '"_X')
map('n', 'd', '"_d')
map('n', 'D', '"_D')
map('x', 'd', '"_d')

-- leader-d for cut
map('n', '<leader>d', '"+d')
map('x', '<leader>d', '"+d')

-- Copy the current word or visually selected text to the clipboard:
map('n', '<F6>', '"+yiw')
map('x', '<F6>', '"+y')

-- Replace the current word or visually selected text with the clipboard contents:
map('n', '<F7>', 'viw"+p')
map('x', '<F7>', '"+p')

-- buffer
map("n", "<leader>bd", ":bdelete<CR>", opts)

-- Tab
map('n', '<leader>tn', ':tabnew<CR>')
map('n', '<leader>tc', ':tabclose<CR>')

-- Move to previous/next
map('n', '<A-n>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-m>', '<Cmd>BufferNext<CR>', opts)
-- map('n', '<F2>', ':tabp<CR>')
-- map('n', '<F3>', ':tabn<CR>')

-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
-- map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Git
map('n', '<leader>go', ':G | only<CR>')
map('n', '<leader>gvd', ':Gvdiffsplit<CR>')

