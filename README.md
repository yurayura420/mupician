# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# アプリ名
mupician

# 概要
ミュージシャンの写真とその楽曲を一つにまとめて投稿できるアプリケーションです。
ユーザーの投稿を閲覧することでミュージシャンの曲とビジュアルを認識することができ、それにより新たに興味を持つミュージシャンを増やしていくことができます。

# 本番環境
https://mupician.herokuapp.com/ (herokuが二十四時間ごとに再起動されるため、audioファイルがアップされてから時間が経つと消えている可能性があります）)
Email test@exsample.com
password aaaaaa

# 制作背景
私は音楽を聞くことが好きで、様々な人が自分の好きなミュージシャンを勧めることができるサービスがあれば今まで知らなかった人たちの曲を聞くきっかけになると思い作成しました。その際、曲だけでなくビジュアルもわかるとさらに興味が湧くと考え、それらを一つにまとめて投稿できるサービスにしました。


# 工夫したポイント
audioファイルをactivestorageで管理して写真はurlによる管理とそれぞれ保存方法を分けるよう工夫しました。
また、audioファイルは画像のように単純にタグを使用すれば表示できるものではなかったため、オーディオバーを投稿内に表示させる工程が非常に難しかったです。


# 開発環境
ruby on rails,HTML,CSS,Java Script,Git Hub,My SQL,heroku,Rspec,VScode

# 今後の課題
投稿内のアーティスト名を、その文字列をグーグル検索したページへのリンクにすることでさらに利便性を高めたいです。
また、マイページの画面も作成したいです。
# DB設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| nickname   | string | null: false |
| email      | string | null: false |
| password   | string | null: false |

### Association

- has_many :tweets
- has_many :comments


## tweets テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| text       | string     | null: false                    |
| musician   | string     | null: false                    |
| music      | string     | null: false                    |
| image      | string     | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association
- has_many :comments
- belongs_to :user



## comments テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| text       | text       | null: false                    |
| user       | references | null: false, foreign_key: true |
| tweet      | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :tweet

