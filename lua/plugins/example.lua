return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {},
        kotlin_lsp = {},
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        },
      },

      setup = {
        kotlin_lsp = function(_, opts)
          local lspconfig = require("lspconfig")
          local configs = require("lspconfig.configs")
          local util = require("lspconfig.util")

          -- Register a custom lspconfig entry for JetBrains kotlin-lsp
          if not configs.kotlin_lsp then
            configs.kotlin_lsp = {
              default_config = {
                cmd = {
                  vim.fn.exepath("kotlin-lsp") ~= "" and vim.fn.exepath("kotlin-lsp")
                    or (vim.fn.stdpath("data") .. "/mason/bin/kotlin-lsp"),
                  "--stdio",
                },
                filetypes = { "kotlin" },
                root_dir = util.root_pattern(
                  "settings.gradle",
                  "settings.gradle.kts",
                  "build.gradle",
                  "build.gradle.kts",
                  "pom.xml",
                  ".git"
                ),
                single_file_support = true,
              },
            }
          end

          lspconfig.kotlin_lsp.setup(opts)
          return true -- tells LazyVim: "stop, I handled this server"
        end,
      },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "ktfmt", "kotlin-lsp" },
    },
  },
}
