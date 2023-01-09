local highlights = require("nord").bufferline.highlights({
    italic = true,
    bold = true,
})

require("bufferline").setup{
  options = {
    offsets = {
      {
        filetype = "NvimTree",
        text = "File explorer",
        highlight = "Directory",
        separator = false
      }
    },
    show_close_icon = false
  },
  highlights = highlights,
}
