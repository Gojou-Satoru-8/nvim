return {
    "norcalli/nvim-colorizer.lua", 
    name = "colorizer",
    config = function () 
        require 'colorizer'.setup ({
        '*'; -- Highlight all files, but customize some others.
        css = { css = true; mode = 'background' }; -- Enable parsing rgb(...) functions in css.
        html = { RRGGBBAA = true } -- Disable parsing "names" like Blue or Gray
        }, { mode = 'foreground'}
        )  -- foreground highlighting for all files except css 
    end 
} -- check again
