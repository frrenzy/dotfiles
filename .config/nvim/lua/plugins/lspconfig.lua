return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        clangd = {},
        pyright = {},
        html = {},
        cssls = {},
        cssmodules_ls = {
          filetypes = {
            "javascript",
            "javascriptreact",
            "typescript",
            "typescriptreact",
            "vue",
            "svelte",
          },
        },
        stylelint_lsp = {
          filetypes = { "css", "less", "scss", "vue", "svelte" },
          settings = {
            stylelintplus = {
              autoFixOnSave = true,
            },
          },
        },
        ruff_lsp = {},
        svelte = {},
        volar = {},
        -- gopls = {
        --   cmd = { 'gopls', 'serve' },
        --   settings = {
        --     gopls = {
        --       analyses = {
        --         unused_params = true,
        --       },
        --       staticcheck = true,
        --     },
        --   },
        -- },
        rust_analyzer = {
          cmd = { "rustup", "run", "stable", "rust-analyzer" },
          filetypes = { "rust" },
          root_dir = require("lspconfig.util").root_pattern("Cargo.toml", "rust-project.json"),
          settings = {
            rust = {
              build_on_save = false,
              all_features = true,
            },
            ["rust-analyzer"] = {
              checkOnSave = true,
              overrideCommand = {
                "cargo",
                "clippy",
                "--workspace",
                "--message-format=json",
                "--all-targets",
                "--all-features",
              },
            },
          },
        },
        -- hls = {},
        zls = {},
      },
    },
  },

  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
  -- { import = "lazyvim.plugins.extras.lang.typescript" },
}
