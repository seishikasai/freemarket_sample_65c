# DB設計
<img width="1032" alt="メルカリ DB設計図" src="https://user-images.githubusercontent.com/57927432/72511472-95535780-388e-11ea-9f25-9c0f2899b284.png">

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|last_name|string|null: false|
|first_name|string|null: false|
|last_name_kana|string|null: false|
|first_name_kana|string|null: false|
|nickname|string|null: false, unique: true|
|email|string|null: false, unique: true, default: ""|
|gender|integer||
|birthday|date|null: false|
|phone_authy|string|null: false, unique: true, limit: 11|
|introduction|text||
|icon_image|string||
|encrypted_password|string|null: false, default: ""|
|reset_password_token|string||
|reset_password_sent_at|datetime||
|remember_created_at|datetime||

#### Association
- has_one :address, dependent: :destroy
- has_one :card, dependent: :destroy
- has_many :sns_credentials
- has_many :comments
- has_many :favorites
- has_many :favorite_items  through: :favorites, source: :item
- has_many :buyed_items, foreign_key: "buyer_id", class_name: "Item"
- has_many :selling_items, -> { where("buyer_id is NULL") }, foreign_key: "seller_id", class_name: "Item"
- has_many :sold_items, -> { where("buyer_id is not NULL") }, foreign_key: "seller_id", class_name: "Item"

## addressesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|zipcode|string|null: false|
|prefecture_id|integer|null: false|
|city|string|null: false|
|block|string|null: false|
|building|string||
|phone|string||

#### Association
- belongs_to :user
- belongs_to_active_hash :prefecture


## cardsテーブル(gem 'payjp'を使用)
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|customer_id|string|null: false|
|card_id|string|null: false|

#### Association
- belongs_to :user

## sns_credentialsテーブル
|Column|Type|Options|
|------|----|-------|
|provider|string||
|uid|string||
|user_id|references|foreign_key: true|

#### Association
- belongs_to :user

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true, index:true|
|text|string|null: false|
|price|integer|null: false|
|category_id|references|null: false, foreign_key: true|
|condition_id|integer|null: false|
|postage_id|integer|null: false|
|prefecture_id|integer|null: false|
|shipping_day_id|integer|null: false|
|image_id|references|null: false, foreign_key: true|
|buyer_id|integer| foreign_key: true|
|seller_id|integer| foreign_key: true|

#### Association
- belongs_to_active_hash :condition
- belongs_to_active_hash :postage
- belongs_to_active_hash :prefecture
- belongs_to_active_hash :shipping_day
- has_many :images
- has_many :comment
- has_many :favorites, foreign_key: 'User_id', dependent: :destroy
- has_many :users, through: :favorites
- belongs_to :buyer, class_name: "User"
- belongs_to :seller, class_name: "User"

## favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

#### Association
- belongs_to :user
- belongs_to :item


## categoriesテーブル(gem 'ancestry'を使用)
|Column|Type|Options|
|------|----|-------|
|name|references|null: false, foreign_key: true|
|ancestry|string||

#### Association
- has_many :items
- has_ancestry


## conditionsテーブル(gem 'active_hash'を使用)
|Column|Type|Options|
|------|----|-------|
|condition|string|null: false|


## postagesテーブル(gem 'active_hash'を使用)
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


## prefecturesテーブル(gem 'active_hash'を使用)
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


## shipping_daysテーブル(gem 'active_hash'を使用)
|Column|Type|Options|
|------|----|-------|
|day|string|null: false|


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|src|string|null: false|
|item_id|references|null: false, foreign_key: true|

#### Association
- belongs_to :item


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|string|null: false|
|user_id|references|null: false, foreign_key: true|
|item_id|references|null: false, foreign_key: true|

#### Association
- belongs_to :user
- belongs_to :item

TECK::CAMPのSlackアカウントが解除されてしまいました(泣
今後ともチームメンバーのみなさんと連絡を取れる状況をつくるため、
ご協力お願いいたします！