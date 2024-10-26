local opt=vim.opt

--行号
opt.number=true
opt.relativenumber=true

--缩进
opt.tabstop=4
opt.shiftwidth=4
opt.expandtab=true
opt.autoindent=true

--防止包裹
opt.wrap=false

--光标行
opt.cursorline=true

--启用鼠标
opt.mouse:append("a")

--系统剪贴板
opt.clipboard:append("unnamedplus")

--默认新窗口右下
opt.splitright=true
opt.splitbelow=true

--搜索
opt.ignorecase=true
opt.smartcase=true

--外观
opt.termguicolors=true
opt.signcolumn="yes"

--在copy后高亮
vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = { "*" },
	callback = function()
		vim.highlight.on_yank({
			timeout = 300,
		})
	end,
})
