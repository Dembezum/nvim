local map = vim.keymap.set

vim.g.mapleader = " "

-- Navigation key mappings
map('n', '<c-h>', ':wincmd h<CR>')
map('n', '<c-j>', ':wincmd j<CR>')
map('n', '<c-k>', ':wincmd k<CR>')
map('n', '<c-l>', ':wincmd l<CR>')
map('n', '<leader>,', ':BufferLineCyclePrev<CR>', { desc = "Buf Next" })
map('n', '<leader>.', ':BufferLineCycleNext<CR>', { desc = "Buf Prev" })

-- Text editing key mappings
map('n', '<leader>d', [[:g/^$/d]], { desc = "Empty lines" })
map('n', '<leader>q', [[:%s/\s\+$//]], { desc = "Trailing whitespaces" })
map('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace" })
map('v', 'J', ':m \'>+1<CR>gv=gv')
map('v', 'K', ':m \'<-2<CR>gv=gv')
map('n', ';', 'A;')

-- Markdown preview key mappings
map('n', '<leader>md', ':MarkdownPreview<CR>')
map('n', '<leader>mds', ':MarkdownPreviewStop<CR>')
map('n', '<leader>mdt', ':MarkdownPreviewToggle<CR>')

-- File explorer key mapping
map('n', '<leader>pv', ':Explore<CR>')

-- Clear screen and run code key mappings
-- map('n', '<C-b>', '<cmd> !clear && time cargo run %<CR>', { silent = false })
-- map('n', '<C-b>', '<cmd> !clear && time swiftc % && ./main<CR>', { silent = false })
-- map('n', '<C-c>', '<cmd> !clear && time gcc % && ./a.out<CR>', { silent = false })
-- map('n', '<C-n>', '<cmd> !clear && time python%<CR>', { silent = false })

-- keybind to ls every time you save
map('n', '<leader>ls', ':w<CR>:pwd<CR>', { silent = false })

-- Other key mappings
map('n', '<leader>h', ':nohlsearch<CR>')
map('n', '<leader>l', ':Lazy<CR>')
map('n', '<leader>x', '<cmd>!chmod +x %<CR>', { silent = true })
map('n', '<C-g>', ':NvimTreeToggle <CR>')
map('n', '<C-i>', ':Telescope keymaps <CR>')
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')
map('n', 'Q', '<nop>')
map('n', 'J', 'mzJ`z')

-- Visual mode key mappings
map('v', '<leader>y', [["+y]])

-- Key mappings for both normal and visual modes
map({ 'n', 'v' }, '<leader>y', [["+y]])
