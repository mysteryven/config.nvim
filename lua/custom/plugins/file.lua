return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    config = function()
      require('neo-tree').setup {
        filesystem = {
          filtered_items = {
            visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
            hide_dotfiles = false,
            hide_gitignored = true,
          },
        },
      }
    end,
  },
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>hl', vim.cmd.UndotreeToggle, { noremap = true, desc = 'list undo history' })
    end,
  },
  {
    'unblevable/quick-scope',
  },
  {
    'mg979/vim-visual-multi',
  },
  {
    'dmtrKovalenko/fff.nvim',
    build = 'cargo build --release',
    -- or if you are using nixos
    -- build = "nix run .#release",
    opts = {
      -- pass here all the options
    },
    keys = {
      {
        'ff', -- try it if you didn't it is a banger keybinding for a picker
        function()
          require('fff').find_files() -- or find_in_git_root() if you only want git files
        end,
        desc = 'Open file picker',
      },
    },
  },
}
