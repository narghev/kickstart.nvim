vim.pack.add { 'https://github.com/folke/snacks.nvim' }
require('snacks').setup {
  explorer = {},
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
