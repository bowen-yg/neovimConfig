return{
    "nvim-treesitter/nvim-treesitter",
    build=":TSUpdate",
    config=function()
    local configs=require("nvim-treesitter.configs")
    configs.setup({
          ensure_installed = { "c", "lua","python","cpp","bash","javascript"},
--         sync_install = false,
          autopairs={enable=true,},         
          highlight = { enable = true },
          indent = { enable = true },  
        })
    end
} 
