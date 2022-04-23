# テーブル設計

## users テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| name               | string  | null: false |
| prefecture_id      | integer | null: false |
| encrypted_password | string  | null: false |

### Association

- has_many :videos
- has_many :videos, through: :favorites
- has_many :comments

## videos テーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| title              | string  | null: false |
| explanation        | text    | null: false |
| prefecture_id      | integer | null: false |
| address            | string  |             |
| category_id        | integer | null: false |

### Association

- belongs_to :users
- has_many :users, through: :favorites
- has_many :comments

## favorites テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| user_id  | references | null: false, foreign_key: true |
| video_id | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :video

## comments テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | string     | null: false                    |
| user    | references | null: false, foreign_key: true |
| video   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :video