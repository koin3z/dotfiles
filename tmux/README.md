# tmux

## 設定ファイルの場所

| OS | パス |
|---|---|
| macOS / Linux | `~/.config/tmux/tmux.conf` または `~/.tmux.conf` |

## セットアップ

```bash
mkdir -p ~/.config/tmux
ln -sf ~/dotfiles/tmux/tmux.conf ~/.config/tmux/tmux.conf
```

設定を反映するには tmux を再起動するか、以下を実行する。

```bash
tmux source-file ~/.config/tmux/tmux.conf
```

## カスタマイズ内容

### Prefix キー

`Ctrl + b` → `Ctrl + g` に変更。

### コピーモード

vi キーバインドを使用 (`set-window-option -g mode-keys vi`)。

### ウィンドウ番号の自動採番

ウィンドウを閉じたとき、番号が自動的に詰められて連番になる (`renumber-windows on`)。

### ステータスライン

| 表示位置 | 内容 |
|---|---|
| 左 | ウィンドウ番号・ペイン番号 |
| 右 | ディスク使用率・ロードアベレージ・時刻・日付 |

> ステータス右の `df` コマンドは Linux 向けの設定。macOS の場合はコメントアウトされている別コマンドを使用する。

### ペインのハイライト

アクティブなペインの境界線を青 (`colour32`) で表示。
