hl.window_rule({ match = { focus = true }, opacity = 1 })

hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 3,
    bezier = "default",
    style = "fade",
})

hl.config({
    general = {
        gaps_in = 2,
        gaps_out = 5,
        border_size = 1,
        -- https://wiki.hyprland.org/Configuring/Variables/#variable-types for info about colors
        col = {
            active_border = { colors = { "rgba(33ccffee)", "rgba(00ff99ee)" }, angle = 45 },
            inactive_border = "rgba(595959aa)",
        },
        -- Set to true enable resizing windows by clicking and dragging on borders and gaps
        resize_on_border = false,
        -- Please see https://wiki.hyprland.org/Configuring/Tearing/ before you turn this on
        allow_tearing = false,
        layout = "dwindle",
    },
    -- https://wiki.hyprland.org/Configuring/Variables/#decoration
    decoration = {
        rounding = 3,
        --[ active_opacity = 1.0, ]
        inactive_opacity = 0.90,
        shadow = {
            enabled = true,
            range = 12,                        -- rango moderado para que no sea tan grande
            render_power = 4,                  -- potencia para que la sombra sea visible pero suave
            color = "rgba(000000AA)",          -- negro con transparencia media
            color_inactive = "rgba(00000045)", -- sombra más tenue en ventanas inactivas
        },
        -- https://wiki.hyprland.org/Configuring/Variables/#blur
        blur = {
            enabled = true,
            size = 3,
            passes = 3,
            vibrancy = 0.1696,
        },
    },
    group = {
        groupbar = {
            font_size = 12,
            font_family = "monospace",
            font_weight_active = "ultraheavy",
            font_weight_inactive = "normal",
            indicator_height = 0,
            indicator_gap = 2,
            height = 15,
            gaps_in = 5,
            gaps_out = 0,
            text_color = "rgb(ffffff)",
            text_color_inactive = "rgba(ffffff80)",
            col = {
                active = "rgba(00000000)",
                inactive = "rgba(00000000)",
            },
            gradients = true,
            gradient_rounding = 3,
            gradient_round_only_edges = false,
        },
    },
    animations = {
        enabled = true,
        workspace_wraparound = true,
    },
    dwindle = {
        preserve_split = true, -- You probably want this
        smart_split = true,
        precise_mouse_move = true,
        force_split = 0, -- Always split on the mouse side
    },
    ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },
    misc = {
        vrr = 1,
        on_focus_under_fullscreen = 2,
    },
})
