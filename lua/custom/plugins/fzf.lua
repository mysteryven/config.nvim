return {
  {
    'kevinhwang91/nvim-bqf',
    dependencies = { 'junegunn/fzf', 'junegunn/fzf.vim' },
    -- optional: add opts = {} if you want to configure `nvim-bqf` specifically
  },
  {
    'junegunn/fzf', -- This installs the FZF binary
    build = './install --bin',
  },
  {
    'junegunn/fzf.vim',
    version = '*', -- Pin to the latest stable version
  },
}
