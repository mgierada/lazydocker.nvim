-- Test runner script for plenary.nvim

-- Run tests - plenary handles exit codes internally via vim.cmd "0cq"/"1cq"
require("plenary.test_harness").test_directory("tests", {
	minimal_init = "tests/minimal_init.lua",
	sequential = true,
})
