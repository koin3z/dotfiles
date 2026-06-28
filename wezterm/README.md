# WezTerm

## 設定ファイルの場所

| OS | パス |
|---|---|
| macOS | `~/.config/wezterm/` |
| Linux | `~/.config/wezterm/` |
| Windows | `C:\Users\<user>\.config\wezterm\` または `wezterm.exe` と同じディレクトリ |

> Windows ではサムドライブ (USB) からの実行をサポートするため、`wezterm.exe` と同じディレクトリにある設定ファイルも読み込まれる。通常利用ではユーザーディレクトリへの配置を推奨。
> 参考: https://wezfurlong.org/wezterm/config/files.html

## セットアップ

```bash
# macOS / Linux
mkdir -p ~/.config/wezterm
ln -sf ~/dotfiles/wezterm/wezterm.lua ~/.config/wezterm/wezterm.lua
ln -sf ~/dotfiles/wezterm/keybinds.lua ~/.config/wezterm/keybinds.lua
```

## ファイル構成

```
wezterm/
├── wezterm.lua    # メイン設定
└── keybinds.lua   # キーバインド設定
```

## カスタマイズ内容

### 外観 (wezterm.lua)

| 設定 | 値 | 説明 |
|---|---|---|
| `font_size` | `12.0` | フォントサイズ |
| `window_background_opacity` | `0.65` | ウィンドウ背景の不透明度 (65%) |
| `macos_window_background_blur` | `20` | macOS のみ背景ぼかし効果 |
| `use_ime` | `true` | IME を有効化 (日本語入力対応) |

設定ファイルの変更は自動で再読み込みされる (`automatically_reload_config = true`)。

### Leader キー

`Ctrl + g` (タイムアウト 2000ms)

### キーバインド (keybinds.lua)

| キー | 動作 |
|---|---|
| `Leader + Shift + %` | 現在のペインを横方向に分割 |
| `Leader + Shift + "` | 現在のペインを縦方向に分割 |
| `Leader + z` | 現在のペインをズーム切り替え |
| `Leader + o` | 次のペインにフォーカスを移動 |
| `Cmd + v` (Mac) | クリップボードからペースト |

> Windows では `Cmd + v` を `Ctrl + v` に変更する必要がある (`keybinds.lua` 内のコメントを参照)。
