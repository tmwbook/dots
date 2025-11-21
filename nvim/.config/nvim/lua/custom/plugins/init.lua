-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 4

vim.keymap.set("n", "<leader>sk", require("telescope.builtin").keymaps, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>km", function()
	return ":set filetype="
end, { expr = true, desc = "[K]hange [M]ode: VSCode Change Syntax" })
vim.keymap.set("n", "<leader>Q", ":cclose<cr>", { desc = "Close Quicklist" })

vim.opt.spelllang = "en_us"

vim.keymap.set("i", "jk", "<esc>")

vim.opt.conceallevel = 2

return {}
