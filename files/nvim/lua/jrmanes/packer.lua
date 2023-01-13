vim.cmd [[packadd packer.nvim]]

require('packer').startup(function(use)

  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }

  ----------------------------------------------------------------------------
  -- Must Have
  use 'vim-airline/vim-airline' -- https://github.com/vim-airline/vim-airline
  use 'ctrlpvim/ctrlp.vim' --  https://github.com/ctrlpvim/ctrlp.vim

  -- Git
  use 'tpope/vim-commentary' --  https://github.com/tpope/vim-commentary
  use 'airblade/vim-gitgutter' --  https://github.com/airblade/vim-gitgutter
  use 'mkitt/tabline.vim' --  https://github.com/mkitt/tabline.vim
  use 'tommcdo/vim-fugitive-blame-ext'

  use 'akinsho/nvim-bufferline.lua'
  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  ----------------------------------------------------------------------------
  -- Vim-Poligot
  use 'sheerun/vim-polyglot' -- https://vimawesome.com/plugin/vim-polyglot

  ----------------------------------------------------------------------------
  -- Telescope requirements...
  --  use 'junegunn/fzf', { 'do': { -> fzf#install() } } -- FZF
  use 'junegunn/fzf' -- FZF
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } }
  use 'tpope/vim-surround' -- surround characters shortcuts
  -- use 'nvim-telescope/telescope.nvim'
  -- use 'tpope/vim-eunuch' -- wrappers UNIX commands
  -- use 'tpope/vim-vinegar' -- file browser

  ----------------------------------------------------------------------------
  -- LSP completion source for nvim-cmp
  use {
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
  }
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'onsails/lspkind-nvim'
  use 'nvim-lua/lsp_extensions.nvim'

  ----------------------------------------------------------------------------
  --  Go
  use 'fatih/vim-go' -- https://github.com/fatih/vim-go
  -- use 'neoclide/coc.nvim'  -- https://github.com/neoclide/coc.nvim
  -- use {'neoclide/coc.nvim', branch = 'master', run = 'yarn install --frozen-lockfile'}
  -- use { 'neoclide/coc.nvim', { branch = 'release' } } -- https://github.com/neoclide/coc.nvim
  use 'SirVer/ultisnips' -- https://github.com/sirver/UltiSnips
  use 'darrikonn/vim-gofmt'

  ----------------------------------------------------------------------------
  -- Rust
  use 'simrat39/rust-tools.nvim'
  use 'rust-lang/rust.vim'

  ----------------------------------------------------------------------------
  -- Themes
  use 'gruvbox-community/gruvbox' -- Gruvbox theme
  use 'luisiacc/gruvbox-baby'
  use 'NLKNguyen/papercolor-theme' -- https://github.com/NLKNguyen/papercolor-theme
  use 'sainnhe/sonokai'
  use 'sainnhe/gruvbox-material'
  use 'shaunsingh/nord.nvim'
  use 'cocopon/iceberg.vim'
  use 'jim-at-jibba/ariake-vim-colors'
  use { "catppuccin/nvim", as = "catppuccin" } -- https://github.com/catppuccin/nvim
  use 'tpope/vim-projectionist'
  use 'tomlion/vim-solidity'
  use 'folke/tokyonight.nvim' -- https://github.com/folke/tokyonight.nvim
  --  use 'folke/tokyonight.nvim', { 'branch': 'main' } -- https://github.com/folke/tokyonight.nvim
  use { "EdenEast/nightfox.nvim", tag = "v1.0.0" }

  ----------------------------------------------------------------------------
  -- Tree file viewer
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'ryanoasis/vim-devicons' -- NERDTREE icons
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'

  ----------------------------------------------------------------------------
  -- Sidebar
  use 'preservim/nerdtree'

  ----------------------------------------------------------------------------
  -- Other
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim' -- Prettier plugin for Neovim's built-in LSP client
  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use 'L3MON4D3/LuaSnip'
  -- use 'williamboman/mason.nvim' https://github.com/williamboman/mason.nvim
  use 'windwp/nvim-autopairs'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    --  run = ':TSUpdate'
  }

  ----------------------------------------------------------------------------
  use 'wbthomason/packer.nvim'
  -- use({
  --   "kylechui/nvim-surround",
  --   tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  --   config = function()
  --       require("nvim-surround").setup({
  --           -- Configuration here, or leave empty to use defaults
  --       })
  --   end
  -- })
end)
