local saga = require 'lspsaga'

saga.init_lsp_saga {
  border_style = "round",
  code_action_keys = {
    quit = 'q',
    exec = '<CR>'
  }
}
