vim.pack.add { 'https://github.com/pmizio/typescript-tools.nvim' }
require('typescript-tools').setup {
  settings = {
    complete_function_calls = true,
    jsx_close_tag = {
      enable = true,
      filetypes = { 'javascriptreact', 'typescriptreact' },
    },
  },
}
