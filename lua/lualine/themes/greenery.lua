local p = {
    -- Backgrounds
    black          = "#000000",
    dark_grey      = "#253D2C",
    light_grey     = "#666666",
    -- Text/normal colors
    opaque_white   = "#dddddd",
    white          = "#ffffff",
    -- Greens
    forest         = "#51AE69",
    neon           = "#33ff00",
    leaf           = "#54B84D",
    -- Other colors
    blue           = "#008080",
    red            = "#fb0905",

    bg_diff_add    = "#0a280a",
    bg_diff_change = "#2a2000",
    bg_diff_remove = "#40160f",
}

return {
    normal = {
        a = { bg = p.black, fg = p.blue, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.purple }
    },
    insert = {
        a = { bg = p.black, fg = p.neon, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.white }
    },
    visual = {
        a = { bg = p.black, fg = p.forest, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.black }
    },
    replace = {
        a = { bg = p.black, fg = p.red, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.white }
    },
    command = {
        a = { bg = p.black, fg = p.teal, gui = "bold" },
        b = { bg = p.black, fg = p.white },
        c = { bg = p.dark_grey, fg = p.black }
    },
    inactive = {
        a = { bg = p.dark_grey, fg = p.light_grey, gui = "bold" },
        b = { bg = p.dark_grey, fg = p.white },
        c = { bg = p.dark_grey, fg = p.light_grey }
    }
}
