-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Font
config.font = wezterm.font("IosevkaNerdFontMono")
config.font_size = 12

-- Theme
config.color_scheme = "Gruvbox Dark (Gogh)"

-- Opacity
config.window_background_opacity = 1.0

-- Tab bar
config.enable_tab_bar = false

-- Keybindings
config.disable_default_key_bindings = true

config.keys = {

	-- Copy
	{
		key = "C",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CopyTo("Clipboard"),
	},

	-- Paste
	{
		key = "V",
		mods = "CTRL|SHIFT",
		action = wezterm.action.PasteFrom("Clipboard"),
	},

	-- Vertical Split
	{
		key = "_",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
	},

	-- Horizontal Split
	{
		key = "|",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SplitHorizontal({
			domain = "CurrentPaneDomain",
		}),
	},
}

return config
