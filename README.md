# README

## アプリ名　(Application name)
Collecolle

![Top View](https://gyazo.com/cd7d99842a932eae24356d6e288ef9a2)


## 概要 (Discription)
①web上でコレクションをシェア＆管理ができる。<br>
②PC操作が苦手なシニア層をターゲットにしたSNSの入門アプリ。

## 使い方 (Usage)
加えたいコレクションの写真を投稿 → 投稿した写真がコレクションとしてマイページに溜まっていく。

## 本番環境URL (Application URL)
http://18.178.147.81:5000/

## 制作背景 (Why I make this)
目的：定年退職した父と同様のシニア世代の方に、SNSの楽しさを伝えたく作成しています。
<br><br>
理由：私の父や、父と同世代のシニア層の多くに「SNSをやってみたいが、複雑すぎてよく分からない」という声が多く、SNSの入門的な位置付けのアプリを作成しようと思いました。
<br><br>
意図：前職で「モノ」を収集されている方がシニア層に多くいるのを知り、SNSをはじめるキッカケに「コレクション」をコンセプトに置きました。

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


