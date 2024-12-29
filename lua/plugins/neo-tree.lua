return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
	vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal left<CR>", {})
	vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})
	require("neo-tree").setup({
		filesystem = {
			filtered_items = {
				visible = true, -- If true, hidden items are dimmed out instead of hidden.
				hide_dotfiles = false, -- Set to false to reveal dotfiles.
				hide_gitignored = true, -- Git-ignored files will still be hidden.
			},
		},
	})
end,}
