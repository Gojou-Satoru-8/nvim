require('nightfox').setup({
  options = {
    transparent = true,
    terminal_colors = true,
    dim_inactive = false,
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    }
  }
})

vim.cmd("colorscheme carbonfox")    -- any of nightfox/terafox/carbonfox/nordfox/dayfox/duskfox
