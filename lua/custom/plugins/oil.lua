return {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      vim.keymap.set('n', '-', '<cmd>Oil<CR>'),
    }
  end,
  view_options = {
    show_hidden = true,
  },
}
