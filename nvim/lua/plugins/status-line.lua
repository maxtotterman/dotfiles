require('lualine').setup {
  options = {
    icons_enabled = false,
    theme = 'nord',
    component_separators = {'', '/'},
    section_separators = {'', ''},
    disabled_filetypes = {}  
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {},
    lualine_x = {'fileformat','filetype'},
    lualine_y = {},
    lualine_z = {'location'}  
  },
}
