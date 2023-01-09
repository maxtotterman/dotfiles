local lspconfig = require('lspconfig')

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP actions',
  callback = function()
    local bufmap = function(mode, lhs, rhs, desc)
      local opts = {buffer = true}

      if desc then
        opts.desc = desc
      end

      vim.keymap.set(mode, lhs, rhs, opts)
    end

    -- Jump to the definition
    bufmap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')

    -- Jump to declaration
    bufmap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')

    -- Lists all the implementations for the symbol under the cursor
    bufmap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')

    -- Lists all the references 
    bufmap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<cr>')

    -- Displays a function's signature information
    bufmap('n', '<space>k', '<cmd>lua vim.lsp.buf.signature_help()<cr>', 'Display a functions signature information')

    -- Displays hover information about the symbol under the cursor
    bufmap('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<cr>', 'Display hover information')

    -- Jumps to the definition of the type symbol
    bufmap('n', '<space>d', '<cmd>lua vim.lsp.buf.type_definition()<cr>', 'Jump to defenition under the symbol')

    -- Renames all references to the symbol under the cursor
    bufmap('n', '<space>r', '<cmd>lua vim.lsp.buf.rename()<cr>', 'Rename all references under the symbol')

    -- Selects a code action available at the current cursor position
    bufmap('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<cr>', 'Code actions')

    -- Show diagnostics in a floating window
    bufmap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<cr>', 'Show diagnostic')
  end
})

local lsp_flags = {
  debounce_text_changes = 150,
}

local lsp_defaults = lspconfig.util.default_config

lsp_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lsp_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

require('lspconfig')['tsserver'].setup{
    flags = lsp_flags,
}
