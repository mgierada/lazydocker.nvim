-- Test runner script for plenary.nvim
-- This script loads the test framework and runs all tests

-- Run tests and get results
local ok, results = pcall(function()
	return require("plenary.test_harness").test_directory(
		"tests",
		{
			minimal_init = "tests/minimal_init.lua",
			sequential = false,
		}
	)
end)

-- Check if there were any errors or failures
local exit_code = 0

if not ok then
	-- pcall failed - there was an error running tests
	print("Test execution error: " .. tostring(results))
	exit_code = 1
elseif type(results) == "table" then
	-- Check test results for failures
	if results.fail and results.fail > 0 then
		exit_code = 1
	elseif results.errs and results.errs > 0 then
		exit_code = 1
	end
end

-- Exit with appropriate code
-- Use os.exit to ensure proper exit code
os.exit(exit_code)
