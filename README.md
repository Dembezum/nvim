# Neovim Configuration

This repository contains my personal Neovim configuration, optimized for a
seamless development experience with a focus on aesthetics, usability, and
productivity. This setup is built using the `lazy.nvim` plugin manager to ensure
a minimal startup time by loading plugins lazily.

## Installation

1. Ensure Neovim (v0.9 or newer) is installed on your system.
2. Clone this repository into your configuration directory, usually located at `~/.config/nvim/`.
3. Open Neovim and the `lazy.nvim` plugin manager will automatically clone and install all the necessary plugins listed in the configuration.

## Plugins Overview

The configuration includes a variety of plugins to enhance the Neovim experience:

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

The configuration is modular, divided into several files for clarity:

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

