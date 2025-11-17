<div align="center">

# lazydocker.nvim

## 🐋 A `lazydocker` port for neovim 🔌

</div>

<div align="center">

![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua&logoColor=white)

</div>

<div align="center">

![License](https://img.shields.io/badge/License-MIT-brightgreen?style=flat-square)
![Status](https://img.shields.io/badge/Status-Stable-informational?style=flat-square)
![Neovim](https://img.shields.io/badge/Neovim-0.9+-green.svg?style=flat-square&logo=Neovim&logoColor=white)
[![Tests](https://github.com/mgierada/lazydocker.nvim/workflows/Tests/badge.svg)](https://github.com/mgierada/lazydocker.nvim/actions/workflows/test.yml)
[![Default keymaps](https://img.shields.io/badge/Default%20keymaps-Documentation-blue.svg)](https://github.com/jesseduffield/lazydocker/blob/master/docs/keybindings/Keybindings_en.md)

</div>

</div>

## Overview

`lazydocker.nvim` is a [`lazydocker` plugin](https://github.com/jesseduffield/lazydocker) for neovim that allows you to manage your docker environment without leaving your workspace. `lazydocker` itself is a simple terminal UI for both `docker` and `docker-compose`, written in Go.

## ✨ Features

- ✨ Toggle `lazydocker` in neovim without leaving your workspace. Just use `Lazydocker` command.

<img width="1728" alt="image" src="https://github.com/mgierada/lazydocker.nvim/assets/23472449/4d29e42c-f6f6-4457-a437-284ca6a98989">

And a new floating terminal with `lazydocker` will pop up.

<img width="1727" alt="image" src="https://github.com/mgierada/lazydocker.nvim/assets/23472449/e9226a71-c20f-48d0-8fb8-72d030bd3711">

For a default keymaps bindings please refer to that [wiki](https://github.com/jesseduffield/lazydocker/blob/master/docs/keybindings/Keybindings_en.md).

## 🔌 Available commands

- `Lazydocker`

## Default keymaps

Any default key map could be easily overwritten by modifying the `keys` property. See the Installation section

- `<leader>ld` -- open lazydocker in floating window
- `q` -- close the floating window with `lazydocker`

## ⚡️Requirements

It should work with any fairly modern neovim version. I tested that for the following:

- `neovim` >= 0.9 and nightly 0.11-dev releases
- `lazydocker` >= 0.21.1

## 💻 Installation

Make sure you have `lazydocker` up and running. The in-depth installing walkthrough is perfectly described in [here](https://github.com/jesseduffield/lazydocker).

For a quick start:

1. Mac users can quickly install using `homebrew`

```shell
brew install jesseduffield/lazydocker/lazydocker
brew install lazydocker
```

2. Windows users can use `scoop` or `Chocolatey`

```bash
scoop install lazydocker
choco install lazydocker
```

3. Linux user can try with `aur`

```bash
yay -S lazydocker
```

Install the `lazydocker.nvim` neovim plugin with your favourite package manager:

[Lazy](https://github.com/folke/lazy.nvim)

```lua
-- lazydocker.nvim
{
  "mgierada/lazydocker.nvim",
  dependencies = { "akinsho/toggleterm.nvim" },
  config = function()
    require("lazydocker").setup({
	    border = "curved", -- valid options are "single" | "double" | "shadow" | "curved"
	    width = 0.9, -- width of the floating window (0-1 for percentage, >1 for absolute columns)
	    height = 0.9, -- height of the floating window (0-1 for percentage, >1 for absolute rows)
    })
  end,
  event = "BufRead",
  keys = {
    {
      "<leader>ld",
      function()
        require("lazydocker").open()
      end,
      desc = "Open Lazydocker floating window",
    },
  },
},
```

If you want to make sure `lazydocker.nvim` starts whenever Neovim starts, you can set an event to `event = "VeryLazy"`.

To check if all is setup correctly, run `:checkhealth lazydocker` in your neovim.

## ⚙️ Configuration

The plugin supports the following configuration options:

| Option | Type | Default | Description |
|--------|------|---------|-------------|
| `border` | string | `"double"` | Border style for the floating window. Valid options: `"single"`, `"double"`, `"shadow"`, `"curved"` |
| `width` | number | `0.9` | Width of the floating window. Values between 0 and 1 represent a percentage of the editor width. Values greater than 1 represent absolute column count. |
| `height` | number | `0.9` | Height of the floating window. Values between 0 and 1 represent a percentage of the editor height. Values greater than 1 represent absolute row count. |

### Configuration Examples

**Default configuration** (90% width and height):
```lua
require("lazydocker").setup({
  border = "double",
  width = 0.9,
  height = 0.9,
})
```

**Full screen floating window**:
```lua
require("lazydocker").setup({
  border = "curved",
  width = 1,
  height = 1,
})
```

**Smaller floating window** (70% width and height):
```lua
require("lazydocker").setup({
  border = "single",
  width = 0.7,
  height = 0.7,
})
```

**Fixed size window** (120 columns by 40 rows):
```lua
require("lazydocker").setup({
  border = "double",
  width = 120,
  height = 40,
})
```

**Note**: If you don't specify `width` or `height`, the plugin will use the default values (0.9), ensuring backward compatibility.
## 🧪 Development

### Running Tests

This project includes a comprehensive test suite using [plenary.nvim](https://github.com/nvim-lua/plenary.nvim).

To run tests locally:

```bash
make test
```

This will:
1. Clone `plenary.nvim` into `deps/` directory
2. Run all tests using Neovim in headless mode

To clean test dependencies:

```bash
make clean
```

### CI/CD

The project uses GitHub Actions to automatically run tests on:
- Every push to `main`/`master` branch
- Every pull request
- Multiple OS platforms (Ubuntu, macOS)
- Multiple Neovim versions (stable, nightly)

See `.github/workflows/test.yml` for the full CI configuration.

## Star History

<a href="https://star-history.com/#mgierada/lazydocker.nvim&Timeline">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=mgierada/lazydocker.nvim&type=Timeline&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=mgierada/lazydocker.nvim&type=Timeline" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=mgierada/lazydocker.nvim&type=Timeline" />
 </picture>
</a>
