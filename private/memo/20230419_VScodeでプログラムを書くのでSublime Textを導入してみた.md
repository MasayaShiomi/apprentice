20230419_VScodeはちょっとマッチョな気がするのでSublime Textを導入してみた

参考
https://qiita.com/heppokofrontend/items/9baff2dc5e43abaa2481


OmniMarkupPreviewerの使い方
command + option + o でプレビュー
command + option + x でｈｔｍｌ形式にエクスポート

https://qiita.com/takamicii/items/a75d8901e50cb444723b


Sublime Textの各種定 を参考にした

https://sweep3092.hatenablog.com/entry/2015/01/09/044852


サイドバーには、エディタで開いているファイルや、サイドバーにドラッグアンドドロップしたディレクトリがツリー構造となって表示されます。

{
  // デフォルトの改行コード
  "default_line_ending": "unix",
  // インデントの表示
  "draw_indent_guides": true,
  // 関数折りたたみなどのボタン表示
  "fold_buttons": true,
  // フォント描画の設定（Windowsで日本語がキレイに描画される）
  "font_options":
  [
    "directwrite"
  ],
  // フォントサイズ
  "font_size": 12,
  // 選択中の行をハイライトする
  "highlight_line": true,
  // タブサイズ
  "tab_size": 2,
  // 保存時にタブをスペースに変換する
  "translate_tabs_to_spaces": true,
  "trim_automatic_white_space": true,
  // 行末スペースを保存時に削除する
  "trim_trailing_white_space_on_save": true,
  "use_tab_stops": true,
  // エンコードを表示する
  "show_encoding": true,
  // 改行コードを表示する
  "show_line_endings": true,
  // 未保存のタブをハイライトする
  "highlight_modified_tabs": true,
  "ignored_packages":
  [
    "Vintage"
  ],
  // Color Scheme
  "theme": "Cobalt2.sublime-theme"
}