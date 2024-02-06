# Neovim Configuration

This repository contains my personal Neovim configuration, optimized for a
seamless development experience with a focus on aesthetics, usability, and
productivity. This setup is built using the `lazy.nvim` plugin manager to ensure
a minimal startup time by loading plugins lazily. 

> *When cloning there might be some issues regarding the asynchronous loading of
> plugins and configurations. This is simply because i haven't made it 100%
> clone proof. I am by no means an expert, this is just my forever evolving
> neovim config. Learning things as i go.*


## Table of Contents

- [Neovim Configuration](#neovim-configuration)
- [Installation](#installation)
- [Plugins Overview](#plugins-overview)
- [Configuration Structure](#configuration-structure)
- [Customizing](#customizing)
- [Credits](#credits)


## Installation

1. Ensure Neovim (v0.9 or newer) is installed on your system.
2. Clone this repository into your configuration directory usually located at `~/.config/nvim/`.
3. Open Neovim and the `lazy.nvim` plugin manager will automatically clone and install all the necessary plugins listed in the configuration.

## Plugins Overview

The configuration includes a variety of plugins to enhance the Neovim experience:

---

<details>
<summary><b>Full List of plugins here</b></summary>
<br>

- Themes
  - [rose-pine/neovim](https://github.com/rose-pine/neovim)
  - [ray-x/guihua.lua](https://github.com/ray-x/guihua.lua)
  - [ayu-theme/ayu-vim](https://github.com/ayu-theme/ayu-vim)
  - [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
  - [Everblush/nvim (as everblush)](https://github.com/Everblush/nvim)
  - [AlphaTechnolog/pywal.nvim](https://github.com/AlphaTechnolog/pywal.nvim)
  - [goolord/alpha-nvim](https://github.com/goolord/alpha-nvim) (Dependencies: [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons))

- File Explorer
  - [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
  - [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons)

- Git Integration
  - [lewis6991/gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
  - [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)

- Utility
  - [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs)
  - [lukas-reineke/indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
  - [mbbill/undotree](https://github.com/mbbill/undotree)
  - [tpope/vim-commentary](https://github.com/tpope/vim-commentary)
  - [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim)
  - [akinsho/bufferline.nvim](https://github.com/akinsho/bufferline.nvim)

- Treesitter
  - [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [nvim-treesitter/nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context)
  - [nvim-treesitter/playground](https://github.com/nvim-treesitter/playground)

- LSP and Completion
  - [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
  - [hrsh7th/nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
  - [hrsh7th/cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp)
  - [L3MON4D3/LuaSnip](https://github.com/L3MON4D3/LuaSnip)
  - [saadparwaiz1/cmp_luasnip](https://github.com/saadparwaiz1/cmp_luasnip)
  - [rafamadriz/friendly-snippets](https://github.com/rafamadriz/friendly-snippets)
  - [williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)
  - [williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
  - [p00f/clangd_extensions.nvim](https://github.com/p00f/clangd_extensions.nvim)
  - [VonHeikemen/lsp-zero.nvim](https://github.com/VonHeikemen/lsp-zero.nvim)
  - [stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)
  - [ray-x/navigator.lua](https://github.com/ray-x/navigator.lua) (Dependencies: [ray-x/guihua.lua](https://github.com/ray-x/guihua.lua), [neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig))

- Telescope
  - [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (Dependencies: [nvim-lua/plenary.nvim](https://github.com/nvim-lua/plenary.nvim))

- Status Line and Buffer Line
  - [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)

- Keybindings Helper
  - [folke/which-key.nvim](https://github.com/folke/which-key.nvim)

- Copilot and Extensions
  - [zbirenbaum/copilot.lua](https://github.com/zbirenbaum/copilot.lua)
  - [zbirenbaum/copilot-cmp](https://github.com/zbirenbaum/copilot-cmp)

- Markdown Preview
  - [iamcco/markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim)

- Mini Pairs
  - [echasnovski/mini.pairs](https://github.com/echasnovski/mini.pairs)

</details>

---

- **Themes**: Multiple themes like `rose-pine`, `ayu-vim`, `tokyonight.nvim`, and `everblush`, and `pywal` for a customizable look and feel.
- **File Explorer**: Utilizes `nvim-tree` for browsing and managing files.
- **Git Integration**: `gitsigns.nvim` and `vim-fugitive` for git operations.
- **Utility Plugins**: Including `nvim-autopairs`, `indent-blankline.nvim`, and others for improved editing efficiency.
- **Treesitter**: For syntax highlighting and other code features.
- **LSP and Completion**: Setup with `nvim-lspconfig`, `nvim-cmp` and `copilot`, and other plugins for code completion and linting.
- **Status Line and Buffer Line**: Enhanced UI elements with `lualine.nvim` and `bufferline.nvim`.
- **Keybindings Helper**: `which-key.nvim` for displaying available keybindings.
- **Markdown Preview**: `markdown-preview.nvim` for real-time markdown rendering.
- **And More**: Including specific setups for `copilot.lua`, `telescope.lua`, and various other plugins.

## Configuration Structure

I try to keep the configuration modular, divided into several files for clarity:

- `init.lua`: The entry point, calling the files like options, key mappings, and autocommands and plugins.
- `plugins.lua`: Lists all the plugins being used and their configurations.
- Plugin-specific configuration files: For detailed setup of each plugin, ensuring a clean and organized structure.

Each plugin is carefully chosen and configured to work together seamlessly,
providing a powerful and efficient development environment right out of the box.

## Customizing

Feel free to fork this repository and customize the configuration to suit your
needs. Each plugin's configuration can be modified in its respective file under
the `plugins` directory.

## Credits

This configuration makes use of the `lazy.nvim` plugin manager by
[folke](https://github.com/folke) and includes a variety of community-driven
plugins. Big thanks to all the plugin authors for making Neovim even better!
