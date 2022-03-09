local g = vim.g                         -- global options
local o = vim.o                         -- global options

g.mapleader = ","
o.termguicolors = true                  -- Enables 24-bit RGB colors 
o.hidden = true                         -- Required to keep multiple buffers open multiple buffers
o.showmatch = true                      -- Show matching brackets
o.ignorecase = true                     -- Case insensitive
o.pumheight = 10                        -- Makes popup menu smaller
o.encoding = 'utf-8'                    -- The encoding displayed
o.fileencoding = 'utf-8'                -- The encoding written to file
o.cmdheight = 1                         -- Less space for displaying messages
o.splitbelow = true                     -- Horizontal splits will automatically be below
o.splitright = true                     -- Vertical splits will automatically be to the right
o.conceallevel = 0                      -- So that I can see `` in markdown files
o.tabstop = 2                           -- Insert 2 spaces for a tab
o.shiftwidth = 2                        -- Change the number of space characters inserted for indentation
o.smarttab = true                       -- Makes tabbing smarter will realize you have 2 vs 4
o.expandtab = true                      -- Converts tabs to spaces
o.smartindent = true                    -- Makes indenting smart
o.autoindent = true                     -- Good auto indent
o.number = true                         -- Line numbers
o.background = "dark"                   -- Tell vim what the background color looks like
o.backup = false                        -- This is recommended by coc
o.writebackup = false                   -- This is recommended by coc
o.showtabline = 2                       -- Always display tabline 
o.list = true                           -- List character
o.listchars = 'tab:»·,trail:·,nbsp:·'   -- Format characters
o.completeopt = "menu,menuone,noselect"

g.nord_contrast = true
g.nord_borders = false
g.nord_disable_background = false

g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 0,
}
g.nvim_tree_icons = {
 git = {
   unstaged = "✗",
   staged = "✓",
   unmerged = "",
   renamed = "➜",
   untracked = "★",
   deleted = "",
   ignored = "◌"
   },
 folder = {
   default = "˃",
   open = "˄",
   empty = "-",
   empty_open = "+",
  }
}

-- Load the colorscheme
require('nord').set()
