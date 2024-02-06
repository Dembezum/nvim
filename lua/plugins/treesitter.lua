return {
    require 'nvim-treesitter.configs'.setup {
        -- A list of parser names, or "all"
        --[[ ensure_installed = {
            "python",
            "javascript",
            "rust",
            "bash",
            "java",
            "c",
            "cpp",
            "lua",
            "vim",
            "vimdoc"
        }, ]]
        ignore_install = { "" },

        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "gnn", -- set to `false` to disable one of the mappings
                node_incremental = "grn",
                scope_incremental = "grc",
                node_decremental = "grm",
            },
        },
        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,
        auto_install = true,
        highlight = {
            enable = true,
            disable = {
                -- "clangd",
                "markdown",
                -- "cpp",
                "lua_ls",
            }
        },
    }
}
