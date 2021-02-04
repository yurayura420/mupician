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
ミュージシャンの写真とその楽曲を一つにまとめて投稿できるアプリケーションである。
ユーザーの投稿を閲覧することでミュージシャンの曲とビジュアルを認識することができ、それにより新たに興味を持つミュージシャンを増やしていくことができる。

# 本番環境


# 制作背景
私は音楽を聞くことが好きで、様々な人が自分の好きなミュージシャンを勧めることができるサービスがあれば今まで知らなかった人たちの曲を聞くきっかけになると思い作成した。その際、曲だけでなくビジュアルもわかるとさらに興味が湧くと考え、それらを一つにまとめて投稿できるサービスにした。

# DEMO

# 工夫したポイント


# 開発環境


# 今後の課題

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

