return {
    "goolord/alpha-nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.startify")

        dashboard.section.header.val = {
            [[  ________      ________       ___  __        ___  ___      ________       ___  ___      ]],
            [[ |\   __  \    |\   ___  \    |\  \|\  \     |\  \|\  \    |\   ____\     |\  \|\  \     ]],
            [[ \ \  \|\  \   \ \  \\ \  \   \ \  \/  /|_   \ \  \\\  \   \ \  \___|_    \ \  \\\  \    ]],
            [[  \ \   __  \   \ \  \\ \  \   \ \   ___  \   \ \  \\\  \   \ \_____  \    \ \   __  \   ]],
            [[   \ \  \ \  \   \ \  \\ \  \   \ \  \\ \  \   \ \  \\\  \   \|____|\  \    \ \  \ \  \  ]],
            [[    \ \__\ \__\   \ \__\\ \__\   \ \__\\ \__\   \ \_______\    ____\_\  \    \ \__\ \__\ ]],
            [[     \|__|\|__|    \|__| \|__|    \|__| \|__|    \|_______|   |\_________\    \|__|\|__| ]],
            [[                                                              \|_________|               ]],
        }

        alpha.setup(dashboard.opts)
    end,
}
