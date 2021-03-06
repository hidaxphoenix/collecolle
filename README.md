# README

## アプリ名　(Application name)
### Collecolle
 
![トップ画面](https://i.gyazo.com/cd7d99842a932eae24356d6e288ef9a2.jpg)

![コレクション詳細](https://i.gyazo.com/e18730ff55dc8ca8dc928bd0566514da.jpg)

![マイページ](https://i.gyazo.com/9b340e0c4d4b3afcf8bc1256ea44c9f0.jpg)

## 概要 (Discription)
web上でコレクションを自慢(シェア)＆管理ができる。<br>

## 使い方 (Usage)
加えたいコレクションの写真を投稿 → 投稿した写真がコレクションとしてマイページに溜まっていく。

## 本番環境URL (Application URL)
https://www.collecolle.tech/

## 制作背景 (Why I make this)
目的：いつでも自慢のコレクションを眺めることができるアプリ
<br><br>
理由：コレクター仲間から自慢のコレクションを眺められるアプリが欲しいと要望があったため
<br><br>
意図：投稿することによって自慢のコレクションをシェアでき、マイページでコレクションを管理する。

## 工夫したポイント
いいね機能, タグ機能, タグ検索機能 の実装

## 使用技術(開発環境)
Ruby, Ruby on Rails, Haml, SCSS, Javascript, Jquery, Mysql, Github

## 課題や今後実装したい機能
My Shelf（コレクション棚）機能, 機能説明ページ の実装

## DB設計
## userテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|name|string|null: false|
|password|string|null: false|
### Association
- has_many :posts
- has_many  :comments
- has_many :likes
- has_many :liked_posts


## postテーブル
|Column|Type|Options|
|------|----|-------|
|text|string||
|image|string||
|user_id|integer||
|likes_count|integer||
### Association
- belongs_to :user
- has_many :comments
- has_many :likes
- has_many :posttags
- has_many :tags


## commentテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|bigint|null: false, foreign_key: true|
|post_id|bigint|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :post


## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|name||
### Association
- has_many :posttags
- has_many :post


## posttagsテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|bigint||
|tag_id|bigint||
### Association
- belongs_to :post
- belongs_to :tag