return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		-- Toggle function for Neo-tree
		vim.keymap.set("n", "<leader>e", function()
			if vim.bo.filetype == "neo-tree" then
				vim.cmd("Neotree close") -- Close if already open
			else
				vim.cmd("Neotree filesystem reveal left") -- Open if closed
			end
		end, { silent = true, noremap = true })

		vim.keymap.set("n", "<leader>bf", ":Neotree buffers reveal float<CR>", {})

		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					visible = true, -- Hidden items are dimmed instead of hidden
					hide_dotfiles = false, -- Reveal dotfiles
					hide_gitignored = true, -- Hide git-ignored files
				},
			},
		})
	end,
}
