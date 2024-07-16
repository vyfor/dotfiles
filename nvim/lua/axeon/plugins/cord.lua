return {
  'vyfor/cord.nvim',
  -- branch = 'dev',
  build = 'build',
  event = 'VeryLazy',
  -- dir = 'D:/rust projects/cord/',
  opts = {
    usercmds = true,
    log_level = 'debug',
    timer = {
      interval = 1500,
      reset_on_idle = false,
      reset_on_change = false,
    },
    editor = {
      image = nil,
      client = 'neovim',
      tooltip = 'The Superior Text Editor',
    },
    display = {
      show_time = true,
      show_repository = true,
      show_cursor_position = false,
      swap_fields = false,
      swap_icons = false,
      workspace_blacklist = {},
    },
    lsp = {
      show_problem_count = false,
      severity = 1,
      scope = 'workspace',
    },
    idle = {
      enable = false,
      show_status = true,
      timeout = 5000,
      disable_on_focus = true,
      text = 'Idle',
      tooltip = '💤',
    },
    text = {
      viewing = 'Viewing {}',
      editing = 'Editing {}',
      file_browser = 'Browsing files in {}',
      plugin_manager = 'Managing plugins in {}',
      lsp_manager = 'Configuring LSP in {}',
      vcs = 'Committing changes in {}',
      workspace = 'In {}',
    },
    buttons = {
      {
        label = 'View Repository',
        url = 'git',
      },
      {
        label = 'View Plugin',
        url = 'https://github.com/vyfor/cord.nvim'
      }
    },
    assets = nil,
  }
}

