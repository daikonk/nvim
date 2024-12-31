return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{ "<leader>e", "<cmd>Neotree reveal<cr>" },
		},
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		},
		lazy = false,
		config = function()
			require("neo-tree").setup({
				window = {
					position = "current",
				},
				filesystem = {
					hijack_netrw_behavior = "open_current",
				},
			})
		end,
	},
}
