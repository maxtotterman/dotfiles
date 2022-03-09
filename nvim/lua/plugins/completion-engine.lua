local cmp = require 'cmp'
local lspkind = require 'lspkind'

cmp.setup {
  mapping = {
    ['<C-n>'] = cmp.mapping.select_next_item({ behavior = 'i' }),
    ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = 'i' }),
    ['<Down>'] = cmp.mapping.select_next_item({ behavior = 's' }),
    ['<Up>'] = cmp.mapping.select_prev_item({ behavior = 's' }),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 's' })
  },
  enabled = true,
  autocomplete = true,
  debug = false,
  min_length = 1,
  preselect = 'enable',
  throttle_time = 80,
  source_timeout = 200,
  incomplete_delay = 400,
  max_abbr_width = 100,
  max_kind_width = 100,
  max_menu_width = 100,
  documentation = false,

  formatting = {
    format = lspkind.cmp_format {
      with_text = true,
      menu = {
        nvim_lsp = '[lsp]',
        vsnip = '[snip]',
        buffer = '[buf]',
        path = '[path]',
      }
    }
  },

  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end,
  },

  source = {
    path = true,
    buffer = true,
    calc = true,
    vsnip = true,
    nvim_lsp = true,
    nvim_lua = true,
    spell = true,
    tags = true,
    snippets_nvim = true,
    treesitter = true,
  },

  sources = {
    { name = 'nvim_lsp' },
    { name = 'vsnip' },
    { name = 'path' },
    { name = 'buffer' }
  },

  experimental = {
    native_menu = false,
    ghost_text = true
  },

  snippet = {
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end
  },


}

