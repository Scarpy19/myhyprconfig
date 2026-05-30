hl.window_rule({
    match = {
        class =
        "(^(org.pulseaudio.pavucontrol)$|^(proton-pass)$|^(io.ente.auth)$|floating|scrcpy|gpartedbin|org.gnome.DiskUtility|com.example.cloudflare_warp_panel)",
    },
    float = true,
})

hl.window_rule({
    match = {
        class = "(^(proton-pass)$|^(io.ente.auth)$|floating)",
    },
    center = true,
})

hl.window_rule({
    match = {
        class = "^(proton-pass)$",
    },
    size = "881 680",
})

hl.window_rule({
    match = {
        initial_title = "^(pairdrop.net_/)$",
    },
    float = true,
    size = "787 503",
    center = true,
})

hl.window_rule({
    match = {
        initial_class = "(xdg-desktop-portal-gtk)",
    },
    float = true,
    size = "760 440",
    center = true,
})

hl.window_rule({
    match = {
        tag =
        "terminal",
    },
    float = true,
})
