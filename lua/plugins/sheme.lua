return{
    {"folke/tokyonight.nvim",lazy = false,priority = 100},
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    config = function()
      -- load the colorscheme here
    require("catppuccin").setup{}
    end
}
