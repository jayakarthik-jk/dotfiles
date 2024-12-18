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
config.tab_bar_at_bottom = true
config.window_decorations = "RESIZE"

config.font = wezterm.font('JetBrains Mono', { weight = 'Regular', italic = true })

config.keys = {
	{
		key = "|",
		mods = "ALT|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "_",
		mods = "ALT|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "h",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection 'Left',
	},
	{
		key = "l",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection 'Right',
	},
	{
		key = "k",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection 'Up',
	},
	{
		key = "j",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection 'Down',
	},
	{
		key = "h",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Left', 5 },
	},
	{
		key = "l",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Right', 5 },
	},
	{
		key = "k",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Up', 5 },
	},
	{
		key = "j",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize { 'Down', 5 },
	},
	{
		key = "p",
		mods = "CTRL|SHIFT",
		action = wezterm.action.DisableDefaultAssignment,
	}
}

return config
