local wezterm = require("wezterm")

wezterm.on("gui-startup", function()
  local _, _, window = wezterm.mux.spawn_window{}
  window:gui_window():maximize()
end)

local config = wezterm.config_builder()

-- uncomment for auto-load wsl
-- config.default_prog = { "wsl", "-d", "Ubuntu", "--cd", "~" }

-- window
config.color_scheme = "Kanagawa Dragon (Gogh)" -- needs nightly build

config.initial_cols = 150
config.initial_rows = 40

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- uncomment for macos
-- config.window_background_opacity = 0.85
-- config.macos_window_background_blur = 20 -- uncomment for macos

-- uncomment for windows
-- config.window_background_opacity = 0.5
-- config.win32_system_backdrop = "Tabbed"

-- tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- font config macos
-- config.font = wezterm.font("JetbrainsMono Nerd Font")
-- config.font_size = 16
-- config.line_height = 1.4

-- font config windows
-- config.font = wezterm.font("JetBrainsMono NF")
-- config.font_size = 12
-- config.line_height = 1.2

-- colors
config.window_frame = {}
config.colors = require("colors")

-- others
config.keys = {
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
}

return config
