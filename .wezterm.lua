local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.color_scheme = 'Hacktober'

config.font = wezterm.font("0xProto Nerd Font")
config.font_size = 12

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.8
config.macos_window_background_blur = 30

return config
