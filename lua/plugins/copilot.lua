require("copilot.suggestion").toggle_auto_trigger()
require("copilot.suggestion").is_visible()

require('copilot').setup({
    panel = {
        enabled = true,
        auto_refresh = true,
        keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gy",
            open = "<m-CR>"
        },
        layout = {
            position = "bottom", -- | top | left | right
            ratio = 0.4
        },
    },
    suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
            accept = "<c-l>",
            accept_word = false,
            accept_line = false,
            next = "<C-b>",
            prev = "<C-n>",
            dismiss = "<C-]>",
        },
    },

    filetypes = {
        yaml = false,
        c = true,
        zig = true,
        python = true,
        rust = true,
        go = true,
        javascript = true,
        typescript = true,
        markdown = true,
        help = false,
        gitcommit = false,
        gitrebase = false,
        hgcommit = false,
        svn = false,
        cvs = false,
        ["."] = false,
    },
    copilot_node_command = 'node', -- Node.js version must be > 16.x
    server_opts_overrides = {},
})
