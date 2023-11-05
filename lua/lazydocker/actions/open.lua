local ui = require("lazydocker.ui")

local M = {}

-- @return nil
M.run = function()
	ui.toggle_lazydocker_terminal()
end

return M
