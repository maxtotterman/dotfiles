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

-- Better buffer switchin
vim.keymap.set('n', '<TAB>', ':bnext<CR>', {})
vim.keymap.set('n', '<S-TAB>', ':bprev<CR>', {})

-- Plugins
-- - File explorer
vim.keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>', settings)
vim.keymap.set('n', '<leader>r', ':NvimTreeRefresh<CR>', settings)

-- - Telescope
vim.keymap.set('n', '<leader>ff', ':Telescope find_files <CR>', get_settings('Search files'))
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', get_settings('Search text'))
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', get_settings('Search buffers'))
vim.keymap.set('n', '<leader>fr', ':Telescope lsp_references <CR>', get_settings('Search buffers'))

-- Neogit
vim.keymap.set('n', '<leader>g', ':Neogit<CR>', {})

-- Debugger
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<Leader>dn', function() require('dap').step_over() end)
vim.keymap.set('n', '<Leader>di', function() require('dap').step_into() end)
vim.keymap.set('n', '<Leader>do', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>d', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>D', function() require('dap').set_breakpoint() end)
