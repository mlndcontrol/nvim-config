vim.lsp.config( "lua_ls", {
    cmd = { "/bin/lua-language-servera" },
    filetypes = { "lua" },
    root_markers = { "git" },
})

vim.lsp.config( "rust-analyzer", {
    cmd = { "/bin/rust-analyzer" },
    filetypes = { "rust" },
    root_markers = { "Cargo.toml", ".git" },
})

vim.lsp.config( "bashls", {
    cmd = { "/bin/bash-language-server" },
    filetypes = { "bash", "sh" },
    root_markers = { ".git" },
})

vim.lsp.enable( "rust-analyzer", "bashls" )

