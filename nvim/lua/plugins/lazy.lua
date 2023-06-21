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

local plugins = {
  'neovim/nvim-lspconfig', -- (LSP) Native LSP
  'onsails/lspkind.nvim', -- (LSP) Adds VS-code pictograms
  'williamboman/mason.nvim', --  (LSP) Plugin manager
  'williamboman/mason-lspconfig.nvim', -- (LSP)
  'williamboman/mason-nvim-dap.nvim', -- (Debugger)
  'jose-elias-alvarez/null-ls.nvim', -- Formatting & linting
  'lewis6991/gitsigns.nvim', -- (GIT) Add sign
  'TimUntersberger/neogit', -- (GIT) Diff viewer
  'nvim-lua/plenary.nvim', -- (MISC) Needed util functions
  'folke/which-key.nvim',-- (UI) Keybind displayer
  'nvim-tree/nvim-web-devicons', -- (UI) Icons needed for plugins
  'nvim-tree/nvim-tree.lua', -- (UI) File explorer
  'nvim-telescope/telescope.nvim', -- (UI) Fuzzy finder
  'nvim-treesitter/nvim-treesitter', -- (UI) Fast syntax parser for neovim
  'echasnovski/mini.surround',
  'echasnovski/mini.pairs',
  'echasnovski/mini.move',
  'echasnovski/mini.cursorword',
  'echasnovski/mini.tabline',
  'echasnovski/mini.statusline',
  'echasnovski/mini.comment',
  'echasnovski/mini.hipatterns',
  'mfussenegger/nvim-dap',
  'mxsdev/nvim-dap-vscode-js',
  'theHamsta/nvim-dap-virtual-text',
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
local opts = {}

require("lazy").setup(plugins, opts)
