local Terminal = require("toggleterm.terminal").Terminal
local lazydocker_config = require("lazydocker.config")

local M = {}

local lazydocker_term = nil -- Store the terminal object

--- Convert float (0-1) to percentage of screen dimension, or return integer as-is
-- @param value: number - the width or height value from config
-- @param dimension: number - the screen dimension (columns or rows)
-- @return number - integer value suitable for toggleterm float_opts
local function convert_dimension(value, dimension)
	if value > 0 and value <= 1 then
		-- Convert float to percentage of screen dimension
		return math.floor(value * dimension)
	else
		-- Return as integer for absolute values
		return math.floor(value)
	end
end

--- Toggle the lazydocker terminal
-- @return nil
-- @usage require("lazydocker.ui").toggle_lazydocker_terminal()
function M.toggle_lazydocker_terminal()
	if lazydocker_term and lazydocker_term:is_open() then
		lazydocker_term:close()
		lazydocker_term = nil
	else
		-- Get current screen dimensions
		local screen_width = vim.o.columns
		local screen_height = vim.o.lines
		
		-- Convert width and height to integers
		local width = convert_dimension(lazydocker_config.options.width, screen_width)
		local height = convert_dimension(lazydocker_config.options.height, screen_height)
		
		-- Create a floating terminal pane and run a custom command
		lazydocker_term = Terminal:new({
			cmd = "lazydocker",
			direction = "float",
			float_opts = {
				border = lazydocker_config.options.border,
				width = width,
				height = height,
			},
			on_open = function(term)
				vim.cmd("startinsert!")
				vim.api.nvim_buf_set_keymap(term.bufnr, "n", "q", "<cmd>close<CR>", { noremap = true, silent = true })
			end,
		})
		return lazydocker_term:toggle()
	end
end

return M
