# DB設計

## blogsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null:false|
|text|text|  |
|image|text|  |
|user_id|intefer|null:false, foreign_key:true|

### Association
- belongs_to :user
- has_many :comments


## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|email|string|null:false, unique:true|
|password|string|null:false|

### Association
- has_many :blogs
- has_many :comments


## commentsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|null:false|
|blog_id|string|null:false|
|user_id|string|null:false|

### Association
- belongs_to :users
- belongs_to :blogs
