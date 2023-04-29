## apprenticeプロジェクトのフォルダ構成
`.gitignore`ファイルでバージョン管理しないファイルを指定するのだが、
非公開のファイルについてもナレッジとしてアップしたいため、
`apprentice_private`フォルダに同内容のフォルダ構成を取ることにする。

```
apprentice/	# 公開	# 作業フォルダ
  ├ README.md	# 公開
  ├ intro_summery.md	# 非公開
  ├ daily_report/	# 公開
  ├ output/			# 公開
  │  ├ quest/			# 公開
  │      ├ week1_2/
  │      └ week3_4/
  ├ private/			# 非公開
  │  ├ output/
  │  │  └ quest/
  │  │      ├ week1_2/
  │  │      └ week3_4/
  │  ├ study/
  │  ├ output_private/
  │  │  ├ cheet_summery/
  │  │  ├ week1_2/
  │  │  └ week3_4/
  │  └ memo/
  ├ document/		# 非公開
  │  ├ skill_doc_merge
  │      ├ 000_s_basic_skills.md
  │      ├ 001_s_ruby.md
  │      ├ 002_s_object_oriented_programming.md
  │      ├ 003_s_linux.md
  │      └ 004_s_Git.md
  │  └ quest_merge
  │      ├ 000_q_basic_skills.md
  │      ├ 001_q_ruby.md
  │      ├ 002_q_object_oriented_programming.md
  │      ├ 003_q_linux.md
  │      └ 004_q_Git.md
  ├ data/			# 非公開
  │  └ original_data/
  │  └ images/
  └ others_tmp_box/	# 非公開
```
※ `.md`ファイル内の画像について、Paste Image拡張機能を利用。  
各ファイルと同階層にimagesフォルダを自動作成して管理している。  
範囲選択スクショ(Windows11): `Win+Shift+s`  
VScodeへ貼り付け:`Ctrl+Alt+v`  
ファイル名: `YYMMDD_HHmmss`  
保存先:`${currentFileDir}/images/${currentFileNameWithoutExt}`


## 非公開リポジトリ宛のプッシュについて

- **masterブランチ**: リリース用ブランチ  
開発はせず、常に最新のリリースを確認できる状態にしておく。

- **topicブランチ**: 開発用ブランチ  
日常の編集をする。

- **private_pushブランチ**: 非公開リポジトリ宛のプッシュ用ブランチ  

1. ブランチを切り替えて最新状態のmasterブランチの情報を取り込む (merge)
2. `.gitignore`ファイルをコメントアウト?
3. privateリポジトリを指定してプッシュする

`git push apprentice_private private_push`