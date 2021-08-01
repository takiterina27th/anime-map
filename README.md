# Anime Map

![readme-top](https://user-images.githubusercontent.com/52768993/76416647-ce1b3300-63de-11ea-8d44-512156f7e1aa.jpg)

# Introduction
Anime Mapはユーザーが好きなアニメの舞台となった聖地を投稿できるサイトです。黒を基調としたデザインで聖地の写真が綺麗に見えるようにしています。また、投稿詳細ページでは登録された聖地の場所がすぐにわかるようにGoogle Maps APIを用いて地図を表示されます。他にも投稿へコメントしたり、投稿をお気に入りに登録することもできます。

## URL
http://54.95.185.15/

## Test Account
- メールアドレス: test-samurai@test.com
- パスワード: 222222

## Purpose
- 自分が旅した聖地の写真を投稿する
- 他のユーザーが投稿した聖地を閲覧してその場所に行ってみたいと興味を持つ
- 投稿にコメントしてユーザー同士の交流の場とする

## Environment
- Ruby 2.5.1
- Ruby on Rails 5.2.3
- MySQL 5.6.51
- Github
- AWS(EC2,S3)
- jQuery
- bootstrap
- Visual Studio Code

# Function
- User認証機能
  - 新規登録
  - ログイン
- 投稿一覧表示
- 投稿機能
  - 新規作成(画像アップロード)
  - 編集
  - 削除
- 投稿検索機能
- お気に入り機能(ajax)
- コメント機能(ajax)
- Googleマップ表示機能(Google Maps API)

# Demo
## トップページ
![anime_map_top](https://user-images.githubusercontent.com/52768993/127767581-f0c5149f-b370-40d6-ae37-3cd24ce002e7.jpeg)
ヘッダーには投稿一覧、ログイン、新規登録のリンク及び検索フォームがあり、トップの聖地画像がスライドで表示される。スライドの下には投稿がランダムにされ、投稿のカードを押下すれば投稿詳細ページへ遷移する。

## サインアップ
<img width="1233" alt="anime_map_signup" src="https://user-images.githubusercontent.com/52768993/127767684-793c26e9-6f6d-4001-acab-236b19b79e87.png">
必要事項を記入し、新規登録が可能である。

## ログイン
<img width="1229" alt="anime_map_login" src="https://user-images.githubusercontent.com/52768993/127767698-ad9c8aa6-f97c-4864-82c8-c5ed5c647bb0.png">
登録したユーザーがログインできる。

## 投稿機能
![anime_map_post_create](https://user-images.githubusercontent.com/52768993/127768063-62164006-b1f0-4196-a0b8-ab5ff8634437.gif)
<br>
新規投稿に際して、聖地の名前、画像、地名、アニメ作品タイトル、説明について記述する。地名を入力することでGoogle Mapで該当する地名を呼び出す。

## コメント機能
![anime_map_comment](https://user-images.githubusercontent.com/52768993/127768004-c6003c3f-ee2a-42cb-8c9f-876edc807def.gif)
<br>
自分や他人の投稿に対して気軽にコメントすることができる。コメントの処理に関しては非同期通信を用いた。

## お気に入り機能
![anime_map_favorit](https://user-images.githubusercontent.com/52768993/127768166-0549b7d1-ba10-481e-a2b4-c9e8157e25c3.gif)
<br>
ユーザーが気に入った投稿をお気に入りに登録することができる。お気に入りにした投稿はマイページから一覧で確認できる。

## Googleマップ表示機能
<img width="1230" alt="anime_map_googlemap_api_show" src="https://user-images.githubusercontent.com/52768993/127767781-0c4de855-6c1c-4291-9942-b0a0b7d20519.png">
投稿の詳細ページに聖地の地図が表示される。ユーザーが聖地付近の地理を簡単に確認できる。

# Assignment
- マイページの作成が不十分である(アイコンやプロフィール編集など)。
- 検索機能で複数ワードで検索できるようにする。

# License
[MIT](https://github.com/takiterina27th/anime-map/blob/add-license-1/LICENSE)

# Author
[Github](https://github.com/takiterina27th/anime-map)