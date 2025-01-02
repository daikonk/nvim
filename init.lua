vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "lazy/lazy.nvim"
if not vim.uv.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.oshiftwidth = 4

require("lazy").setup({
	spec = {
		{ import = "plugins" },
		{ import = "colorschemes" },
	},
}, {
	change_detection = {
		notify = false,
	},
})

-- vim: ts=2 sts=2 sw=2
