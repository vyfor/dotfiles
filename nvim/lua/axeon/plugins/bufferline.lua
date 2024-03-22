return {
  'akinsho/bufferline.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
    'tpope/vim-sleuth'
  },
  event = 'BufAdd',
  opts = {
    options = {
      indicator_icon = "▎",
      modified_icon = "●",
      buffer_close_icon = "",
      close_icon = "",
      left_trunc_marker = "",
      right_trunc_marker = "",
      numbers = "ordinal",
      max_name_length = 15,
      max_prefix_length = 6,
      diagnostics = "nvim_lsp",
      show_buffer_icons = true,
      show_buffer_close_icons = false,
      show_close_icon = false,
      persist_buffer_sort = true,
      enforce_regular_tabs = true,
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and "" or ""
        return icon .. count
      end,
    }
  },
  config = function()
    local bufferline = require('bufferline')
    vim.keymap.set('n', '<leader>0', function() bufferline.go_to_buffer(-1, true) end)
    vim.keymap.set('n', '<leader>1', function() bufferline.go_to_buffer(1, true) end)
    vim.keymap.set('n', '<leader>2', function() bufferline.go_to_buffer(2, true) end)
    vim.keymap.set('n', '<leader>3', function() bufferline.go_to_buffer(3, true) end)
    vim.keymap.set('n', '<leader>4', function() bufferline.go_to_buffer(4, true) end)
    vim.keymap.set('n', '<leader>5', function() bufferline.go_to_buffer(5, true) end)
    vim.keymap.set('n', '<leader>6', function() bufferline.go_to_buffer(6, true) end)
    vim.keymap.set('n', '<leader>7', function() bufferline.go_to_buffer(7, true) end)
    vim.keymap.set('n', '<leader>8', function() bufferline.go_to_buffer(8, true) end)
    vim.keymap.set('n', '<leader>9', function() bufferline.go_to_buffer(9, true) end)
  end
}
