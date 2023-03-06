-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use('wbthomason/packer.nvim')

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use{'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use('nvim-treesitter/nvim-treesitter-context')

  use('nvim-treesitter/playground')
  -- Nvim-Tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- nvim-hlslens -- better serach matching
  use('kevinhwang91/nvim-hlslens')

  -- indent-blankline -- visual indentation & breaks
  use('lukas-reineke/indent-blankline.nvim')

  -- delimitMate -- inserts closing quotes, paren, brackets, etc.
  use('raimondi/delimitMate')


  -- autoSave -- auto save
  use('Pocco81/auto-save.nvim')

  -- alpha-nvim -- greeter screen
  use('goolord/alpha-nvim')

  -- Possible key bindings
  use('folke/which-key.nvim')

  -- syntax highlight
  use('sheerun/vim-polyglot')
  -- better syntax highlight
  use('David-Kunz/markid')
  -- For async completion
  use('Shougo/deoplete.nvim')
  -- For Denite features
  use('Shougo/denite.nvim')

  use('mbbill/undotree')
  use('tpope/vim-fugitive')

  -- html/jinja syntax highlight
  use('glench/vim-jinja2-syntax')

  -- tag bar
  use('preservim/tagbar')

  -- Auto format code -- must install formatting programs
  use('vim-autoformat/vim-autoformat')

  -- changes current working directory
  use('airblade/vim-rooter')

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use('machakann/vim-highlightedyank')

  use {
    'm-demare/hlargs.nvim',
  requires = { 'nvim-treesitter/nvim-treesitter' }
  }

  use {
    'windwp/nvim-autopairs',
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Git blame
  use('APZelos/blamer.nvim')

  use {'kevinhwang91/nvim-bqf'}
  -- optional
  use {'junegunn/fzf', run = function()
        vim.fn['fzf#install']()
    end
  }

  use {
      'andymass/vim-matchup',
      setup = function()
          -- may set any options here
        vim.g.matchup_matchparen_offscreen = { method = "popup" }
      end
  }

  use({
    "folke/noice.nvim",
    config = function()
      require("noice").setup({
          -- add any options here
        })
    end,
    requires = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
        "MunifTanjim/nui.nvim",
        -- OPTIONAL:
        --   `nvim-notify` is only needed, if you want to use the notification view.
          --   If not available, we use `mini` as the fallback
          "rcarriga/nvim-notify",
        }
      })

  use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

  use {'RRethy/vim-illuminate'}

  -- spotify >.<
  --use('KadoBOT/nvim-spotify'

  -- Themes
  --use('kaiuri/nvim-juliana'
  --use('luisiacc/gruvbox-baby', {'branch': 'main'}
  --use('gruvbox-community/gruvbox'
  --use('sainnhe/gruvbox-material'
  use('arcticicestudio/nord-vim')
  use('sainnhe/everforest')
  use {
    "mcchrish/zenbones.nvim",
    requires = "rktjmp/lush.nvim"
  }
  use 'folke/tokyonight.nvim'
  use { "catppuccin/nvim", as = "catppuccin" }

  use('folke/lsp-colors.nvim')
  use('vim-python/python-syntax')

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }
end)
