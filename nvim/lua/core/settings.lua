local g = vim.g -- global options
local o = vim.opt -- options

-- Global settings
g.mapleader = ","
g.loaded_netrw = 1 -- disable netrw at the very start of your init.lua (strongly advised)
g.loaded_netrwPlugin = 1 -- disable netrw at the very start of your init.lua (strongly advised)
g.clipboard = "unnamedplus"

-- Backup settings
o.backup = false -- This is recommended
o.writebackup = false -- This is recommended
o.undofile = true
o.swapfile = false
o.undodir = vim.fn.stdpath("cache") .. "/undo"

-- Better editor UI
o.termguicolors = true -- Enables 24-bit RGB colors
o.title = true -- Set the title of the window to the value of the titlestring
o.number = true -- Line numbers
o.numberwidth = 1
o.relativenumber = false -- Display which line currently on
o.splitbelow = true -- Horizontal splits will automatically be below
o.splitright = true -- Vertical splits will automatically be to the right
o.cmdheight = 1 -- Less space for displaying messages
o.pumheight = 10 -- Makes popup menu smaller
o.conceallevel = 0 -- So that I can see `` in markdown files
o.cursorline = true -- Highlight the current line
o.scrolloff = 4 -- ?
o.sidescrolloff = 4 -- ?
o.showmode = false -- Hide modes
o.signcolumn = "yes" -- Always show signcolumn, otherwise it would shift the text each time

-- Better editing
o.list = true -- List character
o.listchars = "tab:»·,trail:·,nbsp:·" -- Format characters
o.smarttab = true -- Makes tabbing smarter will realize you have 2 vs 4
o.expandtab = true -- Converts tabs to spaces
o.smartindent = true -- Makes indenting smart
o.autoindent = true -- Good auto indent
o.tabstop = 2 -- Insert 2 spaces for a tab
o.shiftwidth = 2 -- Change the number of space characters inserted for indentation
o.showtabline = 2 -- Always display tabline
o.laststatus = 2 -- Always display statusline

-- Better search
o.hlsearch = true -- Highlight all matches on previous search pattern
o.smartcase = true -- ?
o.showmatch = true -- Show matching brackets
o.ignorecase = true -- Case insensitive

-- Misc
o.hidden = true -- Required to keep multiple buffers open multiple buffers
o.encoding = "utf-8" -- The encoding displayed
o.fileencoding = "utf-8" -- The encoding written to file
o.completeopt = "menu,menuone,noselect"
o.timeoutlen = 300 -- Decrease update time
o.updatetime = 200 -- Decrease update time
o.spell = false -- Disable spellchecking

-- Folding
o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
o.fillchars = "fold: "
o.foldtext = "folded"
o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
