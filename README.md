# テーブル設計
## usersテーブル

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| nickname           | string | null:false               |
| email              | string | null:false, unique: true |
| encrypted_password | string | null:false               |
| age                | string |                          |

### Association
has_many :reviews


## productsテーブル
| Column                    | Type    | Options    |
| ------------------------- | ------- | ---------- |
| product_name              | string  | null:false |
| product_num               | string  | null:false |
| description               | text    | null:false |
| class_id                  | integer | null:false |
| category_id               | integer | null:false |
| cooking_method_id         | integer | null:false |
| company_id                | integer | null:false |

### Association
has_many :reviews


## reviewsテーブル
| Column             | Type       | Options                      |
| ------------------ | ---------- | ---------------------------- |
| title              | string     | Options                      |
| created_at         | date       | null:false                   |
| recommend_score_id | integer    | null:false                   |
| comment            | text       |                              |
| user_id            | references | null:false,foreign_key: true |
| product_id         | references | null:false,foreign_key: true |

### Association
belongs_to :user
belongs_to :product