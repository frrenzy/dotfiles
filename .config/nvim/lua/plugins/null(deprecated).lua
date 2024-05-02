if true then
  return {}
end

return {
  {
    'nvimtools/none-ls.nvim',
    opts = function()
      local nls = require 'null-ls'
      local opts = {
        root_dir = require('null-ls.utils').root_pattern('.null-ls-root', '.neoconf.json', 'Makefile', '.git'),
        debug = true,
        sources = {
          --webdev
          nls.builtins.diagnostics.eslint,
          nls.builtins.formatting.prettier,

          --lua
          nls.builtins.formatting.stylua,

          --python
          nls.builtins.formatting.blue,

          --rust
          nls.builtins.formatting.rustfmt,
        },
      }
      -- table.insert(opts.sources, require("typescript.extensions.null-ls.code-actions"))
      return opts
    end,
  },
}
