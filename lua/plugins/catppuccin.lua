return { 
    "catppuccin/nvim", 
    lazy=false, 
    name = "catppuccin", 
    priority = 1000,
    config = function ()
        require("catppuccin").setup({
            flavour = "mocha", -- latte, frappe, macchiato, mocha
            background = { -- :h background
                light = "latte",
                dark = "mocha",
            },
            transparent_background = true,
            show_end_of_buffer = false, -- show the '~' characters after the end of buffers
            term_colors = true,
            styles = {
                comments = { "italic" },
                conditionals = { "italic" },
                keywords = { "italic" },
            },
            plugins = {
                nvimtree = true,
                telescope = true,
          
            }
          })
          
        --   vim.cmd("colorscheme catppuccin")
          
    end
}