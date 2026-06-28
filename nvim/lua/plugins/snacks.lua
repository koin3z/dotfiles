return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            hidden = true, -- 隠しファイル（.で始まるファイル）を常に表示する
            -- ignored = true, -- もし .gitignore で除外したファイルも表示したい場合はコメントアウトを外す
          },
        },
      },
    },
  },
}
