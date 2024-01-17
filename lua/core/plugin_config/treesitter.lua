require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all"
    ensure_installed = { "c", "lua", "vim", "query", "rust", "cpp", "python", "javascript", "typescript", "tsx"},
    -- Install parsers synchronously (only applied to 'ensure_installed')
    sync_install = true,
    auto_install = true,
    highlight = {
        enable = true,
    },
    -- for nvim-ts-rainbow
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil,
        colors = {
            -- "#68a0b0",
            -- "#946EaD",
            "#c7aA6D",
            "Gold",
            "Orchid",
            "DodgerBlue",
            "Cornsilk",
            "Salmon",
            "LawnGreen",
    },
    disable = { "html" },
    }
}

