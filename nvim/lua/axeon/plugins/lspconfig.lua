local M = {
  'neovim/nvim-lspconfig',
  event = 'InsertEnter'
}

local function configure_servers(lsp)
  -- Lua
  lsp.lua_ls.setup {
    settings = {
      Lua = {
        runtime = {
          version = 'LuaJIT',
        },
        diagnostics = {
          globals = { 'vim' },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file('', true),
        },
        telemetry = {
          enable = false,
        },
      },
    },
  }

  -- Rust
  lsp.rust_analyzer.setup {
    settings = {
      ['rust-analyzer'] = {
        check = {
          command = 'clippy',
        },
      },
    },
  }

  -- Kotlin
  lsp.kotlin_language_server.setup {}
end

function M.config()
  local lsp = require('lspconfig')

  configure_servers(lsp)
end

return M