local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Clone lazy.nvim if it doesn't exist
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin list
local plugins = {
    -- Themes
    'rose-pine/neovim',
    'ray-x/guihua.lua',
    'ayu-theme/ayu-vim',
    'folke/tokyonight.nvim',
    { 'Everblush/nvim', as = 'everblush' },
    'AlphaTechnolog/pywal.nvim',

    {
        'goolord/alpha-nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require 'alpha'.setup(require 'alpha.themes.startify'.config)
        end
    },

    -- File Explorer
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',

    -- Git integration
    'lewis6991/gitsigns.nvim',
    'tpope/vim-fugitive',

    -- Utility
    'windwp/nvim-autopairs',
    'lukas-reineke/indent-blankline.nvim',
    'mbbill/undotree',
    'tpope/vim-commentary',
    'numToStr/Comment.nvim',
    'akinsho/bufferline.nvim',

    -- Treesitter
    'nvim-treesitter/nvim-treesitter',
    'nvim-treesitter/nvim-treesitter-context',
    'nvim-treesitter/playground',

    -- LSP and Completion
    'neovim/nvim-lspconfig',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'p00f/clangd_extensions.nvim',
    'VonHeikemen/lsp-zero.nvim',

    {
        'stevearc/conform.nvim',
        opts = {},
    },

    {
        'ray-x/navigator.lua',
        dependencies = {
            { 'ray-x/guihua.lua',     run = 'cd lua/fzy && make' },
            { 'neovim/nvim-lspconfig' },
        },
    },

    {

        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        -- or                              , branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Status Line and Buffer Line
    'nvim-lualine/lualine.nvim',

    -- Keybindings helper
    'folke/which-key.nvim',

    -- Copilot and Extensions
    {
        'zbirenbaum/copilot.lua',
        cmd = 'Copilot',
        event = 'InsertEnter',
        config = function()
            require('copilot').setup()
        end,
    },
    {
        "zbirenbaum/copilot-cmp",
        config = function()
            require("copilot_cmp").setup()
        end,
    },

    -- Markdown Preview
    {
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    },

    -- Mini Pairs
    {
        "echasnovski/mini.pairs",
        event = "VeryLazy",
        config = function(_, opts)
            require("mini.pairs").setup(opts)
        end,
    },

}

local opts = {}

require("lazy").setup(plugins, opts)
