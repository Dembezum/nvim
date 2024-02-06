local opts = {
  require'navigator'.setup({
    -- mason = false -- default value is false
    lsp = {
      tsserver = { cmd = {'clangd', 'pyright', 'java', 'cpp', 'lua_ls'} },
      format_on_save = false,
      -- e.g. tsserver = { cmd = {'/home/username/.local/share/nvim/mason/packages/typescript-language-server/node_modules/typescript/bin/tsserver'} }

    }
  })
}

return opts

