#!/bin/bash

PASSWORD_FILE="passwords.txt"

echo "パスワードマネージャーへようこそ！"

echo "サービス名を入力してください："
read service_name

echo "ユーザー名を入力してください："
read user_name

echo "パスワードを入力してください："
read -s password

echo "${service_name}:${user_name}:${password}" >> $PASSWORD_FILE

echo "Thank you!"
