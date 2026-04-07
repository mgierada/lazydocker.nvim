local config = require("lazydocker.config")

describe("config", function()
	describe("__DEFAULT_OPTIONS", function()
		it("should have default options", function()
			assert.is_table(config.__DEFAULT_OPTIONS)
		end)

		it("should have border option with default value", function()
			assert.equals("double", config.__DEFAULT_OPTIONS.border)
		end)
	end)

	describe("options", function()
		it("should be initialized with default options", function()
			assert.is_table(config.options)
			assert.equals("double", config.options.border)
		end)
	end)

	describe("__register_namespace", function()
		it("should be a function", function()
			assert.is_function(config.__register_namespace)
		end)
	end)

	describe("__register_user_options", function()
		it("should be a function", function()
			assert.is_function(config.__register_user_options)
		end)

		it("should merge user options with defaults", function()
			local user_options = { border = "single" }
			config.__register_user_options(user_options)
			assert.equals("single", config.options.border)
		end)

		it("should use defaults when user options are nil", function()
			config.__register_user_options(nil)
			assert.equals("double", config.options.border)
		end)

		it("should keep default values for missing user options", function()
			config.__register_user_options({})
			assert.equals("double", config.options.border)
		end)
	end)

	describe("__prepare_augroup", function()
		it("should be a function", function()
			assert.is_function(config.__prepare_augroup)
		end)
	end)

	describe("__register_commands", function()
		it("should be a function", function()
			assert.is_function(config.__register_commands)
		end)
	end)

	describe("setup", function()
		it("should be a function", function()
			assert.is_function(config.setup)
		end)

		it("should setup config with user options", function()
			local user_options = { border = "curved" }
			config.setup(user_options)
			assert.equals("curved", config.options.border)
		end)
	end)
end)
