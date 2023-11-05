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

## ✨ Features

- ✨ Toggle `lazydocker` in neovim without leaving your workspace. Just use `Lazydocker` command.

<img width="1728" alt="image" src="https://github.com/mgierada/lazydocker.nvim/assets/23472449/4d29e42c-f6f6-4457-a437-284ca6a98989">

And a new floating terminal with `lazydocker` will pop up.

<img width="1727" alt="image" src="https://github.com/mgierada/lazydocker.nvim/assets/23472449/e9226a71-c20f-48d0-8fb8-72d030bd3711">

## 🔌 Available commands

- `Lazydocker`

## ⚡️Requirements

It should work with any fairly modern neovim tech stack. I tested that for the following:

- neovim >= 0.9 and nightly 0.10-dev releases

## 💻 Installation

Install with your favourite package manager

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
