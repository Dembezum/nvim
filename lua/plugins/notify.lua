local opts = {
  require("notify").setup(),
  background_colour = "#00000000",
  fps = 60,
  icons = {
    DEBUG = "",
    ERROR = "",
    INFO = "",
    TRACE = "✎",
    WARN = ""
  },
  level = 4,
  minimum_width = 50,
  render = "simple",
  stages = "fade_in_slide_out",
  timeout = 500,
  top_down =  true
}

return opts
