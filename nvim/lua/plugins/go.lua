-----------------------------------------------------------
-- A modern go neovim plugin based on treesitter, nvim-lsp and dap debugger
-----------------------------------------------------------

-- go.nvim
-- url: https://github.com/ray-x/go.nvim

-- Global options
local g = vim.g

local status_ok, go = pcall(require, 'go')
if not status_ok then
  return
end

vim.cmd([[
  autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
  autocmd BufWritePre (InsertLeave?) <buffer> lua vim.lsp.buf.formatting_sync(nil,500)
]])

-- Call setup:
go.setup()

