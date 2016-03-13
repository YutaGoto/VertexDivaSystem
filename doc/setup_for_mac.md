# 環境構築 for Mac

## 前提
- Xcode と、Xcodeコマンドラインツールが利用出来ること<br>
  （Xcodeインストール後 `xcode-select --install` でインストール）
- brew コマンドが使えること
  （`ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` でインストール）
- git コマンドが利用出来ること
  （`brew install git` でインストール）
- openssl, libyaml ライブラリがインストールされていること（rubyのコンパイルで必要）<br>
  (`brew install openssl libyaml` でインストール)

## rbenv + ruby-build のインストール

[参考](http://dev.classmethod.jp/server-side/language/build-ruby-environment-by-rbenv/)

```sh
$ brew update
$ brew install rbenv ruby-build

$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ source ~/.bash_profile
```

## ruby のインストール

ruby 2.2.1 をインストール

```sh
$ rbenv install 2.2.1
```

デフォルトで 2.2.1 が使用されるように設定（やらなくても大丈夫）

```sh
$ rbenv global 2.2.1
```
## node のインストール

```sh
$ brew install node
$ echo 'export PATH="/usr/local/share/npm/bin:$PATH"' >> ~/.bash_profile
$ source ~/.bash_profile
```
## PostgreSQL のインストール

```sh
$ brew update
$ brew install postgresql

DBの初期化
$ initdb /usr/local/var/postgres -E utf8

自動起動スクリプトを登録
$ ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist

DB一覧を表示
$ psql -l

rootユーザーの作成
$ psql postgres

postgres=# CREATE ROLE root WITH LOGIN SUPERUSER CREATEDB CREATEROLE;
postgres=# \du    # ロール（ユーザー）の一覧表示
postgres=# \q     # 終了
```

## bundler (ruby gem ライブラリのパッケージ管理ツール) のインストール

```sh
$ gem install bundler
```

## プロジェクト用の設定

プロジェクトをcloneする

```sh
$ git clone git@github.com:YutaGoto/VertexDivaSystem.git
$ cd VertexDivaSystem/
```

プロジェクトに必要なライブラリをインストール

```
$ bundle install --path vendor/bundle
```

## 設定ファイル

`config/secrets.yml` に書かれたDB名やDB接続情報(usernameとpassword)を環境に合わせて変更（とりあえず、developmentのみ設定すれば問題ない）

postgresを上記通りに設定してあれば
```
:host: localhost
:username: root
:password:
```
と設定すれば動くはずである。

## DB作成

```sql
$ bin/rake db:create
```

## テーブルなどの作成

```sh
$ bin/rake db:migrate
```

## テストデータなどのインポート

```sh
$ bin/rake db:seed
```

## テーブル情報のリセット

```sh
$ bin/rake db:migrate:reset
```

↑保存されているレコードは全て失われるので注意

## 基本的な使い方

```sh
# バージョンを確認
$ bin/rails --version

# rails コンソールを起動
$ bin/rails c

# ローカル開発サーバーを起動 (http://localhost:3000/ でアクセスできる)
$ bin/rails s

# 同じネットワーク環境下で違う端末からアクセスさせたい状態でサーバーを起動させたい場合
$ bin/rails s -b 0.0.0.0

# route の確認
$ bin/rake routes

# DB のマイグレーション
$ bin/rake db:migrate

# DB にシードデータを追加
$ bin/rake db:seed

# rake コマンドの確認
$ bin/rake -T

# コーディングのチェック
$ bundle exec rubocop

# テストを実行
$ bin/rspec
```

## 開発の進め方、注意
[ここ](development.md)



