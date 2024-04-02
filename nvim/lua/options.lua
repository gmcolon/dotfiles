-- [[ Setting options ]]
-- See `:help vim.o`
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.scrolloff = 999
-- Enable mouse mode
vim.o.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

vim.opt.foldlevel = 20
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldcolumn = "3"

-- Better display
vim.o.cmdheight = 2

vim.opt.list = false
vim.opt.listchars = {
	tab = "→ ",
	eol = "↲",
	trail = "⋅",
	extends = "❯",
	precedes = "❮",
}

-- Ignore certain files and folders when globing
vim.opt.wildignore = "*.o,*.obj,*.dylib,*.bin,*.dll,*.exe"
vim.opt.wildignore = vim.opt.wildignore + "*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**"
vim.opt.wildignore = vim.opt.wildignore + "*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico"
vim.opt.wildignore = vim.opt.wildignore + "*.pyc,*.pkl"
vim.opt.wildignore = vim.opt.wildignore + "*.DS_Store"
vim.opt.wildignore = vim.opt.wildignore + "*.tiff"
vim.opt.wildignore = vim.opt.wildignore + ".aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv"
vim.opt.wildignorecase = true -- ignore file and dir name cases in cmd-completion
vim.opt.autochdir = true

--vim.opt.ftplugin = true
