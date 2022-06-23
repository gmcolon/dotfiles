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

" indent-blankline -- visual indentation & breaks
Plug 'lukas-reineke/indent-blankline.nvim'

" delimitMate -- inserts closing quotes, paren, brackets, etc.
Plug 'raimondi/delimitMate'

" wilder -- better wildmenu
Plug 'gelguy/wilder.nvim'

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

""""""""""""""""""""""""""""vim-startify settings""""""""""""""""""""""""""""
" Do not change working directory when opening files.
let g:startify_change_to_dir = 0
let g:startify_fortune_use_unicode = 1
