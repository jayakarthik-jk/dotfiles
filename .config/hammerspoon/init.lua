local function yabai(commands)
  for _, cmd in ipairs(commands) do
    os.execute("/opt/homebrew/bin/yabai -m " .. cmd)
  end
end

local function exec(commands)
	return function ()
		if type(commands) == "function" then
			commands = commands()
		end
		yabai(commands)
	end
end

local function cmd(key, commands)
  hs.hotkey.bind({ "cmd" }, key, exec(commands))
end

local function cmd_shift(key, commands)
  hs.hotkey.bind({ "cmd", "shift" }, key, exec(commands))
end

local function cmd_ctrl_shift(key, commands)
  hs.hotkey.bind({ "cmd", "ctrl", "shift" }, key, function()
    yabai(commands)
  end)
end


cmd('h', { "window --focus west" })
cmd('l', { "window --focus east" })
cmd('k', { "window --focus north" })
cmd('j', { "window --focus south" })

cmd("Left", { "window --resize left:-20:0", "window --resize right:-20:0" })
cmd("Right", { "window --resize right:20:0", "window --resize left:20:0" })
cmd("Up", { "window --resize top:0:-20", "window --resize bottom:0:-20" })
cmd("Down", { "window --resize bottom:0:20", "yabai -m window --resize top:0:20" })

cmd_shift('h', { "window --warp west" })
cmd_shift('l', { "window --warp east" })
cmd_shift('k', { "window --warp north" })
cmd_shift('j', { "window --warp south" })

for i = 1, 9 do
	cmd(tostring(i), { "space --focus " .. i })
end

for i = 1, 9 do
	cmd_shift(tostring(i), function ()
		local handle = io.popen("/opt/homebrew/bin/yabai -m query --spaces | jq '. | length'")
		if handle == nil then
			return
		end
		local currentSpaces = tonumber(handle:read("*a"))
		if currentSpaces < i then
			os.execute("/opt/homebrew/bin/yabai -m space --create")
		end

		return { "window --space " .. i }
	end)
end
