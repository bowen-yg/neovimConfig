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
        "clangd",
    },
})
require("lspconfig").pyright.setup{}
require("lspconfig").lua_ls.setup{}
--[[require("lspconfig.configs").ast_grep={
    default_config={
        cmd={"ast-grep","lsp"};
        single_file_support=true;
        root_dir = nvim_lspconfig.util.root_pattern('sgconfig.yml');
    };
}]]--
require("lspconfig").clangd.setup{}
