return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  opts = {
	  ensure_installed = { 'lua', 'vim', 'html', 'css', 'javascript', 'typescript', 'json', 'python', 'c#' },
	  highlight = { enable = true },
  }
}
