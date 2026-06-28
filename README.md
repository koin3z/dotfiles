# dotfiles

各種ツールの設定ファイルをまとめたリポジトリ。

## 構成

| ディレクトリ | ツール |
|---|---|
| `nvim/` | Neovim (LazyVim) |
| `tmux/` | tmux |
| `vscode/` | Visual Studio Code |
| `wezterm/` | WezTerm |
| `zellij/` | Zellij |

## セットアップ

### 前提

```bash
git clone <this-repo> ~/dotfiles
cd ~/dotfiles
```

---

### Neovim

設定ディレクトリ: `~/.config/nvim/`

```bash
# macOS / Linux
ln -sf ~/dotfiles/nvim ~/.config/nvim
```

詳細は [nvim/README.md](nvim/README.md) を参照。

---

### tmux

設定ファイル: `~/.config/tmux/tmux.conf`

```bash
# macOS / Linux
mkdir -p ~/.config/tmux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
```

> `~/.tmux.conf` に配置しても動作する。

詳細は [tmux/README.md](tmux/README.md) を参照。

---

### Visual Studio Code

設定ファイル `settings.json` の場所:

| OS | パス |
|---|---|
| macOS | `~/Library/Application Support/Code/User/settings.json` |
| Linux | `~/.config/Code/User/settings.json` |
| Windows | `%APPDATA%\Code\User\settings.json` |

```bash
# macOS
ln -sf ~/dotfiles/vscode/settings.json \
  ~/Library/Application\ Support/Code/User/settings.json

# Linux
mkdir -p ~/.config/Code/User
ln -sf ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
```

詳細は [vscode/README.md](vscode/README.md) を参照。

---

### WezTerm

設定ディレクトリ: `~/.config/wezterm/`

```bash
# macOS / Linux
mkdir -p ~/.config/wezterm
ln -sf ~/dotfiles/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua
ln -sf ~/dotfiles/wezterm/keybinds.lua ~/.config/wezterm/keybinds.lua
```

詳細は [wezterm/README.md](wezterm/README.md) を参照。

---

### Zellij

設定ディレクトリ: `~/.config/zellij/`

```bash
mkdir -p ~/.config/zellij/layouts
ln -sf ~/dotfiles/zellij/config.kdl ~/.config/zellij/config.kdl
ln -sf ~/dotfiles/zellij/layouts/no-layout.kdl ~/.config/zellij/layouts/no-layout.kdl
ln -sf ~/dotfiles/zellij/layouts/web-dev.kdl ~/.config/zellij/layouts/web-dev.kdl
```

詳細は [zellij/README.md](zellij/README.md) を参照。
