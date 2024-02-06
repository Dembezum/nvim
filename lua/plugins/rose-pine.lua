local opts = {
  require('rose-pine').setup({
    --- @usage 'main' | 'moon'
    dark_variant = 'main',
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = true,
    disable_float_background = false,
    disable_italics = true,

    --- @usage string hex value or named color from rosepinetheme.com/palette
    groups = {
      background = '#232736',
      panel = 'overlay',
      border = 'highlight_med',
      comment = 'muted',
      link = 'iris',
      punctuation = 'subtle',

      error = 'love',
      hint = 'iris',
      info = 'foam',
      warn = 'rose',

      headings = {
        h1 = 'iris',
        h2 = 'foam',
        h3 = 'rose',
        h4 = 'gold',
        h5 = 'pine',
        h6 = 'foam',
      }
      -- or set all headings at once
      -- headings = 'subtle'
    },

    -- Change specific vim highlight groups
    highlight_groups = {
      ColorColumn = { bg = '#232736' },
      StatusLine  = { bg = '#232736' },
      -- NvimTreeNormal = { bg = '#191c26'},
      -- NvimTreeFolderName = { fg = '#8caaee'},
      cursorline = { bg = '#232736'},
      -- NvimTreeRootFolder = { fg = '#a6e3a1'},
      BufferLineBackground = { bg = '#1c1f2b' },
      BufferLineBufferSelected = { fg = 'iris' },
      NotifyBackground = { bg = '#232736'},
      IndentBlanklineContextChar = {fg = 'iris' },
      String = { fg = 'gold' },
      -- Type = { fg = 'foam' },
      -- Function = { fg = 'rose' }
    }
  })
}
return opts
