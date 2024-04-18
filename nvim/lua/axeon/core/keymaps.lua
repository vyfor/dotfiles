local keymaps = {
  n = {
    ['<C-d>'] = {
      '<C-d>zz', desc = 'Move half screen down and center view',
    },
    ['<C-u>'] = {
      '<C-u>zz', desc = 'Move half screen up and center view',
    },
    ['<leader>e'] = {
      ':Dirvish<CR>', desc = 'Open Dirvish directory browser',
    },
    ['<leader>ff'] = {
      ':Telescope find_files<CR>', desc = 'Find files using Telescope',
    },
    ['<leader>fb'] = {
      ':Telescope buffers<CR>', desc = 'List buffers using Telescope',
    },
    ['<leader>fh'] = {
      ':Telescope help_tags<CR>', desc = 'Search help tags using Telescope',
    },
    ['<leader>fw'] = {
      ':Telescope live_grep<CR>', desc = 'Search text using Telescope',
    },
    ['<leader>t'] = {
      '<cmd>Telescope lsp_definitions theme=dropdown<CR>', desc = 'Search definitions using Telescope',
    },
    ['<leader>u'] = {
      '<cmd>Telescope lsp_references theme=dropdown<CR>', desc = 'Search references using Telescope',
    },
    ['<leader>i'] = {
      '<cmd>Telescope lsp_implementations theme=dropdown<CR>', desc = 'Search implementations using Telescope',
    },
    ['<leader>gu'] = {
      '<cmd>UndotreeToggle<CR>', desc = 'Toggle undotree'
    },
    ['<C-h>'] = {
      '<C-w>h', desc = 'Move to the window on the left',
    },
    ['<C-j>'] = {
      '<C-w>j', desc = 'Move to the window below',
    },
    ['<C-k>'] = {
      '<C-w>k', desc = 'Move to the window above',
    },
    ['<C-l>'] = {
      '<C-w>l', desc = 'Move to the window on the right',
    },
    ['<C-s>'] = {
      '<C-w>s', desc = 'Split window horizontally',
    },
    ['<C-S>'] = {
      '<C-w>v', desc = 'Split window vertically',
    },
    ['C-w'] = {
      '<C-w>c', desc = 'Close window',
    },
    ['<leader>v'] = {
      '"*', desc = 'Select system clipboard register',
    }
  },
  i = {
    ['jk'] = {
      '<Esc>', desc = 'Exit insert mode',
    },
  },
  v = {
    ['<'] = {
      '<gv', desc = 'Unindent line'
    },
    ['>'] = {
      '>gv', desc = 'Indent line'
    },
    ['<A-j>'] = {
      ':m \'>+1<CR>gv=gv', desc = 'Move selection down'
    },
    ['<A-k>'] = {
      ':m \'<-2<CR>gv=gv', desc = 'Move selection up'
    },
  },
  x = {
    ['J'] = {
      ':m \'>+1<CR>gv-gv', desc = 'Move selection down'
    },
    ['K'] = {
      ':m \'<-2<CR>gv-gv', desc = 'Move selection up'
    },
    ['<A-j>'] = {
      ':m \'>+1<CR>gv-gv', desc = 'Move selection down'
    },
    ['<A-k>'] = {
      ':m \'<-2<CR>gv-gv', desc = 'Move selection up'
    },
  }
}
  
for mode, mappings in pairs(keymaps) do
  for key, mapping in pairs(mappings) do
    local opts = mapping.opts or { noremap = true, silent = true }
    opts.desc = mapping.desc

    vim.keymap.set(mode, key, mapping[1], opts)
  end
end
