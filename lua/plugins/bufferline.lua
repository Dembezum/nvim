local opts = {
  require("bufferline").setup{
    options = {
      hover = {
        enabled = true,
        delay = 200,
        reveal = {'close'}
      },
      indicator = {
        icon = '▎', -- Set a valid icon
        style = 'icon', -- Set a valid style (e.g., 'icon', 'underline', 'none')
      },
      modified_icon = "●",
      buffer_close_icon = "",
      close_icon = "",
      left_trunc_marker = "",
      right_trunc_marker = "",
      numbers = "ordinal",
      tab_size = 18,
      max_name_length = 15,
      max_prefix_length = 6,
      diagnostics = "nvim_lsp",
      show_buffer_icons = true,
      show_buffer_close_icons = false,
      show_close_icon = false,
      persist_buffer_sort = true,
      enforce_regular_tabs = true,
    }
  }
}
return opts

