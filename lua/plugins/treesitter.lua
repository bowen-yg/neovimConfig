return{
    "nvim-treesitter/nvim-treesitter",
    "HiPhish/rainbow-delimiters.nvim",
    build=":TSUpdate",
    config=function()
    local configs=require("nvim-treesitter.configs")
    configs.setup{
        ensure_installed = {"c","lua","python","cpp","bash","javascript","go","rust"},
--      sync_install = false,
        autopairs={enable=true,},
        highlight = { enable = true },
        indent = { enable = true },
        }
    require('rainbow-delimiters.setup').setup{}
    end
}
