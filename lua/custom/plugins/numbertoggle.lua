return {
  'jeffkreeftmeijer/vim-numbertoggle',
  config = function()
    vim.keymap.set('n', '<leader>tn', '<cmd>:set relativenumber!<CR>', { desc = 'set relativenumber' })
  end,
}
