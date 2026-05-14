vim.pack.add { 'https://github.com/folke/snacks.nvim' }
require('snacks').setup {
  explorer = {},
  terminal = {},
  input = {},
  picker = {
    sources = {
      explorer = { hidden = true, ignored = true },
      files = { hidden = true, ignored = false },
      grep = { hidden = true, ignored = false },
      grep_word = { hidden = true, ignored = false },
      grep_buffers = { hidden = true, ignored = false },
    },
  },
}

-- Route vim.ui.select / vim.ui.input through snacks
vim.ui.select = Snacks.picker.select
vim.ui.input = Snacks.input.input

vim.keymap.set('n', '<leader>e', function() Snacks.explorer() end, { desc = 'Toggle Snacks [E]xplorer' })
vim.keymap.set('n', '<leader>tf', function() Snacks.terminal.toggle() end, { desc = '[T]oggle [F]loating Terminal' })
