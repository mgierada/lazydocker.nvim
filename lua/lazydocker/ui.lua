local Terminal = require("toggleterm.terminal").Terminal

local M = {}

local lazydocker_term = nil -- Store the terminal object

function M.toggle_lazydocker_terminal()
	if lazydocker_term and lazydocker_term:is_open() then
		lazydocker_term:close()
		lazydocker_term = nil
	else
		-- Create a floating terminal pane and run a custom command
		lazydocker_term = Terminal:new({
			cmd = "lazydocker",
			direction = "float",
			float_opts = { border = "double" },
			on_open = function(term)
				vim.cmd("startinsert!")
				vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
			end,
		})
		return lazydocker_term:toggle()
	end
end

return M
