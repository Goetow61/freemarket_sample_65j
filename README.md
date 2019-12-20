## usersテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|
|second_name|string|null: false|
|second_name_kana|string|null: false|
|first_name|string|null: false|
|first_name_kana|string|null: false|
|introduction|text|
|nickname|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|birthday|date|null: false|
|tellnumber|string|null: false, unique: true|
### Association
- has_many :addresses
- has_one :snsacount
- has_one :card
- has_many :evalutions
- has_many :items
- has_many :likes



## addressテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|postcode|string|null: false|
|prefecture_code|integer|null: false|
|city|string|null: false|
|street|string|null: false|
|building|string|
### Association
- belongs_to :user



## snsacountテーブル(device)
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|uid|string|null: false|
|provider|string|null: false|
### Association
- belongs_to :user



## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|
### Association
- belongs_to :user


## evalutionテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|threesteps|integer|null: false|
|evaluationcomment|text|
### Association
- belongs_to :user



## itemテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|buyer_id|integer|null: false, foreign_key: true|
|name|string|null: false, index: true|
|detail|text|null: false|
|status|integer|null: false|
|postage|boolean|null: false|
|postmethod|integer|null: false|
|streetadress|integer|null: false|
|days|integer|null: false|
|price|integer|null: false|
|size|string|
|brand|string|
|category_tree_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :likes
- has_many :images
- belongs_to :category_tree


## likeテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item


## imageテーブル
|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|
|image|string|null: false|
### Association
- belongs_to :item


## category_treeテーブル
|Column|Type|Options|
|------|----|-------|
|ancestor_id|integer|null: false| 
|descendent_id|integer|null: false| 
|depth|integer|null: false|
### Association
- belongs_to :category
- has_one :item


## categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, index: true| 
### Association
- has_many :category_trees




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
aaaaabbbbb