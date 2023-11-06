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

</div>

## Overview

`lazydocker.nvim` is a `lazydocker` plugin for neovim that allows you to manage your docker environment without leaving your workspace. `lazydocker` itself is a simple terminal UI for both `docker` and `docker-compose`, written in Go.

## ✨ Features

- ✨ Toggle `lazydocker` in neovim without leaving your workspace. Just use `Lazydocker` command.

<img width="1728" alt="image" src="https://github.com/mgierada/lazydocker.nvim/assets/23472449/4d29e42c-f6f6-4457-a437-284ca6a98989">

And a new floating terminal with `lazydocker` will pop up.

<img width="1727" alt="image" src="https://github.com/mgierada/lazydocker.nvim/assets/23472449/e9226a71-c20f-48d0-8fb8-72d030bd3711">

For a default keymaps bindings please refer to that [wiki](https://github.com/jesseduffield/lazydocker/blob/master/docs/keybindings/Keybindings_en.md).

## 🔌 Available commands

- `Lazydocker`

## ⚡️Requirements

It should work with any fairly modern neovim version. I tested that for the following:

- `neovim` >= 0.9 and nightly 0.10-dev releases
- `lazydocker` >= 0.21.1

## 💻 Installation

Make sure you have `lazydocker` up and running. The in-depth installing walkthrough is perfectly described in that [here](https://github.com/jesseduffield/lazydocker).

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
  -- Pybumper
  {
    "mgierada/lazydocker.nvim",
    dependencies = { "akinsho/toggleterm.nvim" },
    config = function() require("lazydocker").setup {} end,
    event = "BufRead",
  },

```
