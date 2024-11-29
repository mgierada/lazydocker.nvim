<div align="center">

# lazydocker.nvim

## 🐋 A `lazydocker` port for neovim 🔌

</div>

<div align="center">

![Lua](https://img.shields.io/badge/Made%20with%20Lua-blueviolet.svg?style=for-the-badge&logo=lua&logoColor=white)

</div>

<div align="center">

![License](https://img.shields.io/badge/License-MIT-brightgreen?style=flat-square)
![Status](https://img.shields.io/badge/Status-Beta-informational?style=flat-square)
![Neovim](https://img.shields.io/badge/Neovim-0.9+-green.svg?style=flat-square&logo=Neovim&logoColor=white)
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
- `q` -- close the floating window with lazydocker

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

## Star History

<a href="https://star-history.com/#mgierada/lazydocker.nvim&Timeline">
 <picture>
   <source media="(prefers-color-scheme: dark)" srcset="https://api.star-history.com/svg?repos=mgierada/lazydocker.nvim&type=Timeline&theme=dark" />
   <source media="(prefers-color-scheme: light)" srcset="https://api.star-history.com/svg?repos=mgierada/lazydocker.nvim&type=Timeline" />
   <img alt="Star History Chart" src="https://api.star-history.com/svg?repos=mgierada/lazydocker.nvim&type=Timeline" />
 </picture>
</a>
