require'alpha'.setup(require'alpha.themes.startify'.config)

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- set header
dashboard.section.header.val = {
	    "                                                     ",
	    "                                                     ",
	    "                                                     ",
	    "                                                     ",
	    "                                                     ",
	    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
	    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
	    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
	    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
	    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
	    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
	    "                                                     ",
	    "                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
	    dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
	    dashboard.button( "b", "  > Find file in Abacode BE", ":cd $HOME/git/abacode-infrastructure| Telescope find_files<CR>"),
            dashboard.button( "f", "  > Find file in Abacode FE", ":cd $HOME/git/abacode-scout-front-end| Telescope find_files<CR>"),
	    dashboard.button( "g", "  > Find Text", ":Telescope live_grep <CR>"),
	    dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
	    dashboard.button( "s", "  > Settings" , ":e ~/.config/nvim/init.vim | :cd %:p:h | split . | wincmd k | pwd<CR>"),
	    dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
}

local function footer()
local datetime = os.date(" %d-%m-%Y   %H:%M:%S")
local version = vim.version()
local nvim_version_info = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch

return datetime .. nvim_version_info
end

dashboard.section.footer.val = footer()

alpha.setup(dashboard.opts)
