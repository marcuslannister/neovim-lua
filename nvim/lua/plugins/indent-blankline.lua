-----------------------------------------------------------
-- Indent line configuration file
-----------------------------------------------------------

-- Plugin: indent-blankline
-- url: https://github.com/lukas-reineke/indent-blankline.nvim


local status_ok, indent_blankline = pcall(require, 'ibl')
if not status_ok then
  return
end

vim.opt.list = true
vim.opt.listchars:append "tab:>-"
vim.opt.listchars:append "trail:-"

-- vim.opt.listchars:append "space:⋅"
-- vim.opt.listchars:append "eol:↴"

indent_blankline.setup {
  -- char = "▏",
  -- use_treesitter = true,
  -- show_first_indent_level = true,
  -- space_char_blankline = " ",
  -- show_current_context = true,
  -- show_current_context_start = true,
  --[[ filetype_exclude = {
    'lspinfo',
    'packer',
    'checkhealth',
    'help',
    'man',
    'dashboard',
    'git',
    'markdown',
    'text',
    'terminal',
    'NvimTree',
  }, ]]
  --[[ buftype_exclude = {
    'terminal',
    'nofile',
    'quickfix',
    'prompt',
  }, ]]
}
