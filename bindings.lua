-- Application bindings.
-- hl.bind("SUPER + Z", hl.dsp.exec_cmd("alacritty", { float = true }), { description = "Terminal" })
hl.bind("SUPER + Z", hl.dsp.exec_cmd(Omarchylaunch .. "terminal", { float = true }), { description = "Terminal" })
o.bind("SUPER + ALT + Z", "Terminal", { omarchy = "terminal" })
o.bind("SUPER + SHIFT + Z", "Tmux", { omarchy = "terminal-tmux" })
-- o.bind("SUPER + E", "File manager", { omarchy = "nautilus" })
hl.bind("SUPER + E", hl.dsp.exec_cmd(Omarchylaunch .. "nautilus", { float = true }), { description = "File manager" })
-- o.bind("SUPER + SHIFT + E", "File manager (cwd)", { omarchy = "nautilus-cwd" })
hl.bind("SUPER + SHIFT + E", hl.dsp.exec_cmd(Omarchylaunch .. "nautilus-cwd", { float = true }),
    { description = "File manager" })
o.bind("SUPER + B", "Browser", { omarchy = "browser" })
-- o.bind("SUPER + SHIFT + RETURN", "Browser", { omarchy = "browser" })
o.bind("SUPER + SHIFT + ALT + B", "Browser (private)", { omarchy = "browser --private" })
-- o.bind("SUPER + SHIFT + M", "Music", { omarchy = "or-focus spotify" })
hl.unbind("SUPER + SHIFT + ALT + M")
-- o.bind("SUPER + SHIFT + ALT + M", "Music TUI", { tui = "cliamp", focus = true })
o.bind("SUPER + SHIFT + N", "Editor", { launch = "zeditor" })
o.bind("SUPER + SHIFT + D", "Docker", { tui = "lazydocker" })
-- o.bind("SUPER + SHIFT + G", "Signal", { launch = "signal-desktop", focus = "^signal$" })
-- o.bind("SUPER + SHIFT + O", "Obsidian", { launch = "obsidian", focus = "^obsidian$" })
o.bind("SUPER + SHIFT + W", "Typora", { launch = "typora --enable-wayland-ime" })
-- o.bind("SUPER + SHIFT + SLASH", "Passwords", { launch = "proton-pass" })

require("hypr.bindings.clipboard")
require("hypr.bindings.tiling-v2")
require("hypr.bindings.media")
require("hypr.bindings.utilities")

o.bind("SUPER + C", "Calculator", "gnome-calculator")
-- Web app bindings.
-- o.bind("SUPER + SHIFT + A", "ChatGPT", { webapp = "https://chatgpt.com" })
-- o.bind("SUPER + SHIFT + ALT + A", "Grok", { webapp = "https://grok.com" })
-- o.bind("SUPER + SHIFT + C", "Calendar", { webapp = "https://app.hey.com/calendar/weeks/" })
-- o.bind("SUPER + SHIFT + E", "Email", { webapp = "https://app.hey.com" })
-- o.bind("SUPER + SHIFT + Y", "YouTube", { webapp = "https://youtube.com/" })
-- o.bind("SUPER + SHIFT + ALT + G", "WhatsApp", { webapp = "https://web.whatsapp.com/", focus = true })
-- o.bind("SUPER + SHIFT + CTRL + G", "Google Messages", { webapp = "https://messages.google.com/web/conversations", focus = true })
-- o.bind("SUPER + SHIFT + P", "Google Photos", { webapp = "https://photos.google.com/", focus = true })
-- o.bind("SUPER + SHIFT + S", "Google Maps", { webapp = "https://maps.google.com/", focus = true })
-- o.bind("SUPER + SHIFT + X", "X", { webapp = "https://x.com/" })
-- o.bind("SUPER + SHIFT + ALT + X", "X Post", { webapp = "https://x.com/compose/post" })

-- Add extra bindings below.
-- o.bind("SUPER + SHIFT + R", "SSH", "alacritty -e ssh your-server")

-- Overwrite existing bindings with hl.unbind() first if needed.
-- hl.unbind("SUPER + SPACE")
-- o.bind("SUPER + SPACE", "Omarchy menu", "omarchy-menu")

-- Logitech MX Keys examples:
-- o.bind("SUPER + SHIFT + S", nil, "omarchy-capture-screenshot")
-- o.bind("SUPER + H", nil, "voxtype record toggle")
-- o.bind("SUPER + PERIOD", nil, { omarchy = "walker -m symbols" })
