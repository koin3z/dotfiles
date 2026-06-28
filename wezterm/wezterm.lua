-- Pull in the wezterm API
local wezterm = require 'wezterm' -- wezterm APIをインポート

-- This will hold the configuration.
local config = wezterm.config_builder() -- 設定を格納する変数 'config' を作成
config.automatically_reload_config = true -- 設定ファイルの変更を自動で再読み込み

config.font_size = 12.0 -- フォントサイズを 12.0 に設定
config.use_ime = true -- IMEを有効にする (日本語入力などに必要)
config.window_background_opacity = 0.65 -- ウィンドウの背景の不透明度を 65% に設定
config.macos_window_background_blur = 20 -- macOSでウィンドウの背景のぼかし効果を20に設定
-- config.window_decorations = "RESIZE" -- ウィンドウの装飾をリサイズのみ可能に設定（現在はコメントアウト）

config.keys = require("keybinds").keys -- キーバインドを 'keybinds.lua' からインポート
config.key_tables = require("keybinds").key_tables -- key_tablesも 'keybinds.lua' からインポート
config.disable_default_key_bindings = true -- デフォルトのキーバインドを無効にする

config.leader = { key = "g", mods = "CTRL", timeout_milliseconds = 2000 }
-- Leaderキーの設定: 'Ctrl + g' をLeaderキーとして、リーダーキーの入力待機時間を2000msに設定

-- This is where you actually apply your config choices

-- For example, changing the color scheme:

-- and finally, return the configuration to wezterm
return config -- 設定を wezterm に返す
