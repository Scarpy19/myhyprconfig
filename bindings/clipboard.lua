-- Work around Hyprland send_shortcut sometimes leaving synthetic key state stuck/repeating.
-- https://github.com/hyprwm/Hyprland/discussions/14099
local function send_shortcut_once(mods, key)
    return function()
        hl.dispatch(hl.dsp.send_key_state({ mods = mods, key = key, state = "down", window = "activewindow" }))
        hl.timer(function()
            hl.dispatch(hl.dsp.send_key_state({ mods = mods, key = key, state = "up", window = "activewindow" }))
        end, { timeout = 50, type = "oneshot" })
    end
end

hl.unbind("SUPER + C")
o.bind("SUPER + CTRL + C", "Universal copy", send_shortcut_once("CTRL", "Insert"))

hl.unbind("SUPER + V")
-- o.bind("CTRL + V", "Universal paste", send_shortcut_once("SHIFT", "Insert"))

hl.unbind("SUPER + X")
-- o.bind("CTRL + X", "Universal cut", send_shortcut_once("CTRL", "X"))

hl.unbind("SUPER + CTRL + V")
o.bind("SUPER + V", "Clipboard manager", { omarchy = "walker -m clipboard" })
