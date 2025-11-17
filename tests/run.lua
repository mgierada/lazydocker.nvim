-- Test runner script for plenary.nvim
-- This script loads the test framework and runs all tests

-- Store the exit code
local exit_code = 0

-- Wrap test execution to capture failures
local ok, result = pcall(function()
	require("plenary.test_harness").test_directory(
		"tests",
		{
			minimal_init = "tests/minimal_init.lua",
			sequential = false,
		}
	)
end)

-- Set exit code based on result
if not ok then
	print("Test execution failed: " .. tostring(result))
	exit_code = 1
end

-- Force exit with the appropriate code
vim.cmd("cquit " .. exit_code)
