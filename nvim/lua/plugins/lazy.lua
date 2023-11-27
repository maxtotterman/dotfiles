local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local opts = {}
local plugins = {
  'neovim/nvim-lspconfig', -- (LSP) Native LSP
  'onsails/lspkind.nvim', -- (LSP) Adds VS-code pictograms
  'williamboman/mason.nvim', --  (LSP) Plugin manager
  'williamboman/mason-lspconfig.nvim', -- (LSP)
  'lewis6991/gitsigns.nvim', -- (GIT) Add sign
  'NeogitOrg/neogit', -- (GIT) Diff viewer
  'nvim-lua/plenary.nvim', -- (MISC) Needed util functions
  'nvim-tree/nvim-web-devicons', -- (UI) Icons needed for plugins
  'nvim-treesitter/nvim-treesitter', -- (UI) Fast syntax parser for neovim
  'echasnovski/mini.surround', -- (MISC) Text helper 
  'echasnovski/mini.pairs',
  'echasnovski/mini.move',
  'echasnovski/mini.cursorword', -- (MISC) Adds a char under words 
  'echasnovski/mini.tabline',
  'echasnovski/mini.statusline',
  'echasnovski/mini.comment', -- (MISC) Comment helper
  'echasnovski/mini.files', -- (UI) File navigation
  'echasnovski/mini.hipatterns',  -- (UI) Highlights configured words
  'echasnovski/mini.pick',  -- (UI) Highlights configured words
  'stevearc/conform.nvim',
  -- Code completion and snippets
  {
    'hrsh7th/nvim-cmp', dependencies = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'rafamadriz/friendly-snippets'
    }
  },
  { "catppuccin/nvim", name = "catppuccin" },
}

require("lazy").setup(plugins, opts)
