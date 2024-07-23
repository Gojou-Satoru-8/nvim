return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        require("nvim-ts-autotag").setup({
            -- A list of parser names, or "all" (the five listed parsers should always be installed)
            ensure_intalled = {
                "bash",
                "c",
                "cpp",
                "lua",
                "java",
                "javascript",
                "typescript",
                "tsx",
                "html",
                "json",
                "python",
                "swift",
                "sql",
                "vim",
            },
            auto_install = true,
            autotag = {
                enable = true,
            },
        })
    end,
}
