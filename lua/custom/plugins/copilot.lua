return {
  {
    'github/copilot.vim',
  },
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function() end,
  },
  -- {
  --   'Exafunction/codeium.vim',
  --   config = function()
  --     -- Change '<C-g>' here to any keycode you like.
  --     vim.keymap.set('i', '<C-g>', function()
  --       return vim.fn['codeium#Accept']()
  --     end, { expr = true, silent = true })
  --     vim.keymap.set('i', '<c-;>', function()
  --       return vim.fn['codeium#CycleCompletions'](1)
  --     end, { expr = true, silent = true })
  --     vim.keymap.set('i', '<c-,>', function()
  --       return vim.fn['codeium#CycleCompletions'](-1)
  --     end, { expr = true, silent = true })
  --     vim.keymap.set('i', '<c-x>', function()
  --       return vim.fn['codeium#Clear']()
  --     end, { expr = true, silent = true })
  --   end,
  -- },
  --
  --
  --
  {
    'yetone/avante.nvim',
    event = 'VeryLazy',
    lazy = false,
    version = false, -- set this if you want to always pull the latest change
    opts = {
      -- add any opts here
      provider = 'openai',
      auto_suggestions_provider = 'openai',
      openai = {
        model = 'gpt-4o-mini',
      },
      behaviour = {
        auto_suggestions = false,
      },
    },
    -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
    build = 'make',
    -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'stevearc/dressing.nvim',
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      --- The below dependencies are optional,
      'nvim-tree/nvim-web-devicons', -- or echasnovski/mini.icons
      {
        -- support for image pasting
        'HakonHarnes/img-clip.nvim',
        event = 'VeryLazy',
        opts = {
          -- recommended settings
          default = {
            embed_image_as_base64 = false,
            prompt_for_file_name = false,
            drag_and_drop = {
              insert_mode = true,
            },
            -- required for Windows users
            use_absolute_path = true,
          },
        },
        -- {
        --   -- Make sure to set this up properly if you have lazy=true
        --   'MeanderingProgrammer/render-markdown.nvim',
        --   opts = {
        --     file_types = { 'markdown', 'Avante' },
        --   },
        --   ft = { 'markdown', 'Avante' },
        -- },
      },
    },
  },
  -- {
  --   'milanglacier/minuet-ai.nvim',
  --   config = function()
  --     require('minuet').setup {
  --       provider_options = {
  --         openai = {
  --           model = 'gpt-4o-mini',
  --           stream = true,
  --           api_key = 'OPENAI_API_KEY',
  --           optional = {
  --             stop = { 'end' },
  --             max_tokens = 256,
  --             top_p = 0.9,
  --           },
  --         },
  --       },
  --       provider = 'openai',
  --       auto_trigger_ft = {},
  --       keymap = {
  --         -- accept whole completion
  --         accept = '<A-A>',
  --         -- accept one line
  --         accept_line = '<A-a>',
  --         -- accept n lines (prompts for number)
  --         -- e.g. "A-z 2 CR" will accept 2 lines
  --         accept_n_lines = '<A-z>',
  --         -- Cycle to prev completion item, or manually invoke completion
  --         prev = '<A-[>',
  --         -- Cycle to next completion item, or manually invoke completion
  --         next = '<A-]>',
  --         dismiss = '<A-e>',
  --       },
  --     }
  --   end,
  -- },
  -- { 'nvim-lua/plenary.nvim' },
  -- {
  --   'hrsh7th/nvim-cmp',
  --   config = function()
  --     require('cmp').setup {
  --       sources = {
  --         { name = 'minuet' },
  --       },
  --     }
  --   end,
  -- },
  -- { 'Saghen/blink.cmp' },
}
