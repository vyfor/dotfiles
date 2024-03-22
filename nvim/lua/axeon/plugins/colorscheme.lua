return {
  'folke/tokyonight.nvim',
  event = 'UIEnter',
  priority = 1000,
  config = function()
    vim.cmd [[colorscheme tokyonight-night]]
  end
}