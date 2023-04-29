20230420_VScodeでWSL2（ubuntu）を使用する

Windows上のVS CodeでRemote-WSLを使い。WSL2のUbuntu 20.04へアクセスする。
https://zenn.dev/s_ryuuki/articles/4b9631674adea4

【余談】Ubuntuのバージョン確認
lsb_release -a

【公式】Rubyのインストール
https://www.ruby-lang.org/ja/documentation/installation/#apt

apt (Debian or Ubuntu)
Debian GNU/Linux および Ubuntu は apt というパッケージマネージャを使っています。 
これはこのように実行することができます:

$ sudo apt-get install ruby-full

インストーラ
システムやパッケージマネージャが提供するRubyのバージョンが古い場合、
サードパーティ製のインストーラを使って新しいものをインストールすることができます。

インストーラの中には、同じシステム上に複数のバージョンをインストールできるものもあり、
関連するマネージャは、異なるRubyを切り替えるのに役立ちます。

RVMをバージョン管理として使用する場合は、
別途インストーラを用意する必要はなく、インストーラが付属しています。

ruby-build
ruby-buildはrbenvのプラグインで、異なるバージョンのRubyのコンパイルとインストールを可能にします。
ruby-buildはrbenvなしでスタンドアロンプログラムとして使用することも可能です。
macOS、Linux、その他のUNIX系OSで利用可能です。


rbenv
rbenv では複数の Ruby を管理することができます。

rbenv は Ruby のインストール自体はサポートしていませんが、 
ruby-build というポピュラーなプラグインを使うことで Ruby を
インストールすることができます。

※ruby-build: https://github.com/rbenv/ruby-build#readme

それぞれのツールは macOS、Linux およびその他 UNIX-like な
オペレーティングシステムに対応しています。

rbenv をインストールする方法は rbenvのページ に記述されています。

※rbenvのページ: https://github.com/rbenv/rbenv


ubuntu 22.04にrbenvインストールする
https://zenn.dev/nukokoi/articles/e03fe2372b43a7

Git ことはじめ (for Ubuntu)
https://zenn.dev/kusaremkn/articles/1262af3dea93a3