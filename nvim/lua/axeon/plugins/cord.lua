return {
  'reblast/cord.nvim',
  branch = 'dev',
  build = './gradlew linkReleaseSharedNative --no-daemon --no-build-cache',
  lazy = false,
  --  enabled = false,
  --  event = 'UIEnter',
  --  dir = '~/Desktop/cord',
  config = function()
    require('cord').setup({
      display = {
        show_cursor_position = true,
      },
      lsp = {
        show_problem_count = true,
        severity = 2,
	      scope = 'buffer',
      },
      idle = {
        timeout = 300000,
        disable_on_focus = false,
      }
    })
  end
}
