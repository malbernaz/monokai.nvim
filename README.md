# Neovim Monokai Pro

Monokai Pro theme for Neovim with tree-sitter support. This theme have been forked from this amazing
repo [tanvirtin/monokai.nvim](https://github.com/tanvirtin/monokai.nvim).

<img width="1792" alt="monokai nvim" src="https://user-images.githubusercontent.com/25164326/121434903-0562f180-c94c-11eb-952d-df702d92fe25.png">

## Prerequisites

Neovim >= 0.5

## Installation

| Plugin Manager                                      | Command                         |
| --------------------------------------------------- | ------------------------------- |
| [Packer](https://github.com/wbthomason/packer.nvim) | `use 'malbernaz/monokai.nvim'`  |
| [Vim-plug](https://github.com/junegunn/vim-plug)    | `Plug 'malbernaz/monokai.nvim'` |

## Usage

In VimL:

```viml
syntax on
colorscheme monokai
```

In Lua:

```lua
require('monokai').setup({})
```

## Customization

It is possible to customize Monokai theme with `setup` function (only in Lua). Passed argument will override default configuration values witch are:

```lua
{
  palette = {
    base1 = "#211F22",
    base2 = "#26292C",
    base3 = "#2E323C",
    base4 = "#3f4550",
    base5 = "#484e5b",
    base6 = "#5a6272",
    base7 = "#6c7689",
    white = "#FCFCFA",
    pink = "#FF6188",
    green = "#A9DC76",
    aqua = "#78DCE8",
    yellow = "#FFD866",
    orange = "#FC9867",
    purple = "#AB9DF2",
    diff_add = "#3D5213",
    diff_remove = "#4A0F23",
    diff_change = "#27406B",
    diff_text = "#23324D",
  },
  custom_hlgroups = {},
}
```

An example of this would be as follows:

```lua
local monokai = require('monokai')
local palette = monokai.palette

monokai.setup {
  palette = {
    diff_text = '#133337',
  },
  custom_hlgroups = {
    TSInclude = {
      fg = palette.aqua,
    },
    GitSignsAdd = {
      fg = palette.green,
      bg = palette.base2
    },
    GitSignsDelete = {
      fg = palette.pink,
      bg = palette.base2
    },
    GitSignsChange = {
      fg = palette.orange,
      bg = palette.base2
    },
  }
}
```

## Extras

An extra color config for **Kitty**, can be found in [extras](extras/) and a **lualine** config is also available in `monokai.lualine`.
