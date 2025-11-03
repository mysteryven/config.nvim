return {
  {
    'zbirenbaum/copilot.lua',
    dependencies = {
      'copilotlsp-nvim/copilot-lsp', -- (optional) for NES functionality
    },
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {
        panel = {
          auto_refresh = true,
          enabled = true,
          keymap = {
            jump_prev = '[[',
            jump_next = ']]',
            accept = '<CR>',
            refresh = 'gr',
            open = '<M-CR>',
          },
          layout = {
            position = 'bottom', -- | top | left | right | bottom |
            ratio = 0.4,
          },
        },
        suggestion = {
          auto_trigger = true,
          keymap = {
            accept = '<Tab>',
          },
        },
      }

      vim.keymap.set('n', '<leader>ac', function()
        require('copilot.panel').toggle()
      end, { desc = 'Copilot Panel', silent = true })
    end,
  },
  -- {
  --   'folke/sidekick.nvim',
  --   opts = {
  --     -- add any options here
  --     cli = {
  --       mux = {
  --         backend = 'tmux',
  --         enabled = true,
  --       },
  --     },
  --   },
  --   keys = {
  --     {
  --       '<M-l>',
  --       function()
  --         -- if there is a next edit, jump to it, otherwise apply it if any
  --         if not require('sidekick').nes_jump_or_apply() then
  --           return '<Tab>' -- fallback to normal tab
  --         end
  --       end,
  --       expr = true,
  --       desc = 'Goto/Apply Next Edit Suggestion',
  --     },
  --     {
  --       '<c-.>',
  --       function()
  --         require('sidekick.cli').toggle()
  --       end,
  --       desc = 'Sidekick Toggle',
  --       mode = { 'n', 't', 'i', 'x' },
  --     },
  --     {
  --       '<leader>aa',
  --       function()
  --         require('sidekick.cli').toggle()
  --       end,
  --       desc = 'Sidekick Toggle CLI',
  --     },
  --     {
  --       '<leader>as',
  --       function()
  --         require('sidekick.cli').select()
  --       end,
  --       -- Or to select only installed tools:
  --       -- require("sidekick.cli").select({ filter = { installed = true } })
  --       desc = 'Select CLI',
  --     },
  --     {
  --       '<leader>ad',
  --       function()
  --         require('sidekick.cli').close()
  --       end,
  --       desc = 'Detach a CLI Session',
  --     },
  --     {
  --       '<leader>at',
  --       function()
  --         require('sidekick.cli').send { msg = '{this}' }
  --       end,
  --       mode = { 'x', 'n' },
  --       desc = 'Send This',
  --     },
  --     {
  --       '<leader>af',
  --       function()
  --         require('sidekick.cli').send { msg = '{file}' }
  --       end,
  --       desc = 'Send File',
  --     },
  --     {
  --       '<leader>av',
  --       function()
  --         require('sidekick.cli').send { msg = '{selection}' }
  --       end,
  --       mode = { 'x' },
  --       desc = 'Send Visual Selection',
  --     },
  --     {
  --       '<leader>ap',
  --       function()
  --         require('sidekick.cli').prompt()
  --       end,
  --       mode = { 'n', 'x' },
  --       desc = 'Sidekick Select Prompt',
  --     },
  --   },
  -- },
}
