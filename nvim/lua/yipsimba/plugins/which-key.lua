return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	init = function()
		vim.o.timeout = true
		vim.o.timeoutlen = 500
	end,
	config = function()
		local wk = require("which-key")

		wk.setup({
			-- your configuration comes here
			-- or leave it empty to use the default settings
			-- refer to the configuration section below
		})

		wk.register({
			["<leader>"] = {
				e = {
					name = "Explorer",
				},
				f = {
					name = "Find",
				},
				h = {
					name = "Git",
				},
				s = {
					name = "Splits", -- Group name
				},
				t = {
					name = "Tabs", -- Group name
				},
				w = {
					name = "Workspace",
				},
				l = {
					name = "LazyGit",
				},
				m = {
					name = "Formatting",
				},
				n = {
					name = "Highlighting",
				},
				r = {
					name = "Rename",
				},
				x = {
					name = "Trouble",
				},
			},
		})
	end,
}
