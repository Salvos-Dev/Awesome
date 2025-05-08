local external_display_name = "HDMI-0" -- Change this if your external display has a different name
local internal_display_name = "DP-2"   -- Change this if your internal display has a different name

local get_connected_displays_command = "xrandr --query | grep ' connected'"
local connected_displays = {}

for line in io.popen(get_connected_displays_command):lines() do
    local display_info = line:match("^(%S+) connected")
    if display_info then
        table.insert(connected_displays, display_info)
    end
end

local external_connected = false
for _, display in ipairs(connected_displays) do
    if display == external_display_name then
        external_connected = true
        break
    end
end

if external_connected then
    local display_command = "xrandr --output " .. internal_display_name .. " --off --output " .. external_display_name .. " --mode 1920x1080 --pos 0x0 --rotate normal"
    os.execute(display_command)
else
    -- If the external display isn't connected, you might want to ensure the internal display is on
    local display_command = "xrandr --output " .. internal_display_name .. " --auto"
    os.execute(display_command)
end
