return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",

    config = function()
        require( "nvim-treesitter" ).setup {
            install_dir = vim.fn.stdpath( "data" ) .. "/site"
        }

        require( "nvim-treesitter" ).install { "rust", "lua", "bash", "c" }

        vim.api.nvim_create_autocmd( "FileType", {
            pattern = { "rust", "lua", "bash", "c" },
            callback = function()
                vim.treesitter.start()
            end,
        })
    end,
}
