local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
	config:set_strict_mode(true)
end

config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "NONE"

config.keys = {
	{
		key = "|",
		mods = "SHIFT|CTRL",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "_",
		mods = "SHIFT|CTRL",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection 'Left',
	},
	{
		key = "l",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection 'Right',
	},
	{
		key = "k",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection 'Up',
	},
	{
		key = "j",
		mods = "CTRL",
		action = wezterm.action.ActivatePaneDirection 'Down',
	},
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Left', 5 },
	},
	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Right', 5 },
	},
	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Up', 5 },
	},
	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Down', 5 },
	}
}

return config
