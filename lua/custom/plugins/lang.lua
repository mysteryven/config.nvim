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
}
