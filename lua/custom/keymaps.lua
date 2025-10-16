-- Key mapping for toggle Snacks explorer
vim.keymap.set('n', '<leader>e', function()
  require('snacks').explorer()
end, { desc = 'Toggle Snacks Explorer' })

vim.keymap.set('n', '<leader>cc', '<cmd>ClaudeCode<CR>', { desc = 'Toggle Claude Code' })

-- Return empty table for lazy.nvim compatibility
return {}
