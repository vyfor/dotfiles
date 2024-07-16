return {
  enabled = false,
  'vyfor/foobar2000.nvim',
  event = 'UIEnter',
  config = function()
    require('foobar2000').setup({
      seek_duration = '1m'
    })
  end
}
