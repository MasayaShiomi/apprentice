#!/bin/bash

PASSWORD_FILE="passwords_3"
ENCRYPTED_FILE="passwords_3.gpg"
SECRET_PASSPHRASE="abc"

function add_password() {
	if [ -e "$ENCRYPTED_FILE" ]; then
		gpg --quiet --decrypt --yes --output $PASSWORD_FILE --passphrase="$SECRET_PASSPHRASE" $ENCRYPTED_FILE
	else
		touch $PASSWORD_FILE
	fi

  echo "サービス名を入力してください："
  read service_name
  echo "ユーザー名を入力してください："
  read user_name
  echo "パスワードを入力してください："
  read -s password

  echo "${service_name}:${user_name}:${password}" >> $PASSWORD_FILE

	gpg --yes --batch --passphrase="$SECRET_PASSPHRASE" -c $PASSWORD_FILE
	rm $PASSWORD_FILE

  echo "パスワードの追加は成功しました。"
}

function get_password() {
	gpg --quiet --decrypt --yes --output $PASSWORD_FILE --passphrase="$SECRET_PASSPHRASE" $ENCRYPTED_FILE

  echo "サービス名を入力してください："
  read service_name
  result=$(grep "^${service_name}:" $PASSWORD_FILE)

  if [ -z "$result" ]; then
    echo "そのサービスは登録されていません。"
  else
    IFS=":" read -ra data <<< "$result"
    echo "サービス名：${data[0]}"
    echo "ユーザー名：${data[1]}"
    echo "パスワード：${data[2]}"
  fi

  rm $PASSWORD_FILE
}

echo "パスワードマネージャーへようこそ！"

while true; do
  echo "次の選択肢から入力してください(Add Password/Get Password/Exit)："
  read choice

  case $choice in
    "Add Password")
      add_password
      ;;
    "Get Password")
      get_password
      ;;
    "Exit")
      echo "Thank you!"
      exit 0
      ;;
    *)
      echo "入力が間違えています。Add Password/Get Password/Exit から入力してください。"
      ;;
  esac
done
