local nvim_lsp = require("lspconfig")
local path_to_elixirls = vim.fn.expand("~/.lsp/elixir-ls/release/language_server.sh")
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

local on_attach = function(client, bufnr)
    local opts = { noremap = true, silent = true }
    local buf_map = vim.api.nvim_buf_set_keymap

    buf_map(bufnr, "n", "K", ":Lspsaga hover_doc<CR>", opts)
    buf_map(bufnr, "n", "gs", ":Lspsaga signature_help<CR>", opts)
    buf_map(bufnr, "n", "gr", ":Lspsaga rename<CR>", opts)
    buf_map(bufnr, "n", "gf", ":Lspsaga lsp_finder<CR>", opts)
    buf_map(bufnr, "n", "<Leader>ca", ":Lspsaga code_action<CR>", opts)
    buf_map(bufnr, "n", "<Leader>cd", ":Lspsaga show_line_diagnostics<CR>", opts)
end

nvim_lsp.tsserver.setup{
    capabilities = capabilities,
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        on_attach(client)
    end
}

nvim_lsp.elixirls.setup{
  cmd = {path_to_elixirls},
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    elixirLS = {
      -- I choose to disable dialyzer for personal reasons, but
      -- I would suggest you also disable it unless you are well
      -- aquainted with dialzyer and know how to use it.
      dialyzerEnabled = false,
      -- I also choose to turn off the auto dep fetching feature.
      -- It often get's into a weird state that requires deleting
      -- the .elixir_ls directory and restarting your editor.
      fetchDeps = false
    }
  }
}

nvim_lsp.diagnosticls.setup {
  filetypes = {"javascript", "typescript"},
  init_options = {
    linters = {
      eslint = {
        command = "./node_modules/.bin/eslint",
        rootPatterns = {".git"},
        debounce = 100,
        args = {
          "--stdin",
          "--stdin-filename",
          "%filepath",
          "--format",
          "json"
        },
        sourceName = "eslint",
        parseJson = {
          errorsRoot = "[0].messages",
          line = "line",
          column = "column",
          endLine = "endLine",
          endColumn = "endColumn",
          message = "${message} [${ruleId}]",
          security = "severity"
        },
        securities = {
          [2] = "error",
          [1] = "warning"
        }
      },
      filetypes = {
        javascript = "eslint",
        typescript = "eslint"
      }
    }
  }
}

