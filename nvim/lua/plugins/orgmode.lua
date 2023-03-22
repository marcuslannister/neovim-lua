-----------------------------------------------------------
-- Orgmode clone written in Lua for Neovim 0.8+
-----------------------------------------------------------

-- orgmode
-- url: https://github.com/nvim-orgmode/orgmode

-- init.lua

-- Load custom treesitter grammar for org filetype
require('orgmode').setup_ts_grammar()

require('orgmode').setup({
  org_agenda_files = {'~/org/**/*'},
  org_default_notes_file = '~/org/refile.org',
  win_split_mode = 'float',
  org_todo_keywords = {'TODO(t)', 'NEXT(n)', '|', 'DONE(d)'},
})


