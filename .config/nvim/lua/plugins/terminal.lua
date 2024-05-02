return {
  {
    'NvChad/nvterm',
    config = function()
      require('nvterm').setup()
    end,
    keys = {
      {
        '<F7>',
        function()
          require('nvterm.terminal').send('cd ~/.config/nvim', 'float')
        end,
        mode = { 'n' },
        desc = 'Open terminal in config dir',
      },
      {
        '<F8>',
        function()
          require('nvterm.terminal').toggle 'float'
        end,
        mode = { 'n', 't' },
        desc = 'Toggle float terminal',
      },
      {
        '<F9>',
        function()
          require('nvterm.terminal').toggle 'horizontal'
        end,
        mode = { 'n', 't' },
        desc = 'Toggle horizontal terminal',
      },
      {
        '<F10>',
        function()
          require('nvterm.terminal').toggle 'vertical'
        end,
        mode = { 'n', 't' },
        desc = 'Toggle vertical terminal',
      },
    },
  },
}
