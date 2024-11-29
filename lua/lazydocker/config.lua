local constants = require("lazydocker.utils.constants")
local state = require("lazydocker.state")

local M = {
	__DEFAULT_OPTIONS = {
		border = "double",
	},
}

-- Initialize default options
M.options = M.__DEFAULT_OPTIONS

--- Register namespace
-- @return nil
M.__register_namespace = function()
	state.namespace.create()
end

--- Clone options and replace empty ones with default ones
-- @param user_options: M.__DEFAULT_OPTIONS - all the options user can provide in the plugin config
-- @return nil
M.__register_user_options = function(user_options)
	M.options = vim.tbl_deep_extend("keep", user_options or {}, M.__DEFAULT_OPTIONS)
end

--- Prepare a clean augroup for the plugin to use
-- @return nil
M.__prepare_augroup = function()
	vim.cmd("augroup " .. constants.AUTOGROUP)
	vim.cmd("autocmd!")
	vim.cmd("augroup end")
end

--- Register all plugin commands
-- @return nil
M.__register_commands = function()
	vim.cmd("command! " .. constants.COMMANDS.open .. " lua require('lazydocker').open()")
end

--- Take all user options and setup the config
-- @param user_options: default M table - all options user can provide in the plugin config
-- @return nil
M.setup = function(user_options)
	M.__register_user_options(user_options)
	M.__register_namespace()
	M.__prepare_augroup()
	M.__register_commands()
end

return M
