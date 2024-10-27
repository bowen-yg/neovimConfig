require("config.options")
require("config.keymaps")
require("config.lazy")

--lualine
require("lualine").setup({
    options={theme="tokyonight"},
})
--telescope
local builtin=require('telescope.builtin')
vim.keymap.set('n','<leader>ff',builtin.find_files,{desc='Telescope find files'})
vim.keymap.set('n','<leader>fg',builtin.live_grep,{desc='Telescop live grep'})
vim.keymap.set('n','<leader>fb',builtin.buffers,{desc='Telescope buffers'})
vim.keymap.set('n','<leader>ft',builtin.help_tags,{desc='Telescope help tags'})
