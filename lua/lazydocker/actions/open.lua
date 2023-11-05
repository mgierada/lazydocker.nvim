local ui = require("lazydocker.ui")

local M = {}

-- @return nil
M.run = function(options)
	ui.toggle_lazydocker_terminal()
end

return M
