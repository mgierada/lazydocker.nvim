.PHONY: test prepare

prepare:
	@echo "Preparing test environment..."
	@mkdir -p deps
	@if [ ! -d "deps/plenary.nvim" ]; then \
		git clone --depth 1 https://github.com/nvim-lua/plenary.nvim deps/plenary.nvim; \
	fi
	@if [ ! -d "deps/toggleterm.nvim" ]; then \
		git clone --depth 1 https://github.com/akinsho/toggleterm.nvim deps/toggleterm.nvim; \
	fi
	@echo "Test environment ready!"

test: prepare
	@echo "Running tests..."
	nvim --headless -u tests/minimal_init.lua -c "luafile tests/run.lua"

clean:
	@echo "Cleaning test dependencies..."
	@rm -rf deps
