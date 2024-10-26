vim.g.mapleader=" "

local keymap = vim.keymap
-- ---------- 插入模式 ---------- ---
--keymap.set("i", "jk", "<ESC>")

-- ---------- 视觉模式 ---------- ---
-- 单行或多行移动
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ---------- 正常模式 ---------- ---
-- 窗口
keymap.set("n", "<leader>al", "<C-w>v") -- 水平新增窗口 
keymap.set("n", "<leader>ac", "<C-w>s") -- 垂直新增窗口

-- 取消高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")
-- 切换buffer
--keymap.set("n", "<C-L>", ":bnext<CR>")
--keymap.set("n", "<C-H>", ":bprevious<CR>")
--
--nvim-tree
keymap.set("n","<leader>e",":NvimTreeToggle<CR>")
--窗口切换
local o ={noremap=true,silent=true}
keymap.set("n","<C-l>","<C-w>l",o)
keymap.set("n","<C-h>","<C-w>h",o)
keymap.set("n","<C-j>","<C-w>j",o)
keymap.set("n","<C-k>","<C-w>k",o)
