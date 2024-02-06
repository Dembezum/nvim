vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = "*",
    group = vim.api.nvim_create_augroup("auto_create_dir", { clear = true }),
    callback = function(ctx)
        local dir = vim.fn.fnamemodify(ctx.file, ":p:h")
        vim.fn.mkdir(dir, "p")
    end
})

-- Auto source cisco ios syntax when opening a .ios file
vim.api.nvim_create_augroup('IOSFileSyntax', { clear = true })
vim.api.nvim_create_autocmd({'BufRead', 'BufNewFile'}, {
    group = 'IOSFileSyntax',
    pattern = '*.ios',
    command = 'source ~/.config/nvim/lua/syntax/ciscoios.vim'
})

vim.api.nvim_create_autocmd('BufReadPost', {
  desc = 'Open file at the last position it was edited earlier',
  group = misc_augroup,
  pattern = '*',
  command = 'silent! normal! g`"zv'
})
