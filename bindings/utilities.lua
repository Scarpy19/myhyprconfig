-- DEFAULTS UTILITIES

-- o.bind("SUPER + SPACE", "Launch apps", { omarchy = "walker" })
hl.unbind("SUPER + CTRL + E")
o.bind("SUPER + PERIOD", "Emoji picker", { omarchy = "walker -m symbols" })

hl.unbind("SUPER + CTRL + O")
o.bind_menu("SUPER + I", "Toggle menu", "toggle")
hl.unbind("SUPER + CTRL + H")
-- o.bind_menu("SUPER + CTRL + H", "Hardware menu", "hardware")
-- o.bind_menu("SUPER + ALT + SPACE", "Omarchy menu", nil)
-- o.bind_menu("SUPER + SHIFT + code:201", "Omarchy menu", nil)
-- o.bind_menu("SUPER + ESCAPE", "System menu", "system")
-- o.bind_menu("XF86PowerOff", "Power menu", "system", { locked = true })
-- o.bind("SUPER + K", "Show key bindings", "omarchy-menu-keybindings")
-- o.bind("SUPER + ALT + K", "Show Tmux key bindings", "omarchy-menu-tmux-keybindings")
-- o.bind("XF86Calculator", "Calculator", "gnome-calculator")

-- o.bind("SUPER + SHIFT + SPACE", "Toggle top bar", "omarchy-toggle-waybar")
-- o.bind("SUPER + SHIFT + CTRL + UP", "Move Waybar to top", "omarchy-style-waybar-position top")
-- o.bind("SUPER + SHIFT + CTRL + DOWN", "Move Waybar to bottom", "omarchy-style-waybar-position bottom")
-- o.bind("SUPER + SHIFT + CTRL + LEFT", "Move Waybar to left", "omarchy-style-waybar-position left")
-- o.bind("SUPER + SHIFT + CTRL + RIGHT", "Move Waybar to right", "omarchy-style-waybar-position right")

-- o.bind_menu("SUPER + CTRL + SPACE", "Background switcher", "background")
-- o.bind_menu("SUPER + SHIFT + CTRL + SPACE", "Theme menu", "theme")
-- o.bind("SUPER + BACKSPACE", "Toggle window transparency", "omarchy-hyprland-window-transparency-toggle")
-- o.bind("SUPER + SHIFT + BACKSPACE", "Toggle window gaps", "omarchy-hyprland-window-gaps-toggle")
-- o.bind("SUPER + CTRL + BACKSPACE", "Toggle single-window square aspect", "omarchy-hyprland-window-single-square-aspect-toggle")

-- o.bind("SUPER + COMMA", "Dismiss last notification", "makoctl dismiss")
-- o.bind("SUPER + SHIFT + COMMA", "Dismiss all notifications", "makoctl dismiss --all")
-- o.bind("SUPER + CTRL + COMMA", "Toggle silencing notifications", "omarchy-toggle-notification-silencing")
-- o.bind("SUPER + ALT + COMMA", "Invoke last notification", "makoctl invoke")
-- o.bind("SUPER + SHIFT + ALT + COMMA", "Restore last notification", "makoctl restore")

-- o.bind_toggle("SUPER + CTRL + I", "Toggle locking on idle", "idle")
hl.unbind("SUPER + CTRL + N")
-- o.bind_toggle("SUPER + CTRL + N", "Toggle nightlight", "nightlight")
hl.unbind("SUPER + CTRL + Delete")
-- o.bind("SUPER + CTRL + Delete", "Toggle laptop display", "omarchy-hyprland-monitor-internal toggle")
hl.unbind("SUPER + CTRL + ALT + Delete")
-- o.bind("SUPER + CTRL + ALT + Delete", "Toggle laptop display mirroring", "omarchy-hyprland-monitor-internal-mirror toggle")
hl.unbind("switch:on:Lid Switch")
hl.unbind("switch:off:Lid Switch")
-- o.bind("switch:on:Lid Switch", nil, "omarchy-hw-external-monitors && omarchy-hyprland-monitor-internal off", { locked = true })
-- o.bind("switch:off:Lid Switch", nil, "omarchy-hyprland-monitor-internal on", { locked = true })

-- o.bind("PRINT", "Screenshot", "omarchy-capture-screenshot")
-- o.bind_menu("ALT + PRINT", "Screenrecording", "screenrecord")
hl.unbind("SUPER + CTRL + C")
hl.unbind("SUPER + PRINT")
o.bind_menu("SUPER + PRINT", "Capture menu", "capture")
o.bind("SUPER + CTRL + C", "Color picker", "pkill hyprpicker || hyprpicker -a")
-- o.bind("SUPER + CTRL + PRINT", "Extract text (OCR) from screenshot", "omarchy-capture-text-extraction")

hl.unbind("SUPER + CTRL + S")
-- o.bind_menu("SUPER + CTRL + S", "Share", "share")

-- o.bind("SUPER + CTRL + PERIOD", "Transcode", "omarchy-transcode")

-- o.bind_menu("SUPER + CTRL + R", "Set reminder", "reminder-set")
-- o.bind("SUPER + CTRL + ALT + R", "Show reminders", "omarchy-reminder show")
-- o.bind("SUPER + CTRL + SHIFT + R", "Clear reminders", "omarchy-reminder clear")

hl.unbind("SUPER + CTRL + ALT + T")
o.bind("SUPER + T", "Show time", "omarchy-notification-time")
hl.unbind("SUPER + CTRL + ALT + B")
-- o.bind("SUPER + CTRL + ALT + B", "Show battery remaining", "omarchy-notification-battery")
hl.unbind("SUPER + CTRL + ALT + W")
-- o.bind("SUPER + CTRL + ALT + W", "Show weather", "omarchy-notification-weather")

hl.unbind("SUPER + CTRL + A")
-- o.bind("SUPER + CTRL + A", "Audio controls", { omarchy = "audio" })
hl.bind("SUPER + CTRL + A",
    hl.dsp.exec_cmd(Omarchylaunch .. "tui wiremix", { float = true }),
    { description = "Audio controls" })
hl.unbind("SUPER + CTRL + B")
-- o.bind("SUPER + CTRL + B", "Bluetooth controls", { omarchy = "bluetooth" })
hl.bind("SUPER + CTRL + B", hl.dsp.exec_cmd(Omarchylaunch .. "tui bluetui", { float = true }),
    { description = "Bluetooth controls" })
hl.unbind("SUPER + CTRL + W")
-- o.bind("SUPER + CTRL + W", "Wifi controls", { omarchy = "wifi" })
hl.bind("SUPER + CTRL + W", hl.dsp.exec_cmd(Omarchylaunch .. "tui impala", { float = true }),
    { description = "Wifi controls" })
hl.unbind("SUPER + CTRL + T")
-- o.bind("CTRL + SHIFT + ESCAPE", "Activity", { tui = "btop" })
hl.bind("CTRL + SHIFT + ESCAPE", hl.dsp.exec_cmd(Omarchylaunch .. "tui btop", { float = true }),
    { description = "Task Manager" })
-- o.bind("SUPER + CTRL + Z", "Zoom in", function()
--   local zoom = hl.get_config("cursor.zoom_factor") or 1
--   hl.config({ cursor = { zoom_factor = zoom + 1 } })
-- end)
hl.unbind("SUPER + CTRL + ALT + Z")
o.bind("SUPER + CTRL + SHIFT + Z", "Reset zoom", function()
    hl.config({ cursor = { zoom_factor = 1 } })
end)

hl.unbind("SUPER + CTRL + L")
o.bind("SUPER + L", "Lock system", "omarchy-system-lock")
