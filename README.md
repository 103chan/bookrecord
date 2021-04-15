## usersテーブル

| Column        | Type        | Options      |
| ------------- | ----------- | -------------|
| nickname      | string      | null: false  |
| email         | string      | null: false  |
| password      | string      | null: false  |

### Association

- has_many :bookrecords
- has_many :comments

## bookrecordsテーブル

| Column        | Type        | Options      |
| ------------- | ----------- | ------------ |
| author        | string      | null: false  |
| reading_date  | string      |              |
| genre_id      | integer     | null: false  |
| recommend_id  | integer     | null: false  |
| impression    | text        | null: false  |
| user          | references  | null: false  |

### Association

- belongs_to :user
- has_many :comments

## commentsテーブル

| Column        | Type        | Options      |
| ------------- | ----------- | ------------ |
| text          | text        | null: false  |
| user          | references  |              |
| bookrecord    | references  |              |

### Association

- belongs_to :user
- belongs_to :bookrecord