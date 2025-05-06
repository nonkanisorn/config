return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 15,
			open_mapping = [[<c-\>]],
			direction = "horizontal",
			close_on_exit = true,
			shell = "/usr/bin/zsh", -- เปลี่ยน shell ที่แน่นอนว่ามี
		})

		vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle Terminal" })
	end,
}
