local M = {}

M.setup = function(options)
	local config = require("lazydocker.config")
	config.setup(options)
end

M.open = function(options)
	local open_action = require("lazydocker.actions.open")
	open_action.run(options)
end

return M
