return{
    "nvim-treesitter/nvim-treesitter",
    "p00f/nvim-ts-rainbow",
    build=":TSUpdate",
    config=function()
    local configs=require("nvim-treesitter.configs")
    configs.setup{
        ensure_installed = {"c","lua","python","cpp","bash","javascript","go","rust"},
--      sync_install = false,
        autopairs={enable=true,},
        highlight = { enable = true },
        indent = { enable = true },

        rainbow={
            enable=true,
            extended_mode=true,
            max_file_lines=nil,
            }, 
        }
    end
}
