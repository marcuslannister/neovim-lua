-----------------------------------------------------------
--  A Neovim plugin for writing and navigating an Obsidian vault, written in Lua.
-----------------------------------------------------------

-- obsidian.nvim
-- url: https://github.com/epwalsh/obsidian.nvim

-- Call setup:
require("obsidian").setup({
  dir = "~/my-vault",
  completion = {
    nvim_cmp = true, -- if using nvim-cmp, otherwise set to false
  }
})

