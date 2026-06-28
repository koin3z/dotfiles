# Visual Studio Code

## 設定ファイルの場所

| OS | パス |
|---|---|
| macOS | `~/Library/Application Support/Code/User/settings.json` |
| Linux | `~/.config/Code/User/settings.json` |
| Windows | `%APPDATA%\Code\User\settings.json` |

## セットアップ

```bash
# macOS
ln -sf ~/dotfiles/vscode/settings.json \
  ~/Library/Application\ Support/Code/User/settings.json

# Linux
mkdir -p ~/.config/Code/User
ln -sf ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
```

## カスタマイズ内容

### エディタ

| 設定 | 値 | 説明 |
|---|---|---|
| `editor.tabSize` | `8` | タブ幅を 8 に設定 |
| `editor.insertSpaces` | `false` | インデントにタブ文字を使用 |
| `editor.cursorStyle` | `line` | カーソルをライン表示 |
| `editor.lineNumbers` | `on` | 行番号を常に表示 |
| `editor.wordWrap` | `off` | 自動折り返しを無効化 |

### ファイルの関連付け

`.ipynb` ファイルを Jupyter Notebook 形式で開く。

### ターミナル

| 設定 | 説明 |
|---|---|
| `terminal.integrated.inheritEnv: false` | 統合ターミナルが環境変数を引き継がない |
| `terminal.integrated.copyOnSelection: true` | 選択すると自動でクリップボードにコピー |
| `terminal.integrated.rightClickBehavior: paste` | 右クリックでペースト |

### 拡張機能

- アイコンテーマ: `material-icon-theme`
- Jupyter / Python 拡張機能に CPU コア 1 を優先割り当て (`extensions.experimental.affinity`)
