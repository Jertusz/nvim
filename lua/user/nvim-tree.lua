local nvim_tree = require("nvim-tree")
-- OR setup with some options
nvim_tree.setup({
  sort_by = "case_sensitive",
  open_on_setup = true,
  open_on_setup_file = true,
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
        { key = "?", action = "toggle_help" },
        { key = "o", action = "vsplit" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
