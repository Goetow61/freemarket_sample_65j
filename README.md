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
|tellnumber|integer|null: false|
### Association
- has_one :address
- has_one :snsacount
- has_one :cards
- has_many :evalution
- has_many :item
- has_many :like



## addressテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|postcode|integer|null: false|
|prefecture_code|integer|null: false|
|address_city|string|null: false|
|address_street|string|null: false|
|address_building|string|
### Association
- has_one :user



## snsacountテーブル(device)
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|uid|integer|null: false|
|provider|string|null: false|
### Association
- has_one :user



## cardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|
### Association
- has_one :user


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
|status|string|null: false|
|postage|boolean|null: false|
|postmethod|integer|null: false|
|streetadress|integer|null: false, foreign_key: true|
|days|integer|null: false|
|price|integer|null: false|
|size|string|
|brand|string|
|category_tree_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :like
- has_many :image
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
|image|string|null: false, foreign_key: true|
### Association
- belongs_to :item


## category_treeテーブル
|Column|Type|Options|
|------|----|-------|
|ancestor_id|integer|null: false| 
|descendent_id|integer|null: false| 
|depth|integer|
### Association
- belongs_to :category

## categoryテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, foreign_key: true, index: true| 
### Association
- has_many :category_tree




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