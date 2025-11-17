-- Minimal init file for running tests
-- This ensures the plugin can be loaded in test environment

-- Add the plugin directory to the runtime path
vim.cmd([[set runtimepath+=.]])

-- Add plenary to runtime path (will be cloned in CI)
vim.cmd([[set runtimepath+=deps/plenary.nvim]])

-- Disable swapfile and backup for tests
vim.opt.swapfile = false
vim.opt.backup = false
