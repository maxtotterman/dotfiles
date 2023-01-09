local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function()
  use {
    'wbthomason/packer.nvim',
    -- Fast syntax parser for neovim
    'nvim-treesitter/nvim-treesitter',
    --  Keybind displayer
    'folke/which-key.nvim',
    -- LSP config
    'neovim/nvim-lspconfig',
    'onsails/lspkind.nvim',
    -- Packer manager for: LSP, DAP, Linters and formatters
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    -- Formatting & linting
    'jose-elias-alvarez/null-ls.nvim',
    -- Git
    -- - Signs
    'lewis6991/gitsigns.nvim',
    -- - Diff viewer
    'TimUntersberger/neogit',
    -- Font icons
    'nvim-tree/nvim-web-devicons',
    -- Some util lib for packages
    'nvim-lua/plenary.nvim',
    -- Diagnostics bar
    'folke/trouble.nvim',
  }
  -- Code completion
  use {
    'hrsh7th/nvim-cmp', requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/vim-vsnip',
      'hrsh7th/cmp-vsnip',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline'
    }
  }
  -- Colorscheme
  use { "shaunsingh/nord.nvim" }
  -- Fuzzy finder
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.0' }
  -- Filetree explorer
  use { 'nvim-tree/nvim-tree.lua' }
  -- Tab/Bufferline
  use { 'akinsho/bufferline.nvim', tag = "v3.*" }
  -- Statusline
  use { 'nvim-lualine/lualine.nvim' }
end)
