# README

## Application name
Collecolle

## Discription
webでコレクションを自慢＆管理できる

## Usage
加えたいコレクションの写真を投稿→投稿した写真がコレクションとしてマイページに溜まっていく。

## 構築やインストール方法
追って記述

## ライセンス
追って記述



## userテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|name|string|null: false|
|password|string|null: false|
### Association
- has_many :posts
- has_many  :comments

## postテーブル
|Column|Type|Options|
|------|----|-------|
|name|text||
|text|text||
|image|text||
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments

## commentテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post

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
