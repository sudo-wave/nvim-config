return {
	"akinsho/toggleterm.nvim",
	event = "VeryLazy",
	config = function()
		local toggleterm = require("toggleterm")
		toggleterm.setup({
			size = 10,
			open_mapping = [[<c-\>]],
			hide_numbers = false,
			shade_filetypes = {},
			shade_terminals = true,
			shading_factor = 2,
			start_in_insert = true,
			insert_mappings = true,
			persist_size = true,
			direction = "horizontal",
			close_on_exit = true,
			shell = vim.o.shell,
		})

		function _G.set_terminal_keymaps()
			local opts = { noremap = true }
			vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
			vim.keymap.set("t", "jk", [[<C-\><C-n>]], opts)
			-- vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
			-- vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
			-- vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
			-- vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
			vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
		end

		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
	end,
}
