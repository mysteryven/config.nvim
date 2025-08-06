return {
  {
    'mrcjkb/rustaceanvim',
    version = '^5',
    lazy = false,
    config = function()
      -- vim.keymap.set('n', '<leader>jc', '<cmd>RustRunner<cr>', { desc = 'Jump to Cargo.toml' })
      -- vim.keymap.set('l', '<leader>re', vim.cmd.RustLsp { 'explainError' }, { desc = 'Explain Rust error' })
    end,
  },
  {
    'mfussenegger/nvim-dap',
  },
  {
    'p00f/clangd_extensions.nvim',
    config = function()
      require('clangd_extensions').setup {}
    end,
  },
  {
    'ThePrimeagen/refactoring.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    lazy = false,
    opts = {},
    config = function()
      -- Visual mode mappings
      vim.keymap.set('x', '<leader>re', ':Refactor extract<CR>', { desc = 'Refactor: Extract function' })
      vim.keymap.set('x', '<leader>rf', ':Refactor extract_to_file<CR>', { desc = 'Refactor: Extract to file' })
      vim.keymap.set('x', '<leader>rv', ':Refactor extract_var<CR>', { desc = 'Refactor: Extract variable' })

      -- Normal + Visual mode
      vim.keymap.set({ 'n', 'x' }, '<leader>ri', ':Refactor inline_var<CR>', { desc = 'Refactor: Inline variable' })

      -- Normal mode mappings
      vim.keymap.set('n', '<leader>rI', ':Refactor inline_func<CR>', { desc = 'Refactor: Inline function' })
      vim.keymap.set('n', '<leader>rb', ':Refactor extract_block<CR>', { desc = 'Refactor: Extract block' })
      vim.keymap.set('n', '<leader>rbf', ':Refactor extract_block_to_file<CR>', { desc = 'Refactor: Extract block to file' })
    end,
  },
}
