vim.pack.add { 'https://github.com/sainnhe/gruvbox-material' }

vim.g.gruvbox_material_background = 'hard' -- 'hard' | 'medium' | 'soft' — matches Ghostty's #1d2021
vim.g.gruvbox_material_foreground = 'material' -- 'material' | 'mix' | 'original'
vim.g.gruvbox_material_better_performance = 1

vim.cmd.colorscheme 'gruvbox-material'
