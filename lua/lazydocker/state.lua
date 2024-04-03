local M = {}

--- Namespace
-- @field id: number - namespace id
-- @return M.namespace
M.namespace = {
	id = nil,
	--- Creates plugin specific namespace
	-- @return nil
	create = function()
		M.namespace.id = vim.api.nvim_create_namespace("lazydocker")
	end,
}

return M
