local wezterm = require("wezterm")

local config = wezterm.config_builder()

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

config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 20 -- uncomment for macos

-- tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- font config
config.font = wezterm.font("JetbrainsMono Nerd Font")
config.font_size = 16
config.line_height = 1.4

-- colors
config.window_frame = {}
config.colors = require("colors")

-- others
config.keys = {
	{ key = "LeftArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bb" }) },
	{ key = "RightArrow", mods = "OPT", action = wezterm.action({ SendString = "\x1bf" }) },
}

return config
