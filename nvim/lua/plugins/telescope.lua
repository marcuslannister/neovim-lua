-----------------------------------------------------------
-- Gaze deeply into unknown regions using the power of the moon.
-----------------------------------------------------------

-- telescope.nvim
-- https://github.com/nvim-telescope/telescope.nvim

local status_ok, telescope= pcall(require, 'telescope')
if not status_ok then
  return
end

local z_utils = require("telescope._extensions.zoxide.utils")

telescope.setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key"
      }
    }
  },
  pickers = {
    -- Default configuration for builtin pickers goes here:
    -- picker_name = {
    --   picker_config_key = value,
    --   ...
    -- }
    -- Now the picker_config_key will be applied every time you call this
    -- builtin picker
    find_files = {
      disable_devicons = false
    },
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}

-- Load the extension
telescope.load_extension('live_grep_args')
telescope.load_extension('zoxide')

-- Add a mapping
vim.keymap.set("n", "<leader>cd", telescope.extensions.zoxide.list)

-----------------------------------------------------------
-- grep word under cursor
-- https://github.com/nvim-telescope/telescope-live-grep-args.nvim/pull/23/commits/482b21538af978ba2508ad1683600ed37033a294
-- https://github.com/nvim-telescope/telescope-live-grep-args.nvim/issues/14
-----------------------------------------------------------
local live_grep_raw = require("telescope").extensions.live_grep_args

grep_word_under_cursor = function ()
  live_grep_raw.live_grep_raw({ default_text = vim.fn.expand("<cword>")})
end

vim.keymap.set("n", "<leader>rc", function() grep_word_under_cursor() end)

