local builtin = require('telescope.builtin')

local defaults = { -- Declared outside the setup function
    file_ignore_patterns = { '^node_modules/', },
}

require('telescope').setup{
    defaults = {
        mappings = {
            i = {
                vim.keymap.set('n', '<leader>pf', builtin.find_files, {}),
                vim.keymap.set('n', '<leader>pb', builtin.buffers, {}),
                vim.keymap.set('n', '<leader>ph', builtin.help_tags, {}),
                vim.keymap.set('n', '<leader><C-p', builtin.git_files, {}),
                vim.keymap.set('n', '<leader>ps', function()
                    builtin.grep_string({ search = vim.fn.input("Grep For > ") })
                end),
            },
        }
    },
    pickers = {
        -- picker configurations
    },
    extensions = {
        -- extension configurations
    }
}

