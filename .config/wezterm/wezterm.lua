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
config.enable_kitty_keyboard = true
config.font = wezterm.font("JetBrains Mono", { weight = "Regular", italic = true })

local action = wezterm.action;

config.keys = {
	{
		key = "LeftArrow",
		mods = "ALT",
		action = action.SendKey { key = 'b', mods = "ALT" },
	},
	{
		key = "RightArrow",
		mods = "OPT",
		action = action.SendKey { key = 'f', mods = "ALT" },
	},
	{
		key = '>',
		mods = "CTRL|SHIFT",
		action = action.DisableDefaultAssignment,
	},
	{
		key = '<',
		mods = "CTRL|SHIFT",
		action = action.DisableDefaultAssignment,
	},
	{
		key = '|',
		mods = "CTRL|SHIFT",
		action = action.DisableDefaultAssignment,
	},
	{
		key = '_',
		mods = "CTRL|SHIFT",
		action = action.DisableDefaultAssignment,
	},
	{
		key = 'd',
		mods = "SUPER|SHIFT",
		action = action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = 'd',
		mods = "SUPER",
		action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	{
		key = 'h',
		mods = "ALT",
		action = action.ActivatePaneDirection("Left"),
	},
	{
		key = 'l',
		mods = "ALT",
		action = action.ActivatePaneDirection("Right"),
	},
	{
		key = 'k',
		mods = "ALT",
		action = action.ActivatePaneDirection("Up"),
	},
	{
		key = 'j',
		mods = "ALT",
		action = action.ActivatePaneDirection("Down"),
	},
	{
		key = 'LeftArrow',
		mods = "ALT",
		action = action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = 'RightArrow',
		mods = "ALT",
		action = action.AdjustPaneSize({ "Right", 5 }),
	},
	{
		key = 'UpArrow',
		mods = "ALT",
		action = action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = 'DownArrow',
		mods = "ALT",
		action = action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = 'p',
		mods = "CTRL",
		action = action.DisableDefaultAssignment,
	}
}

return config
