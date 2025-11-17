.PHONY: test prepare

# Prepare test environment by cloning plenary.nvim
prepare:
	@echo "Preparing test environment..."
	@mkdir -p deps
	@if [ ! -d "deps/plenary.nvim" ]; then \
		git clone --depth 1 https://github.com/nvim-lua/plenary.nvim deps/plenary.nvim; \
	fi
	@echo "Test environment ready!"

# Run all tests
test: prepare
	@echo "Running tests..."
	nvim --headless -u tests/minimal_init.lua -c "luafile tests/run.lua"

# Clean test dependencies
clean:
	@echo "Cleaning test dependencies..."
	@rm -rf deps
