local greenery = {}


local palette = {
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

greenery.color_groups = function(p)
    return {
        -- basics
        Conceal                               = { fg = p.white, },
        Comment                               = { fg = p.light_grey, italic = true },
        Constant                              = { fg = p.blue },
        Cursor                                = { fg = p.black, bg = p.blue },
        CursorColumn                          = { fg = p.white, bg = p.dark_grey },
        CursorLine                            = { bg = p.dark_grey, },
        ColorColumn                           = { bg = p.dark_grey },
        CursorLineNr                          = { fg = p.neon, bold = true },
        DiagnosticFloatingError               = { fg = p.red },
        DiagnosticSignError                   = { fg = p.red },
        DiagnosticUnderlineError              = { sp = p.red, underline = true },
        DiagnosticVirtualTextError            = { fg = p.neon },
        DiagnosticFloatingWarn                = { fg = p.forest },
        DiagnosticSignWarn                    = { fg = p.leaf },
        DiagnosticUnderlineWarn               = { sp = p.forest, underline = true },
        DiagnosticVirtualTextWarn             = { fg = p.leaf },
        DiffAdd                               = { fg = p.forest, bg = p.black },
        DiffChange                            = { fg = p.white, bg = p.black },
        DiffDelete                            = { fg = p.blue, bg = p.black },
        DiffText                              = { fg = p.neon, bg = p.black },
        Directory                             = { fg = p.blue, },
        Error                                 = { fg = p.red, bg = p.black },
        ErrorMsg                              = { fg = p.black, bg = p.red },
        FloatBorder                           = { fg = p.neon },
        FoldColumn                            = { fg = p.neon, bg = p.black },
        Folded                                = { fg = p.neon, bg = p.black },
        Function                              = { fg = p.white, bold = true },
        Identifier                            = { fg = p.forest },
        IncSearch                             = { fg = p.white, bg = p.leaf },
        LineNr                                = { fg = p.light_grey },
        manBold                               = { fg = p.neon, bold = true },
        manSectionHeading                     = { fg = p.neon, bold = true },
        manReference                          = { fg = p.forest, bold = true },
        MatchParen                            = { fg = p.black, bg = p.leaf },
        ModeMsg                               = { fg = p.white, },
        MoreMsg                               = { fg = p.white, },
        NonText                               = { fg = p.white, },
        Normal                                = { fg = p.opaque_white, bg = p.black },
        NormalFloat                           = { bg = p.black },
        Operator                              = { fg = p.neon },
        Pmenu                                 = { fg = p.light_grey, bg = p.black },
        PmenuSbar                             = { fg = p.neon },
        PmenuSel                              = { fg = p.black, bg = p.forest, bold = true },
        PmenuThumb                            = { fg = p.dark_grey, bg = p.forest },
        PreProc                               = { fg = p.forest, },
        Question                              = { fg = p.white, },
        Search                                = { fg = p.white, bg = p.leaf, italic = true },
        SignColumn                            = { bg = p.black },
        Special                               = { fg = p.neon, bold = true },
        SpecialKey                            = { fg = p.blue, },
        SpellBad                              = { sp = p.red, undercurl = true },
        SpellCap                              = { fg = p.neon, bg = p.black },
        SpellRare                             = { fg = p.neon, bg = p.teal },
        SpellLocal                            = { fg = p.blue, bg = p.white },
        Statement                             = { fg = p.neon, bold = true },
        StatusLine                            = { fg = p.white, bg = p.dark_grey },
        StatusLineNC                          = { fg = p.dark_grey, bg = p.white },
        String                                = { fg = p.blue },
        TabLine                               = { fg = p.white, bg = p.dark_grey },
        TabLineFill                           = { fg = p.black, bg = p.white },
        TabLineSel                            = { fg = p.white, },
        Title                                 = { fg = p.white, },
        Todo                                  = { fg = p.neon, bg = p.black },
        Type                                  = { fg = p.neon },
        Underlined                            = { fg = p.blue, },
        Visual                                = { fg = p.white, bg = p.blue },
        VisualNOS                             = { fg = p.white, bg = p.blue },
        WarningMSG                            = { fg = p.neon, },
        WildMenu                              = { fg = p.black, bg = p.neon },
        WinSeparator                          = { fg = p.forest },

        -- PLUGINS

        -- Blink
        BlinkCmpDocBorder                     = { fg = p.neon },
        BlinkCmpMenuBorder                    = { fg = p.neon },
        BlinkCmpSignatureHelpBorder           = { fg = p.neon },

        -- Gitsigns
        GitSignsAdd                           = { fg = p.forest, bg = p.bg_diff_add, bold = true },
        GitSignsChange                        = { fg = p.neon, bg = p.bg_diff_change, bold = true },
        GitSignsDelete                        = { fg = p.neon, bg = p.bg_diff_remove, bold = true },

        GitSignsAddNr                         = { fg = p.forest, bg = p.bg_diff_add, bold = true },
        GitSignsChangeNr                      = { fg = p.neon, bg = p.bg_diff_change, bold = true },
        GitSignsDeleteNr                      = { fg = p.neon, bg = p.bg_diff_remove, bold = true },

        GitSignsAddLn                         = { bg = p.bg_diff_add, bold = true },
        GitSignsChangeLn                      = { bg = p.bg_diff_change, bold = true },
        GitSignsDeleteLn                      = { bg = p.bg_diff_remove, bold = true },

        GitSignsAddInline                     = { fg = p.forest, bg = p.bg_diff_add, bold = true },
        GitSignsChangeInline                  = { fg = p.neon, bg = p.bg_diff_change, bold = true },
        GitSignsDeleteInline                  = { fg = p.neon, bg = p.bg_diff_remove, bold = true },

        GitSignsCurrentLineBlame              = { fg = p.light_grey, bold = false },

        -- IndentBlankline
        IblIndent                             = { fg = p.dark_grey },
        IblScope                              = { fg = p.light_grey, underline = false },

        -- Lazy
        LazyNormal                            = { bg = p.black },
        LazyReasonPlugin                      = { fg = p.neon },
        LazySpecial                           = { fg = p.blue },

        -- Mason
        MasonNormal                           = { bg = p.dark_grey },

        -- Neogit
        NeogitDiffAdd                         = { fg = p.forest },

        -- Nvim-tree
        NvimTreeNormal                        = { bg = p.black },
        NvimTreeCursorLine                    = { sp = p.blue, underline = true },

        -- Telescope
        TelescopeBorder                       = { fg = p.neon },
        TelescopePreviewLine                  = { bg = p.dark_grey },
        TelescopePreviewMatch                 = { bg = p.dark_grey },
        TelescopePromptBorder                 = { fg = p.neon },
        TelescopePromptTitle                  = { fg = p.neon },
        TelescopeResultsComment               = { fg = p.light_grey },
        TelescopeSelection                    = { bg = p.dark_grey },
        TelescopeTitle                        = { fg = p.neon },

        -- LSP & TREESITTER
        ["@lsp.typemod.function.declaration"] = { fg = p.white },
        ["@lsp.typemod.function.decfinition"] = { fg = p.white },
        ["@lsp.type.function"]                = { fg = p.neon },

        ["@boolean"]                          = { fg = p.blue, bold = true },
        ["@function.call"]                    = { fg = p.neon },
        ["@function.method.call"]             = { fg = p.neon },
        ["@markup.bold"]                      = { bold = true },
        ["@markup.heading"]                   = { fg = p.blue, bold = true },
        ["@markup.italic"]                    = { italic = true },
        ["@markup.link.label"]                = { fg = p.neon },
        ["@markup.link.url"]                  = { fg = p.blue, underline = true, italic = true },
        ["@markup.strong"]                    = { bold = true },
        ["@module"]                           = { fg = p.white },
        ["@punctuation.bracket"]              = { fg = p.forest, bold = true },
        ["@punctuation.delimiter"]            = { fg = p.neon },
        ["@string.special.url"]               = { fg = p.leaf, underline = true, italic = true },
        ["@tag"]                              = { fg = p.neon },
        ["@tag.builtin"]                      = { link = "@tag" },
        ["@tag.attribute"]                    = { fg = p.neon },
        ["@tag.delimiter"]                    = { fg = p.neon },
        ["@type.builtin"]                     = { fg = p.neon },
        ["@variable"]                         = { fg = p.opaque_white },
        ["@variable.builtin"]                 = { fg = p.white, italic = true },

        -- Org-mode
        ["@org.headline.level1.org"]          = { fg = p.neon, bold = true },
        ["@org.headline.level2.org"]          = { fg = p.blue, bold = true },
        ["@org.headline.level3.org"]          = { fg = p.neon, bold = true },
        ["@org.priority.highest.org"]         = { fg = p.neon, bold = true },
        ["@org.priority.default.org"]         = { fg = p.neon, bold = true },
        ["@org.tag.org"]                      = { fg = p.leaf, bold = true },

        -- LaTeX
        texStyleItal                          = { fg = p.leaf, italic = true },
        texFilesArg                           = { fg = p.neon, bold = true },
        ["@function.latex"]                   = { fg = p.neon, bold = true },
        ["@module.latex"]                     = { fg = p.neon },
        ["@punctuation.bracket.latex"]        = { fg = p.blue },
        ["@variable.parameter.latex"]         = { fg = p.blue },

        -- Markdown
        ["@markup.heading.1.markdown"]        = { fg = p.neon, bold = true },
        ["@markup.heading.2.markdown"]        = { fg = p.neon, bold = true },
        ["@markup.heading.3.markdown"]        = { fg = p.forest, bold = true },
        ["@markup.list.markdown"]             = { fg = p.forest, bold = true },

        -- Elixir
        ["@string.special.symbol.elixir"]     = { fg = p.blue },

        -- Go
        ["@constructor.go"]                   = { fg = p.blue },

        -- Gleam
        ["@constructor.gleam"]                = { fg = p.blue },

        -- Haskell
        ["@constructor.haskell"]              = { fg = p.blue },

        -- Java
        ["@lsp.type.modifier.java"]           = { fg = p.neon, bold = true },
        ["@lsp.mod.constructor.java"]         = { fg = p.blue },

        -- Python
        ["@constant.builtin.python"]          = { fg = p.blue },
        ["@constructor.python"]               = { fg = p.blue },
        ["@function.builtin.python"]          = { fg = p.blue },
        pythonAttribute                       = { fg = p.neon },
        pythonBuiltin                         = { fg = p.neon },

        -- Rust
        ["@lsp.type.decorator"]               = { fg = p.white, bold = true },
        ["@lsp.type.escapeSequence.rust"]     = { fg = p.neon, bold = true },
        ["@lsp.type.formatSpecifier.rust"]    = { fg = p.blue, bold = true },
        ["@lsp.type.enum.rust"]               = { fg = p.neon },
        ["@lsp.type.struct.rust"]             = { fg = p.neon },

        -- TODO comments
        -- TODO: complete the TODO comments
        TodoBgTODO                            = { bg = p.neon, fg = p.black },
        TodoFgTODO                            = { fg = p.neon },
    }
end

-- reset colors and load highlights
greenery.load = function()
    if vim.g.colors_name then
        vim.cmd("hi clear")
        vim.cmd("syntax reset")
    end

    vim.g.colors_name = "greenery"

    for group, opts in pairs(greenery.color_groups(greenery.colors)) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

-- load the user's options
greenery.setup = function(opts)
    greenery.colors = vim.tbl_deep_extend("force", palette, opts or {})
end

return greenery
