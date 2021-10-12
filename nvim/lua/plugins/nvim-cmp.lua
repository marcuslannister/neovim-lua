-----------------------------------------------------------
-- Autocomplete configuration file
-----------------------------------------------------------

-- Plugin: nvim-cmp
-- https://github.com/hrsh7th/nvim-cmp

local cmp = require 'cmp'
local luasnip = require 'luasnip'

cmp.setup {
  -- load snippet support
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },

-- completion settings
  completion = {
    -- default: completeopt = 'menu,menuone,noselect'
    completeopt = 'menuone,noselect',
    keyword_length = 2
  },

  -- key mapping
  mapping = {
    ['<C-n>'] = cmp.mapping.select_next_item {
      behavior = cmp.SelectBehavior.Insert
    },
    { 'i' },
    ['<C-p>'] = cmp.mapping.select_prev_item {
      behavior = cmp.SelectBehavior.Insert,
    },
    { 'i' },
    ['<Down>'] = cmp.mapping.select_next_item {
      behavior = cmp.SelectBehavior.Select,
    },
    { 'i' },
    ['<Up>'] = cmp.mapping.select_next_item {
      behavior = cmp.SelectBehavior.Select,
    },
    { 'i ' },
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),

    -- Tab mapping
    ['<Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ['<S-Tab>'] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end
  },

  -- load sources, see: https://github.com/topics/nvim-cmp
  sources = {
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
    { name = 'path' },
    { name = 'buffer' },
  },
}
