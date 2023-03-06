local opt = vim.opt
local buf = vim.b
local wo = vim.wo
local api = vim.api

-- Define autocommands with Lua APIs
-- See: h:api-autocmd, h:augroup
local augroup = api.nvim_create_augroup   -- Create/get autocommand group
local autocmd = api.nvim_create_autocmd   -- Create autocommandopt.exrc = true

-- Show line number and relative line number
opt.number = true
opt.relativenumber = true

-- opt.nohlsearch "Breaks hlslens

buf.autoindent = true
buf.smartindent = true
wo.wrap = true
wo.linebreak = true
wo.list = false
opt.incsearch = true

-- Ignore case in general, but become case-sensitive when uppercase is present
opt.ignorecase = true
opt.smartcase = true

-- Enable true color support. Do not opt.this option if your terminal does not
-- support true colors! For a comprehensive list of terminals supporting true
-- colors, see https://github.com/termstandard/colors and https://gist.github.com/XVilka/8346728.
opt.termguicolors = true

-- Minimum lines to keep above and below cursor when scrolling
opt.scrolloff=10

opt.colorcolumn='88'
opt.splitbelow = true
opt.splitright = true

-- Clipboard settings, always use clipboard for all delete, yank, change, put
-- operation, see https://stackoverflow.com/q/30691466/6064933
opt.clipboard ='unnamedplus'

-- Ignore certain files and folders when globing
opt.wildignore = '*.o,*.obj,*.dylib,*.bin,*.dll,*.exe'
opt.wildignore = opt.wildignore + '*/.git/*,*/.svn/*,*/__pycache__/*,*/build/**'
opt.wildignore = opt.wildignore + '*.jpg,*.png,*.jpeg,*.bmp,*.gif,*.tiff,*.svg,*.ico'
opt.wildignore = opt.wildignore + '*.pyc,*.pkl'
opt.wildignore = opt.wildignore + '*.DS_Store'
opt.wildignore = opt.wildignore + '*.tiff'
opt.wildignore = opt.wildignore + '.aux,*.bbl,*.blg,*.brf,*.fls,*.fdb_latexmk,*.synctex.gz,*.xdv'
opt.wildignorecase = true-- ignore file and dir name cases in cmd-completion

-- General tab settings
-- opt.tabstop=4       " number of visual spaces per TAB
-- opt.softtabstop=4   " number of spaces in tab when editing
-- opt.shiftwidth=4    " number of spaces to use for autoindent
-- opt.expandtab       " expand tab to spaces so that tabs are spaces
-- Set indentation to 2 spaces
augroup('setIndent', { clear = true })
autocmd('Filetype', {
  group = 'setIndent',
  pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'typescript',
    'javascriptreact', 'typescriptreact', 'yaml', 'lua'
  },
  command = 'setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2'
})
autocmd('Filetype', {
  group = 'setIndent',
  pattern = 'python',
  command = 'setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4'
})

-- Remove whitespace on save
autocmd('BufWritePre', {
  pattern = '',
  command = ":%s/\\s\\+$//e"
})

-- Set matching pairs of characters and highlight matching brackets
opt.matchpairs = '<:>'
opt.matchpairs:append{'「:」'}
opt.matchpairs:append{'『:』'}
opt.matchpairs:append{'【:】'}
opt.matchpairs:append{'“:”'}
opt.matchpairs:append{'‘:’'}
opt.matchpairs:append{'《:》'}

-- Break line at predefined characters
opt.linebreak = true
-- Character to show before the lines that have been soft-wrapped
opt.showbreak = '↪ '

-- List all matches and complete till longest common string
opt.wildmode = 'list:longest'

-- Disable showing current mode on command line since statusline plugins can show it.
opt.showmode = false

-- Fileformats to use for new files
opt.fileformats=unix,dos

-- Ask for confirmation when handling unsaved or read-only files
--opt.confirm = true

-- Do not use visual and errorbells
opt.visualbell = true
opt.errorbells = false

-- The number of command and search history to keep
opt.history=500

-- Auto-write the file based on some condition
opt.autowrite = true

-- Persistent undo even after you close a file and re-open it
opt.undofile = true

opt.shortmess:append("a")
opt.shortmess:append("c")
-- Do not show "match xx of xx" and other messages during auto-completion
opt.shortmess:append("S")

-- Do not show search match count on bottom right (seriously, I would strain my
-- neck looking at it). Using plugins like vim-anzu or nvim-hlslens is a better
-- choice, IMHO.

-- Completion behaviour
vim.o.completeopt="menuone,noinsert,noselect,preview"
--vim.o.completeopt:append("noinsert")  -- Auto select the first completion entry
--vim.o.completeopt:append("menuone") -- vhow menu even if there is only one item
--vim.o.completeopt:append("preview") -- Disable the preview window

opt.pumheight=10  -- Maximum number of items to show in popup menu
opt.pumblend=10  -- pseudo transparency for completion menu

opt.winblend=5  -- pseudo transparency for floating window

-- Insert mode key word completion setting
-- opt.complete+=kspell complete-=w complete-=b complete-=u complete-=t

opt.spelllang=en  -- Spell languages
opt.spellsuggest='9'  -- show 9 spell suggestions at most

-- Align indent to next multiple value of shiftwidth. For its meaning,
-- see http://vim.1045645.n5.nabble.com/shiftround-option-td5712100.html
opt.shiftround=true

opt.virtualedit=block  -- Virtual edit is useful for visual block edit

opt.synmaxcol=200  -- Text after this column number is not highlighted
opt.startofline = false


-- Set up cursor color and shape in various mode, ref:
-- https://github.com/neovim/neovim/wiki/FAQ#how-to-change-cursor-color-in-the-terminal
opt.guicursor='n-v-c:block-Cursor/lCursor,i-ci-ve:ver25-Cursor2/lCursor2,r-cr:hor20,o:hor20'

opt.signcolumn='auto:2'

-- diff options
opt.diffopt= 'vertical',
opt.diffopt:append{'filler'}
opt.diffopt:append{'closeoff'}
opt.diffopt:append{'context:3'}
opt.diffopt:append{'internal'}
opt.diffopt:append{'indent-heuristic'}
--opt.diffopt:append{'algorith:histogram'}
--opt.diffopt+=vertical  -- show diff in vertical position
--opt.diffopt+=filler  -- show filler for deleted lines
--opt.diffopt+=closeoff  -- turn off diff when one file window is closed
--opt.diffopt+=context:3  -- context for diff
--opt.diffopt+=internal,indent-heuristic,algorithm:histogram

opt.foldlevel=20
opt.foldmethod='expr'
opt.foldexpr='nvim_treesitter#foldexpr()'
opt.foldcolumn='3'

opt.list = false
opt.listchars = {
  tab = "→ ",
  eol = "↲",
  trail = "⋅",
  extends = "❯",
  precedes = "❮"
}

-- Better display
vim.o.cmdheight = 2
