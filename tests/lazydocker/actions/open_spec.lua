local open = require("lazydocker.actions.open")

describe("actions.open", function()
	describe("run", function()
		it("should be a function", function()
			assert.is_function(open.run)
		end)
	end)
end)
