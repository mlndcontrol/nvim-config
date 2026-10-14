return {

    vim.lsp.config( "lua_ls", {
        cmd = { "/bin/lua-language-server" },
        filetypes = { "lua" },
        root_markers = { ".git" },
    }),

    vim.lsp.config( "rust_ls", {
        cmd = { "/bin/rust-analyzer" },
        filetypes = { "rust" },
        root_markers = { "Cargo.toml", ".git" },
    }),

    vim.lsp.config( "bash_ls", {
        cmd = { "/bin/bash-language-server", "start" },
        filetypes = { "bash", "sh" }
    }),

    vim.lsp.config( "clangd", {
        cmd = { "/bin/clangd", "--header-insertion=never" },
        filetypes = { "c", "header" },
        root_markers = { { ".clangd", ".clang-tidy", ".clang-format", "compile_commands.json", "compile_flags.txt", "configure.ac", ".git" } },
    }),

    vim.lsp.enable( "lua_ls", "rust_ls", "bash_ls", "clangd" )

}

