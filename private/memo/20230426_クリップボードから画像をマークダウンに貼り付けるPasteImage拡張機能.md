[参考: VSCodeのMarkdown環境を整える ～その2 画像貼り付け機能～ | アシタカブログ](https://ashitaka-blog.com/2020-08-31-211817/#toc4)

## 使い方
1. 画像をクリップボードにコピーする。
2. Paste ImageのデフォルトショートカットCtrl+Alt+Vをキーボードから入力する。
3. クリップボードにコピーした画像が保存される。
4. 保存した画像ファイルが相対パス参照でmdファイルに貼り付けられる。


## 設定

使いそうなものだけ記載するので、詳細を知りたい場合は[こちら](https://marketplace.visualstudio.com/items?itemName=mushan.vscode-paste-image)から。

#### pasteImage.defaultName

保存される画像のファイル名。  
デフォルトでは`Y-MM-DD-HH-mm-ss`が設定されている。

なので、実際には`2020-08-29-16-36-13.png`といった形式で保存される。

#### pasteImage.path

画像ファイルの保存先。

使える変数には以下のようなものがあります。

-   ${currentFileDir}：現在の編集ファイルを含むディレクトリのパス。
-   ${projectRoot}：vscodeで開かれたプロジェクトのパス。
-   ${currentFileName}：拡張子付きの現在のファイル名。
-   ${currentFileNameWithoutExt}：拡張子なしの現在のファイル名。

デフォルトでは、`${currentFileDir}`が設定されているので貼り付け先の編集ファイルと同等の階層に画像が保存されます。

これだと、mdファイルと画像が同一階層に配置されてしまい画像ファイルとmdファイルがごっちゃになってしまうので、`settings.json`から変更します。

```
"pasteImage.path": "${currentFileDir}/images/${currentFileNameWithoutExt}"
```

例を用いて設定内容を説明します。

下のようなフォルダ構成で`test.md`に画像を張り付けた場合には、imagesフォルダ配下に「現在編集しているファイル名（拡張子なし」の`test`フォルダが作成され、その配下に画像が配置されていきます。

なお、imagesフォルダも勝手に作られるのでわざわざ作る必要はないです。

```
.
├── test.md
└── images
└── test ← ここ画像が追加される
├── 2020-08-29-17-18-07.png
└── 2020-08-29-17-18-07.png
```