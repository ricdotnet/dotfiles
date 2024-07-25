local wezterm = require('wezterm')

local config = wezterm.config_builder()

-- window
config.color_scheme = 'Catppuccin Mocha'

config.initial_cols = 150
config.initial_rows = 35

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}

-- tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- font config
config.font = wezterm.font('JetbrainsMono Nerd Font')
config.font_size = 16
config.line_height = 1.2

-- colors
config.window_frame = {}
config.colors = require('colors')

return config