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

" vim-airline
Plug 'vim-airline/vim-airline'
" vim-airline-themes
Plug 'vim-airline/vim-airline-themes'

" vim-bufferline
Plug 'bling/vim-bufferline'

" vim-signify
Plug 'mhinz/vim-signify'

" nvim-hlslens -- better serach matching
Plug 'kevinhwang91/nvim-hlslens'

" Themes
Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'

Plug 'neoclide/coc.nvim', {'branch': 'release'}  
Plug 'neoclide/coc-python', {'do': 'yarn install --frozen-lockfile'}  
Plug 'neoclide/coc-tabnine', {'do': 'yarn install --frozen-lockfile'}  
Plug 'neoclide/coc-yaml', {'do': 'yarn install --frozen-lockfile'}  
Plug 'neoclide/coc-json', {'do': 'yarn install --frozen-lockfile'}

call plug#end()


