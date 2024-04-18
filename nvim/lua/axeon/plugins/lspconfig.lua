local M = {
  'neovim/nvim-lspconfig',
  event = 'BufRead'
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
  -- lsp.rust_analyzer.setup {
  --   settings = {
  --     ['rust-analyzer'] = {
  --       check = {
  --         command = 'clippy',
  --       },
  --     },
  --   },
  -- }

  -- Kotlin
  lsp.kotlin_language_server.setup {}

  -- C
  lsp.clangd.setup {}
end

function M.config()
  local lsp = require('lspconfig')

  configure_servers(lsp)

  vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(args)
      local bufnr = args.buf
      local client = vim.lsp.get_client_by_id(args.data.client_id)

      if client.supports_method('textDocument/inlayHint') then
        vim.lsp.inlay_hint.enable(bufnr, true)
      end
    end
  })
end

return M
