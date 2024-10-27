return{
    'akinsho/bufferline.nvim',
    config=function()
    require("bufferline").setup{
        options={
            offsets={{
                filetype="NvimTree",
                text="File Explorer",
                text_align="left"
            }}
        }
    }
end,
}
