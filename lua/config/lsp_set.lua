require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup({
    ensure_installed={
        "pyright",
        "lua_ls",
    },
})
require("lspconfig").pyright.setup{}
require("lspconfig").lua_ls.setup{}
