return {
  'nvim-treesitter/nvim-treesitter',
  -- build = ':TSUpdate',
  event = 'BufRead',
  config = function()
    local configs = require('nvim-treesitter.configs')

    configs.setup({
      ensure_installed = { "kotlin", "java", "rust", "lua", "javascript", "html", "css", "c" },
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
  end
}
