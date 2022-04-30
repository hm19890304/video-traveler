# アプリケーション名
旅行はええぞお

# アプリケーション概要
旅行先で撮影した動画を投稿することができる。
投稿された動画は都道府県やカテゴリで検索でき、
旅行先を決める際の参考にしたり、旅行気分を味わうことができる。

# URL
https://video-traveler.herokuapp.com/

# テスト用アカウント
- Basic認証ID：admin
- Basic認証パスワード：0304
- ニックネーム：ウド
- パスワード：suzuki

# 利用方法
## 動画投稿
1. トップページ（一覧ページ）のヘッダーからユーザー新規登録を行う
1. 「投稿する」ボタンから、動画の情報（タイトル・説明・都道府県・その他住所・カテゴリ・動画）を入力し投稿する

## 動画視聴
1. トップページの動画一覧から気になる動画を視聴する
1. 視聴したい動画の都道府県やカテゴリがあれば検索機能を利用する
1. 気になる動画があればお気に入り機能やコメント機能を利用する

# アプリケーションを作成した背景
旅行好きの妻にヒアリングし、「旅行先を検討する際に映像情報があると良い判断材料になる」という話を聞いた。観光地側で映像を用意している場合はあるが、旅行者が撮影する映像の方がより実体験に近いと考え、動画投稿型のSNSアプリケーションを作成した。

# 洗い出した要件
[要件を定義したシート](https://docs.google.com/spreadsheets/d/1IDhOHbDoQL_TVnLIxt-1yRnoRzxlKp6xbqErpevKTNo/edit?usp=sharing)

# 実装した機能についての画像および説明
- 動画投稿画面で動画の情報を入力し投稿する
[![Image from Gyazo](https://i.gyazo.com/d8537e222614734eb593e2dec2281c45.png)](https://gyazo.com/d8537e222614734eb593e2dec2281c45)

- トップページの動画一覧から気になる動画を視聴する
[![Image from Gyazo](https://i.gyazo.com/1a42b9d28abd51cca4e80644b64be4d5.jpg)](https://gyazo.com/1a42b9d28abd51cca4e80644b64be4d5)

# 実装予定の機能
検索機能、コメント機能、お気に入り機能を実装予定。

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/045eb1a534d67cf3e419b1be8a91fb8b.png)](https://gyazo.com/045eb1a534d67cf3e419b1be8a91fb8b)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/4dc1bcc67961a8d7a7ecdad1b2bfce4d.png)](https://gyazo.com/4dc1bcc67961a8d7a7ecdad1b2bfce4d)

# 開発環境
- フロントエンド
- バックエンド
- インフラ
- テスト
- テキストエディタ
- タスク管理

# ローカルでの動作方法
以下のコマンドを順に実行。
% git clone https://github.com/hm19890304/video-traveler
% cd video-traveler
% bundle install
% yarn install

# 工夫したポイント
ユーザー新規登録およびログイン時にメールアドレスを入力させないようにしたことです。
ユーザーが行う入力内容をシンプルなものにして、気軽に投稿できるアプリを目指しました。