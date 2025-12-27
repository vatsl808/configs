-- helper function to switch colors
function ColorMyPencils(color)
    color = color or "gruvbox-material"
    vim.cmd.colorscheme(color)
end

return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({ disable_background = true })
            ColorMyPencils()  -- sets rose-pine by default
        end,
    },
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                style = "storm",
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                    sidebars = "dark",
                    floats = "dark",
                },
            })
        end,
    },
    {

        "sainnhe/gruvbox-material",

        name = "gruvbox-material",
        config = function()
            vim.opt.termguicolors = true
            vim.o.background = "dark"

            -- darkest dark variant
            vim.g.gruvbox_material_background = "hard"
            vim.g.gruvbox_material_foreground = "material"
            vim.g.gruvbox_material_enable_italic = true

            vim.g.gruvbox_material_better_performance = 1

            -- optional: set as default (comment if you want Rose-Pine default)
            -- ColorMyPencils("gruvbox-material")
        end,
    },
}

