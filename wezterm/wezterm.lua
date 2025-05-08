-- Add the directory of your wezterm config to Lua's package path
package.path = package.path .. ";/home/salvos/.config/awesome/wezterm/?.lua"

local options = require("options")
local keybinds = require("keybinds")

options.keys = keybinds

return options
