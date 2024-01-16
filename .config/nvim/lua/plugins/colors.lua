require("tokyonight").setup({
    style = "night",
    light_style = "day",
    transparent = false,
    terminal_colors = true,
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "dark",
        floats = "dark",
    },
    sidebars = { "qf", "help" },
    day_brightness = 0.3,
    hide_inactive_statusline = true,

    on_colors = function(colors)
        colors.border = colors.blue0
    end,
    on_highlights = function(highlights, colors) end,
})

-- Actually set the colorscheme
vim.cmd.colorscheme('tokyonight')
