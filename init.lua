require("config.options")
require("config.keymaps")
require("config.lazy")
require("config.lsp_set")
require("config.cmp_set")
require("config.autopairs_set")
--lualine
require("lualine").setup{
    options={theme="ayu_mirage"},
}
vim.cmd.colorscheme 'catppuccin-mocha'


--telescope
local builtin=require('telescope.builtin')
vim.keymap.set('n','<leader>ff',builtin.find_files,{desc='Telescope find files'})
vim.keymap.set('n','<leader>fg',builtin.live_grep,{desc='Telescop live grep'})
vim.keymap.set('n','<leader>fb',builtin.buffers,{desc='Telescope buffers'})
vim.keymap.set('n','<leader>ft',builtin.help_tags,{desc='Telescope help tags'})
vim.keymap.set('n','<leader>ts',builtin.treesitter,{desc='Telescope treesitter'})
vim.keymap.set('n','<leader>fs',builtin.grep_string,{desc='Telescope find string'})
vim.keymap.set('n','<leader>cs',builtin.colorscheme,{desc='Telescope colorscheme'})
vim.keymap.set('n','<leader>ch',builtin.command_history,{desc='Telescope command history'})
vim.keymap.set('n','<leader>fu',builtin.current_buffer_fuzzy_find,{desc='Telescope fuzzy find'})
vim.keymap.set('n','<leader>fh',builtin.oldfiles,{desc='Telescope find oldfiles'})
