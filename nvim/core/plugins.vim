call plug#begin('~/.vim/plugged')

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Neovim LSP
Plug 'neovim/nvim-lspconfig'

"Tresitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate'}

" UndoTree

" FugeDiff?

" Nvim-Tree
Plug 'kyazdani42/nvim-tree.lua'
Plug 'kyazdani42/nvim-web-devicons'

" lualine -- status line
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'kyazdani42/nvim-web-devicons'

" vim-bufferline
Plug 'bling/vim-bufferline'

" vim-signify
Plug 'mhinz/vim-signify'

" nvim-hlslens -- better serach matching
Plug 'kevinhwang91/nvim-hlslens'

" indent-blankline -- visual indentation & breaks
Plug 'lukas-reineke/indent-blankline.nvim'

" delimitMate -- inserts closing quotes, paren, brackets, etc.
Plug 'raimondi/delimitMate'

" wilder -- better wildmenu
Plug 'gelguy/wilder.nvim'

" autoSave -- auto save
Plug 'Pocco81/AutoSave.nvim'

" alpha-nvim -- greeter screen
Plug 'goolord/alpha-nvim'

" vim-markdown -- syntax highlight for markdown
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'

" markdown-preview -- preview markdown from vim
Plug 'iamcco/markdown-preview.nvim', { 'do': ':call mkdp#util#install()', 'for': 'markdown'}

" ts syntax highlight
Plug 'HerringtonDarkholme/yats.vim'
" jsx syntax highlight
Plug 'maxmellon/vim-jsx-pretty'
" js syntax highlight
Plug 'pangloss/vim-javascript'
" ts syntx highlight
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
" html/jinja syntax highlight
Plug 'glench/vim-jinja2-syntax'

" tag bar 
Plug 'preservim/tagbar'

" spotify >.<
Plug 'KadoBOT/nvim-spotify' 

" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tabnine', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}

call plug#end()

""""""""""""""""""""""""""""""wilder.nvim settings""""""""""""""""""""""""""""""
" Default keys
call wilder#setup({
      \ 'modes': [':', '/', '?'],
      \ 'next_key': '<Tab>',
      \ 'previous_key': '<S-Tab>',
      \ 'accept_key': '<Down>',
      \ 'reject_key': '<Up>',
      \ })

"""""""""""""""""""""""""vim-signify settings""""""""""""""""""""""""""""""
" The VCS to use
let g:signify_vcs_list = [ 'git' ]

" Change the sign for certain operations
let g:signify_sign_change = '~'

" Do not change working directory when opening files.
let g:startify_change_to_dir = 0
let g:startify_fortune_use_unicode = 1

""""""""""""""""""""""""""""alpha-nvim settings""""""""""""""""""""""""""""
lua require'alpha'.setup(require'alpha.themes.startify'.config)
