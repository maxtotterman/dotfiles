local settings = { noremap = true, silent = true }
vim.g.mapleader = ','
vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeToggle<CR>', settings)
vim.api.nvim_set_keymap('n', '<Leader>r', ':NvimTreeRefresh<CR>', settings)
vim.api.nvim_set_keymap('n', '<Leader>f', ':NvimTreeFindFile<CR>', settings)

-- Better navitation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })

-- Better indentation
vim.api.nvim_set_keymap('v', '<', '<gv', settings)
vim.api.nvim_set_keymap('v', '>', '>gv', settings)

-- Better ESC
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', settings)
vim.api.nvim_set_keymap('i', 'jk', '<ESC>', settings)

-- Reload nvim configuration
vim.api.nvim_set_keymap('n', '<Leader><Leader>', ':luafile $MYVIMRC<CR>', {})

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>ff', ':Telescope find_files<CR>', settings)
vim.api.nvim_set_keymap('n', '<Leader>fg', ':Telescope live_grep<CR>', settings)
vim.api.nvim_set_keymap('n', '<Leader>fb', ':Telescope buffers<CR>', settings)
vim.api.nvim_set_keymap('n', '<Leader>fh', ':Telescope help_tags<CR>', settings)
