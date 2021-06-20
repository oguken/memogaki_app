# アプリケーション名
メモ書きアプリ

# アプリケーション概要
自分の現在の思考や悩みを記入していき、思考を可視化してみるアプリ


# テスト用アカウント
eメール,2＠2
パスワード,222222

# 利用方法
思考や悩みを記入していくアプリで、タイトルの欄に思考を記入し、その横の欄に現在の年と日付を記述し、
下の内容欄の6つに思考の内容をそれぞれ記述していく利用方法です。
内容の欄6つ全てを記述する必要はなく、3つまで記述するのを目標にすれば良い。

# 目指した課題解決
現在の思考や悩みを記入していき、頭の中を整理させられる。


# 実装した機能についての画像やGIFおよびその説明
Gyazoで撮影した画像のURL
https://gyazo.com/80fc84adebbbace8ff051291d735bfbf

カウントダウンの機能を追加した、任意の数値を入力し、スタートの欄をクリックするとその数値からカウントダウンが始まる。
ストップを押せばカウントダウンが止まる。

# 実装予定の機能
メモ書きをするページに、マウスで簡単なイラストを描くことができる機能を実装したい。


# データベース設計
# userテーブル
name
e-male
password
### Association

- has_many :memogakis
- has_many :plans



# memogakiテーブル
year(年)
month(月)
day(日)
title(タイトル)
text(内容)
text2(内容2)
text3(内容3)
text4(内容4)
text5(内容5)
text6(内容6)
### Association

- belong_to :user
- belong_to :plan


# planテーブル
plan
### Association

- belong_to :user
- belong_to :memogaki
