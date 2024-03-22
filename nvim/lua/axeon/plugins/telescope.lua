return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  cmd = 'Telescope',
  keys = {
    { '<leader>ff', ':Telescope find_files<CR>', desc = 'Find files using Telescope' },
    { '<leader>fb', ':Telescope buffers<CR>', desc = 'List buffers using Telescope' },
    { '<leader>fh', ':Telescope help_tags<CR>', desc = 'Search help tags using Telescope' },
    { '<leader>fw', ':Telescope live_grep<CR>', desc = 'Search text using Telescope' },
    { '<leader>t', ':Telescope lsp_type_definitions theme=dropdown<CR>', desc = 'Search type definitions using Telescope' },
    { '<leader>u', ':Telescope lsp_references theme=dropdown<CR>', desc = 'Search references using Telescope' },
    { '<leader>i', ':Telescope lsp_implementations theme=dropdown<CR>', desc = 'Search implementations using Telescope' },
  }
}
