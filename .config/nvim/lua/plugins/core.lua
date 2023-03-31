return {
  {
    'ellisonleao/gruvbox.nvim',
    opts = {
      transparent_mode = true,
      italic = {
        strings = false,
      },
    },
  },
  { 'LazyVim/LazyVim', opts = { colorscheme = 'gruvbox' } },
  -- {
  --   'folke/tokyonight.nvim',
  --   opts = {
  --     transparent = true,
  --     style = 'storm',
  --     styles = {
  --       sidebars = 'transparent',
  --       floats = 'transparent',
  --     },
  --   },
  -- },
  {
    'rcarriga/nvim-notify',
    opts = {
      background_colour = '#000000',
    },
  },
  { 'mbbill/undotree', keys = {
    { '<F12>', '<cmd>UndotreeToggle<cr>', desc = 'UndoTree' },
  } },
  { 'nvim-treesitter/playground' },
  { 'nvim-treesitter/nvim-treesitter-context' },
  {
    'numToStr/Comment.nvim',
    keys = {
      {
        '<leader>tc',
        function()
          require('Comment.api').toggle.linewise.current()
        end,
        desc = 'toggle comment',
      },
      {
        '<leader>tc',
        '<ESC><cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>',
        mode = 'v',
        desc = 'toggle comment',
      },
    },
  },
}
