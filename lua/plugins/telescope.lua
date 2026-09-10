return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  opts = {
    defaults = {
      file_ignore_patterns = {
        "node_modules",
      },
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--no-ignore",
      },
    },
    pickers = {
      find_files = {
        find_command = {
          "rg",
          "--files",
          "--no-ignore",
        },
      },
    },
  },
}
