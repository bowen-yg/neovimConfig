return{
    "nvim-treesitter/nvim-treesitter",
    build=":TSUpdate",
    config=function()
    local configs=require("nvim-treesitter.configs")
    configs.setup({
          ensure_installed = {"lua","python","cpp","bash","javascript","go","rust"},
--         sync_install = false,
          autopairs={enable=true,},
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
}
