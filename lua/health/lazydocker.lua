-- Health check module for lazydocker.nvim
-- Run with :checkhealth lazydocker

local M = {}

-- Helper function to report health status
-- Supports both modern vim.health API and fallback to vim.notify
local function report_start(msg)
	if vim.health then
		vim.health.start(msg)
	else
		vim.notify(msg, vim.log.levels.INFO)
	end
end

local function report_ok(msg)
	if vim.health then
		vim.health.ok(msg)
	else
		vim.notify("✓ " .. msg, vim.log.levels.INFO)
	end
end

local function report_warn(msg)
	if vim.health then
		vim.health.warn(msg)
	else
		vim.notify("⚠ " .. msg, vim.log.levels.WARN)
	end
end

local function report_error(msg)
	if vim.health then
		vim.health.error(msg)
	else
		vim.notify("✗ " .. msg, vim.log.levels.ERROR)
	end
end

local function report_info(msg)
	if vim.health then
		vim.health.info(msg)
	else
		vim.notify("ℹ " .. msg, vim.log.levels.INFO)
	end
end

-- Main health check function
function M.check()
	report_start("lazydocker.nvim")

	-- Check for lazydocker binary
	if vim.fn.executable("lazydocker") == 1 then
		report_ok("lazydocker binary found in PATH")
	else
		report_error(
			"lazydocker binary not found in PATH. "
				.. "Install it from: https://github.com/jesseduffield/lazydocker"
		)
	end

	-- Check for toggleterm.nvim dependency
	local has_toggleterm, _ = pcall(require, "toggleterm.terminal")
	if has_toggleterm then
		report_ok("toggleterm.nvim is installed")
	else
		report_warn(
			"toggleterm.nvim is not installed. "
				.. "lazydocker.nvim requires toggleterm.nvim to function. "
				.. "Install it from: https://github.com/akinsho/toggleterm.nvim"
		)
	end

	-- Report Neovim version
	local version = vim.version()
	if version then
		local version_str = string.format("%d.%d.%d", version.major, version.minor, version.patch)
		report_info("Neovim version: " .. version_str)
	end
end

return M
