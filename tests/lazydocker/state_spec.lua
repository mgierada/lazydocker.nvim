local state = require("lazydocker.state")

describe("state", function()
	describe("namespace", function()
		it("should exist", function()
			assert.is_table(state.namespace)
		end)

		it("should have create function", function()
			assert.is_function(state.namespace.create)
		end)

		it("should create namespace with valid id", function()
			state.namespace.create()
			assert.is_not_nil(state.namespace.id)
			assert.is_number(state.namespace.id)
		end)
	end)
end)
