local M = {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
  },
  event = 'InsertEnter',
}

function M.config()
  local cmp = require('cmp')

  cmp.setup {
    snippet = {
      expand = function(args) vim.snippet.expand(args.body) end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-c>'] = cmp.mapping.close(),
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-x>'] = cmp.mapping.complete(),
      ['<C-q>'] = cmp.mapping.abort(),
      ['<C-n>'] = cmp.mapping.select_next_item({ behaviour = cmp.SelectBehavior.Select }),
      ['<C-p>'] = cmp.mapping.select_prev_item({ behaviour = cmp.SelectBehavior.Select }),
      ['<CR>'] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
    }),
    sources = cmp.config.sources {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' },
    },
    completion = {
      autocomplete = false,
    }
  }
end

return M
