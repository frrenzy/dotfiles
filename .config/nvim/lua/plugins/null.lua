return {
  {
    'jose-elias-alvarez/null-ls.nvim',
    opts = function()
      local nls = require 'null-ls'
      return {
        root_dir = require('null-ls.utils').root_pattern('.null-ls-root', '.neoconf.json', 'Makefile', '.git'),
        debug = true,
        sources = {
          --webdev
          nls.builtins.diagnostics.eslint_d,
          nls.builtins.formatting.prettier,

          --lua
          nls.builtins.formatting.stylua,

          --python
          nls.builtins.formatting.blue,

          --rust
          nls.builtins.formatting.rustfmt,
        },
      }
    end,
  },
}
