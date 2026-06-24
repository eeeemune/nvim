# Neovim Personal Config

My Neovim config. Nothing fancy (still it's colorful/beautiful💓), just the stuff I actually use. For you whose eyes are always tired, I designed the colors so that the keywords remain clearly visible even when viewed upside down. 
<img width="1025" height="855" alt="image" src="https://github.com/user-attachments/assets/122c4cdc-1ad2-432e-a35f-796fb2f18ec2" />

## The vibe

- Space is leader
- Harpoon for hopping between the 4 files I'm actually working on
- Telescope for finding the rest
- lsp-zero so I don't have to think about LSP setup
- Treesitter doing the pretty highlighting

## Keys I reach for

| Key | Does |
|-----|------|
| `<leader>pf` | Find files |
| `<C-g>` | Git files |
| `<leader>ps` | Grep the project |
| `<leader>a` / `<leader>e` | Harpoon: add file / open menu |
| `<C-j>` / `<C-k>` | Jump between Harpoon marks |
| `<leader>gs` | Git status (Fugitive) |
| `<leader>u` | Undo tree |
| `gd` / `K` | Go to def / hover docs |
| `<leader>vrn` | Rename symbol |
| `<leader>ia` | Ask a local LLM about the selection (gen.nvim) |

## What's actually running

The look:
- **Catppuccin** — Mocha, but I ripped the background to pure black and repainted it: yellow visual select, pink search hits, yellow cursor line. It's Catppuccin wearing my clothes.
- **Treesitter** — proper syntax highlighting + indent (C, Lua, Rust, Bash).
- **Indent-blankline** — the little `│` indent guides.

Getting around:
- **Harpoon** — pin 4 files, teleport between them with `<C-j>`/`<C-k>`.
- **Telescope** — fuzzy find everything (with j/k rebound so it feels like vim).
- **Undotree** — undo history as a tree, not a sad linear stack.
- **Fugitive** — Git without leaving the editor.

The LSP brain:
- **lsp-zero** — wires up LSP + completion so I don't have to.
- **Mason** — auto-installs the servers (lua_ls, clangd, rust_analyzer).
- **nvim-cmp + LuaSnip** — the completion popup and snippets.

The robots:
- **Copilot** — inline suggestions, `<Tab>` to take them.
- **gen.nvim** — poke a local Ollama model about whatever I've selected.

## Setup

```sh
git clone https://github.com/eeeemune/nvim.git ~/.config/nvim
nvim
```

On first launch Lazy pulls everything down at the versions pinned in `lazy-lock.json`, so it should look identical to mine. Mason grabs the LSP servers on its own.

## Layout

```
init.lua          -- wires it all together
lua/opts.lua      -- editor options
lua/keymaps.lua   -- the bindings above
lua/plugin/       -- one file per plugin
```
