return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        lazy = false,  -- load immediately
        opts = {
            ensure_installed = { "c", "cpp", "lua", "python" }, -- add C parser
            highlight = {
                enable = true,
            },
            indent = {
                enable = true,
            },
        },
    },
}

