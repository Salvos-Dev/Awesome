---------------------------
-- %s awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.name = "gruvbox-dark"

theme.font = "Iosevka Nerd Font 8"

theme.bg = "#282828"
theme.bg_alt = "#3c3836"
theme.fg = "#ebdbb2"
theme.min = "#928374"
theme.accent = "#b16286"
theme.urgent = "#cc241d"

theme.bg_normal = theme.bg
theme.bg_focus = theme.bg_alt
theme.bg_urgent = theme.urgent
theme.bg_minimize = theme.min

theme.fg_normal = theme.fg
theme.fg_focus = theme.fg
theme.fg_urgent = theme.fg
theme.fg_minimize = theme.fg

theme.bg_systray = theme.bg_normal

theme.useless_gap = dpi(3)
theme.border_width = dpi(1)
theme.border_normal = theme.bg
theme.border_focus = theme.accent

theme.taglist_bg_focus = theme.accent

theme.tasklist_disable_icon = true
theme.tasklist_plain_task_name = true
theme.tasklist_bg_focus = theme.accent

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)

-- Variables set for theming notifications:
theme.notification_font = theme.font
theme.notification_bg = theme.bg
theme.notification_fg = theme.fg
theme.notification_border_color = theme.accent
theme.notification_border_width = theme.accent

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path .. "%s/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width = dpi(100)

-- Define the image to load
theme.titlebar_minimize_button_normal =
	string.format("%s/.config/awesome/themes/%s/titlebar/normal.svg", os.getenv("HOME"), theme.name)
theme.titlebar_minimize_button_focus =
	string.format("%s/.config/awesome/themes/%s/titlebar/min.svg", os.getenv("HOME"), theme.name)

theme.titlebar_maximized_button_normal_inactive =
	string.format("%s/.config/awesome/themes/%s/titlebar/normal.svg", os.getenv("HOME"), theme.name)
theme.titlebar_maximized_button_focus_inactive =
	string.format("%s/.config/awesome/themes/%s/titlebar/normal.svg", os.getenv("HOME"), theme.name)

theme.titlebar_maximized_button_normal_active =
	string.format("%s/.config/awesome/themes/%s/titlebar/normal.svg", os.getenv("HOME"), theme.name)
theme.titlebar_maximized_button_focus_active =
	string.format("%s/.config/awesome/themes/%s/titlebar/max.svg", os.getenv("HOME"), theme.name)

theme.titlebar_close_button_normal =
	string.format("%s/.config/awesome/themes/%s/titlebar/normal.svg", os.getenv("HOME"), theme.name)
theme.titlebar_close_button_focus =
	string.format("%s/.config/awesome/themes/%s/titlebar/close.svg", os.getenv("HOME"), theme.name)

theme.wallpaper = string.format("%s/.config/awesome/themes/%s/wallpaper.png", os.getenv("HOME"), theme.name)

-- You can use your own layout icons like this:
-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height, theme.bg_focus, theme.fg_focus)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

theme.warn_about_missing_glyphs = false

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
