local wezterm = require('wezterm')

local config = wezterm.config_builder()

-- window
config.color_scheme = 'Catppuccin Mocha'

config.initial_cols = 150
config.initial_rows = 35

config.enable_tab_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}

-- font config
config.font = wezterm.font('JetbrainsMono Nerd Font')
config.font_size = 16
config.line_height = 1.4

return config