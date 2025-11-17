-- Test runner script for plenary.nvim
-- This script loads the test framework and runs all tests

-- Load plenary test harness
require("plenary.test_harness").test_directory(
	"tests",
	{
		minimal_init = "tests/minimal_init.lua",
		sequential = false,
	}
)
