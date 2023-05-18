#!/bin/bash

# 設定ファイルを読み込む
source ./config.txt

# テンプレートファイルの内容を上書き
cp "$TEMPLATE_FILE" "$SQL_FILE"

# ファイル内のパスを新しいパスに置き換える
sed -i "s|target_path|$NEW_PATH|g" $SQL_FILE

# 確認のためにファイルの内容を表示する
cat $SQL_FILE

