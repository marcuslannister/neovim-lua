-----------------------------------------------------------
-- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua.
-----------------------------------------------------------

-- null-ls.nvim
-- https://github.com/jose-elias-alvarez/null-ls.nvim

local status_ok, null_ls = pcall(require, 'null-ls')
if not status_ok then
  return
end

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.completion.spell,
        null_ls.builtins.formatting.shfmt, -- shell script formatting
    },
})


