local toggleterm = require("toggleterm")

toggleterm.setup({
	size = 20,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 20,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

--local Terminal = require("toggleterm.terminal").Terminal

--local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
--function _LAZYGIT_TOGGLE() lazygit:toggle() end

--local node = Terminal:new({ cmd = "node", hidden = true })
--function _NODE_TOGGLE() node:toggle() end