vim.g.mapleader = ','

local settings = { noremap = true, silent = true }

local get_settings = function(desc)
  local settings = { noremap = true, silent = true }
  if desc then
    settings.desc = desc
  end
  return settings
end

-- Buffer management
vim.keymap.set('n', '<leader>bd', '<Cmd>bd!<Cr>', get_settings('Close current buffer'))
vim.keymap.set('n', '<leader>bD', '<Cmd>%bd|e#|bd#<Cr>', get_settings('Close all buffers'))

-- Better navitation
vim.keymap.set('n', '<C-h>', '<C-w>h', { silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { silent = true })

-- Better indentation
vim.keymap.set('v', '<', '<gv', settings)
vim.keymap.set('v', '>', '>gv', settings)

-- Better ESC
vim.keymap.set('i', 'jj', '<Esc>', settings)
vim.keymap.set('i', 'jk', '<Esc>', settings)

-- Reload nvim configuration
vim.keymap.set('n', '<Leader><Leader>', ':luafile %<CR>')

-- Better save
vim.keymap.set('i', '<C-s>', '<Esc>:w<CR>a')
vim.keymap.set('n', '<C-s>', ':w<CR>')

-- Plugins
-- - File explorer
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>', settings)
vim.keymap.set('n', '<leader>r', ':NvimTreeRefresh<CR>', settings)

-- - Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files <CR>', get_settings('Search files'))
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', get_settings('Search text'))
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', get_settings('Search buffers'))

-- - Bufferline
vim.keymap.set('n', '<TAB>', ':BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', {})
vim.keymap.set('n', '<leader><TAB>', ':BufferLinePick<CR>', {})

-- - Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", get_settings('Toggle Trouble'))
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", settings)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", settings)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", settings)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", settings)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", settings)

-- Neogit
vim.keymap.set('n', '<leader>g', ':Neogit<CR>', {})
