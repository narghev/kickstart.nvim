vim.pack.add { 'https://github.com/akinsho/toggleterm.nvim' }
require('toggleterm').setup {
  open_mapping = [[<leader>tf]],
  direction = 'float',
}
