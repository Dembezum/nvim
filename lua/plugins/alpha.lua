local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set new header
dashboard.section.header.val = {
    " ________                      __  __                     ",
    "/\\_____  \\                    /\\ \\/\\ \\  __                ",
    "\\/____//'/'  __  __    ___ ___\\ \\ \\ \\ \\/\\_\\    ___ ___    ",
    "     //'/'  /\\ \\/\\ \\ /' __` __`\\ \\ \\ \\ \\/\\ \\ /' __` __`\\  ",
    "    //'/'___\\ \\ \\_\\ \\/\\ \\/\\ \\/\\ \\ \\ \\_/ \\ \\ \\/\\ \\/\\ \\/\\ \\ ",
    "    /\\_______\\ \\____/\\ \\_\\ \\_\\ \\_\\ `\\___/\\ \\_\\ \\_\\ \\_\\ \\_\\",
    "    \\/_______/\\/___/  \\/_/\\/_/\\/_/`\\/__/  \\/_/\\/_/\\/_/\\/_/",
    "                                                          ",
    "                                                          "
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button("e", "  > New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("f", "  > Find file", ":cd $HOME | Telescope find_files<CR>"),
    dashboard.button("r", "  > Recent", ":Telescope oldfiles<CR>"),
    dashboard.button("s", "  > Settings", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button("q", "  > Quit NVIM", ":qa<CR>")
}

-- Set footer (commented out since it's related to a fork and pull request)
-- local fortune = require("alpha.fortune") 
-- dashboard.section.footer.val = fortune()

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])

