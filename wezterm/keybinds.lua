local wezterm = require 'wezterm' -- wezterm モジュールをインポート
local act = wezterm.action -- アクションを簡潔に呼び出せるように変数 'act' を設定

return {
  -- Leaderキーの設定: 'Ctrl + g' をLeaderキーとして、リーダーキーの入力待機時間を1000msに設定
  leader = { key = 'g', mods = 'CTRL', timeout_milliseconds = 1000 },

  -- キーバインド設定
  keys = {
    { 
      key = '%', 
      mods = 'LEADER|SHIFT', 
      action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } 
      -- 'Leader + Shift + %' で、現在のペインのドメインで横方向にペインを分割
    },
    { 
      key = '"', 
      mods = 'LEADER|SHIFT', 
      action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } 
      -- 'Leader + Shift + "' で、現在のペインのドメインで縦方向にペインを分割
    },
    { 
      key = 'z', 
      mods = 'LEADER', 
      action = act.TogglePaneZoomState 
      -- 'Leader + z' で、現在のペインのズーム状態を切り替える
    },
    { 
      key = 'o', 
      mods = 'LEADER', 
      action = act.ActivatePaneDirection 'Next' 
      -- 'Leader + o' で、次のペインにフォーカスを移動
    },
    { 
      key = 'v', 
      mods = 'CMD', 
      action = wezterm.action.PasteFrom("Clipboard") 
      -- 'Cmd + v' で、クリップボードからペースト (Mac 用設定、Windowsでは Ctrl + v に置き換えが必要)
      -- (Windows用) { key = 'v', mods = 'CTRL', action = wezterm.action.PasteFrom("Clipboard") },
    },
  },
}
