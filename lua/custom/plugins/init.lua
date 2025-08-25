-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'folke/snacks.nvim',
    ---@type snacks.Config
    opts = {
      explorer = {
        -- your explorer configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
      picker = {
        sources = {
          explorer = {
            hidden = true,
            ignored = true,
            -- your explorer picker configuration comes here
            -- or leave it empty to use the default settings
          },
          files = {
            hidden = true,
            ignored = false,
          },
          grep = {
            hidden = true,
            ignored = false,
          },
          grep_word = {
            hidden = true,
            ignored = false,
          },
          grep_buffers = {
            hidden = true,
            ignored = false,
          },
        },
      },
    },
  },
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    ft = { 'typescript', 'typescriptreact', 'javascript', 'javascriptreact' },
    opts = {
      settings = {
        tsserver_plugins = {},
        separate_diagnostic_server = true,
        publish_diagnostic_on = 'change',
        expose_as_code_action = 'all',
        tsserver_max_memory = 4096,
        complete_function_calls = false,
        documentFormattingProvider = false,
      },
    },
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<leader>tf]],
      direction = 'float',
    },
  },
  {
    'greggh/claude-code.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim', -- Required for git operations
    },
    config = function()
      require('claude-code').setup {
        window = {
          position = 'vertical',
        },
      }
    end,
  },
  {
    'github/copilot.vim',
  },
}
