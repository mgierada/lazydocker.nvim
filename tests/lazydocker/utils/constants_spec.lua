local constants = require("lazydocker.utils.constants")

describe("constants", function()
	it("should have COMMANDS table", function()
		assert.is_table(constants.COMMANDS)
	end)

	it("should have open command", function()
		assert.equals("Lazydocker", constants.COMMANDS.open)
	end)

	it("should have AUTOGROUP constant", function()
		assert.equals("LazydockerAutogroup", constants.AUTOGROUP)
	end)
end)
