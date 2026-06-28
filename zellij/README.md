# Zellij

## 設定ファイルの場所

| OS | パス |
|---|---|
| macOS / Linux | `~/.config/zellij/` |

## セットアップ

```bash
mkdir -p ~/.config/zellij/layouts
ln -sf ~/dotfiles/zellij/config.kdl ~/.config/zellij/config.kdl
ln -sf ~/dotfiles/zellij/layouts/no-layout.kdl ~/.config/zellij/layouts/no-layout.kdl
ln -sf ~/dotfiles/zellij/layouts/web-dev.kdl ~/.config/zellij/layouts/web-dev.kdl
```

## ファイル構成

```
zellij/
├── config.kdl             # メイン設定 (キーバインド・テーマ・プラグイン)
└── layouts/
    ├── no-layout.kdl      # タブバーのみのシンプルレイアウト
    └── web-dev.kdl        # Web 開発用レイアウト
```

## カスタマイズ内容

### テーマ

`tokyo-night` テーマを使用 (Neovim・WezTerm と統一)。

### キーバインド

デフォルトキーバインドを全クリア (`clear-defaults=true`) し、vi キーバインドベースで再定義。

#### モード切り替え (常時有効)

| キー | モード |
|---|---|
| `Ctrl p` | Pane モード |
| `Ctrl t` | Tab モード |
| `Ctrl n` | Resize モード |
| `Ctrl h` | Move モード |
| `Ctrl s` | Scroll モード |
| `Ctrl o` | Session モード |
| `Ctrl b` | Tmux 互換モード |
| `Ctrl g` | Locked モード (入力をそのままシェルへ渡す) |
| `Enter` / `Esc` | Normal モードに戻る |

#### 常時有効なキー (locked モード以外)

| キー | 動作 |
|---|---|
| `Alt h/j/k/l` | ペイン / タブ間のフォーカス移動 |
| `Alt n` | 新規ペインを開く |
| `Alt f` | フローティングペインの切り替え |
| `Alt [` / `Alt ]` | スワップレイアウトの前後切り替え |
| `Ctrl q` | Zellij を終了 |

#### Pane モード (`Ctrl p`)

| キー | 動作 |
|---|---|
| `h/j/k/l` | ペイン間のフォーカス移動 |
| `r` | 右方向に新規ペインを開く |
| `d` | 下方向に新規ペインを開く |
| `n` | 新規ペインを開く |
| `f` | フォーカスをフルスクリーン切り替え |
| `z` | ペインフレームの表示切り替え |
| `e` | フローティング / 埋め込みの切り替え |
| `w` | フローティングペイン一覧の切り替え |
| `x` | 現在のペインを閉じる |
| `c` | ペイン名を変更 |

#### Tab モード (`Ctrl t`)

| キー | 動作 |
|---|---|
| `h/k` | 前のタブへ移動 |
| `l/j` | 次のタブへ移動 |
| `1`〜`9` | 指定番号のタブへ直接移動 |
| `n` | 新規タブを開く |
| `x` | 現在のタブを閉じる |
| `r` | タブ名を変更 |

#### Tmux 互換モード (`Ctrl b`)

| キー | 動作 |
|---|---|
| `%` | 右方向にペインを分割 |
| `"` | 下方向にペインを分割 |
| `h/j/k/l` | ペイン間のフォーカス移動 |
| `z` | フォーカスをフルスクリーン切り替え |
| `n/p` | 次 / 前のタブへ移動 |
| `c` | 新規タブを開く |
| `[` | Scroll モードへ移行 |
| `d` | セッションをデタッチ |

### その他の設定

- `show_startup_tips false` — 起動時のヒントを非表示

## レイアウト

### no-layout.kdl

タブバーと 1 つのペインのみのシンプルなレイアウト。

```bash
zellij --layout no-layout
```

### web-dev.kdl

Web 開発向けの 3 ペイン構成。

```
┌──────────────────────┬─────────────────┐
│                      │ server          │
│  editor (60%)        │ (npm run dev)   │
│                      ├─────────────────┤
│                      │ terminal        │
└──────────────────────┴─────────────────┘
```

```bash
zellij --layout web-dev
```
