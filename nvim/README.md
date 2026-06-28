# Neovim

[LazyVim](https://www.lazyvim.org/) をベースにした Neovim 設定。

## 設定ファイルの場所

| OS | パス |
|---|---|
| macOS / Linux | `~/.config/nvim/` |

## セットアップ

```bash
ln -sf ~/dotfiles/nvim ~/.config/nvim
```

Neovim を起動すると LazyVim が自動でプラグインをインストールする。

## ファイル構成

```
nvim/
├── init.lua                  # エントリポイント
├── lazyvim.json              # LazyVim の有効化 extras
├── lua/
│   ├── config/
│   │   ├── lazy.lua          # lazy.nvim の初期化
│   │   ├── options.lua       # vim オプション
│   │   ├── keymaps.lua       # キーマップ
│   │   └── autocmds.lua      # 自動コマンド
│   └── plugins/
│       ├── colorscheme.lua   # カラースキーム設定
│       ├── neo-tree.lua      # ファイルツリー設定
│       └── snacks.lua        # snacks.nvim 設定
└── stylua.toml               # Lua フォーマッタ設定
```

## カスタマイズ内容

### クリップボード (init.lua)

OSC 52 を使ってリモート環境 (SSH 先など) からもシステムクリップボードにコピーできるように設定。

```lua
vim.g.clipboard = { name = 'OSC 52', ... }
vim.opt.clipboard = "unnamedplus"
```

### カラースキーム (lua/plugins/colorscheme.lua)

[tokyonight.nvim](https://github.com/folke/tokyonight.nvim) の `storm` スタイルを使用。

### ファイルツリー (lua/plugins/neo-tree.lua)

Neo-tree でドットファイル・gitignore 対象ファイルを含むすべてのファイルを表示する。

### ピッカー (lua/plugins/snacks.lua)

snacks.nvim の explorer ピッカーで隠しファイルを常に表示する。

### オプション (lua/config/options.lua)

`conceallevel = 0` に設定し、Markdown などで記号が隠れないようにしている。
