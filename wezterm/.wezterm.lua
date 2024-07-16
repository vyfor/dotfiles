local wezterm = require('wezterm')

return {
  webgpu_preferred_adapter = {
    backend = 'Vulkan',
    device = 26591,
    device_type = "DiscreteGpu",
    driver = "AMD proprietary driver",
    driver_info = "22.20.27.09",
    name = "Radeon RX 580 Series",
    vendor = 4098,
  },
  front_end = 'WebGpu',
  webgpu_power_preference = 'HighPerformance',

  font = wezterm.font 'FantasqueSansMono Nerd Font',
  color_scheme = 'tokyonight_night',
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,

  default_prog = { 'C:/Program Files/nu/bin/nu.exe' },
  default_cwd = wezterm.home_dir .. '/Desktop',

  leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1500 },

  text_blink_rate = 0,
}
