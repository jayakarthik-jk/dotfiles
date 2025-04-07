local function yabai(commands)
  for _, cmd in ipairs(commands) do
    os.execute("/opt/homebrew/bin/yabai -m " .. cmd)
  end
end

local function exec(commands)
	return function ()
		yabai(commands)
	end
end

local function cmd(key, commands)
  hs.hotkey.bind({ "cmd" }, key, exec(commands))
end

local function cmd_shift(key, commands)
  hs.hotkey.bind({ "cmd", "shift" }, key, exec(commands))
end

local function alt_shift(key, commands)
  hs.hotkey.bind({ "alt", "shift" }, key, exec(commands))
end

local function cmd_ctrl_shift(key, commands)
  hs.hotkey.bind({ "cmd", "ctrl", "shift" }, key, exec(commands))
end

local focus = "window --focus first"

cmd("Left", { "window --focus west" })
cmd("Right", { "window --focus east" })
cmd("Up", { "window --focus north" })
cmd("Down", { "window --focus south" })

cmd_shift("Left", { "window --resize left:-20:0", "window --resize right:-20:0" })
cmd_shift("Right", { "window --resize right:20:0", "window --resize left:20:0" })
cmd_shift("Up", { "window --resize top:0:-20", "window --resize bottom:0:-20" })
cmd_shift("Down", { "window --resize bottom:0:20", "yabai -m window --resize top:0:20" })

cmd_ctrl_shift("Left", { "window --warp west" })
cmd_ctrl_shift("Right", { "window --warp east" })
cmd_ctrl_shift("Up", { "window --warp north" })
cmd_ctrl_shift("Down", { "window --warp south" })

for i = 1, 9 do
	cmd(tostring(i), { "space --focus " .. i, focus })
end

for i = 1, 9 do
	alt_shift(tostring(i), { "window --space " .. i, "space --focus " .. i, focus })
end
