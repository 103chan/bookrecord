## アプリケーション名
  BookRecord
  
## 概要
1 画像の投稿と紹介文の投稿<br>
2 コメントの投稿<br>
3 ユーザー情報の登録・編集・削除<br>
4 投稿した情報の編集・削除<br>
  
## 制作背景
  ### 制作意図
  webアプリケーションの作成の基礎固めとして作成
  
  ### ペルソナ
  ３０代男性　職業は問わず、残業もあり忙しくしている。<br>将来、管理職になることを志しており、これまで流し読みをしていた本の履歴を管理したいと考えている。<br>
  また、他の人がどのような本を読んでいるかを知り、新たな読書の参考にしたいと考えている。
  
  ### ユーザーの課題
  時間の確保に苦労しているため、なるべく簡単に管理ができるようにしたい。<br>
  他の人がどのような本を読んでいるかを知り、新たな知識を吸収したい。
  
## 課題解決
なるべくシンプルな機能で、多くの方の読書履歴を知ることが出来るようにする。<br>
ユーザーページへ遷移できる機能を有する。<br>
読んだ本のオススメ度を知ることが出来る。<br>
写真を投稿する機能を有することにより、本の表紙でどの本なのか、わかるようにする。
    
## 必要機能
ユーザー管理機能<br>
画像投稿機能<br>
コメント機能<br>
検索機能
 
## DB設計
    
### usersテーブル

| Column        | Type        | Options                       |
| ------------- | ----------- | ----------------------------- |
| nickname      | string      | null: false                   |
| email         | string      | null: false                   |
| password      | string      | null: false                   |

#### Association

- has_many :bookrecorders
- has_many :comments

### bookrecordersテーブル

| Column        | Type        | Options                       |
| ------------- | ----------- | ----------------------------- |
| author        | string      | null: false                   |
| reading_date  | string      |                               |
| genre_id      | integer     | null: false                   |
| recommend_id  | integer     | null: false                   |
| impression    | text        | null: false                   |
| user          | references  | null: false foreign_key: true |

#### Association

- belongs_to :user
- has_many :comments

### commentsテーブル

| Column        | Type        | Options                       |
| ------------- | ----------- | ----------------------------- |
| text          | text        | null: false                   |
| user          | references  |                               |
| bookrecorder  | references  |                               |

#### Association

- belongs_to :user
- belongs_to :bookrecorder
