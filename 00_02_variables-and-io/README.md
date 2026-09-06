# 00_02_variables-and-io

新人SE向けCOBOL入門 第2回「変数とデータの型（PIC句・ACCEPT）」で使用するサンプルコードである。

対応記事: my-studies.org「新人SEのためのCOBOL入門 第2回」

## 事前準備

同じCodespaceを再開（Resume）している場合、GnuCOBOLは第1回でインストール済みのため作業は不要である。
新しくCodespaceを作成した場合のみ、以下を実行する。

```bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y gnucobol4
```

## 実行方法

```bash
cd 00_02_variables-and-io
cobc -x -free variables.cob
./variables
```

名前と数値を2つ入力すると、合計値を表示する。

## このプログラムのポイント

| 項目 | 役割 |
|---|---|
| WORKING-STORAGE SECTION | 変数（プログラム内で使うデータ）を宣言する場所 |
| PIC X(20) | 半角20文字までの文字列を格納できる領域 |
| PIC 9(3) | 0〜999までの数値を格納できる領域 |
| ACCEPT | キーボードからの入力を変数に格納する |
| ADD ... TO ... GIVING ... | 2つの数値を足し、結果を別の変数に格納する |

## 次回予告

第3回では、IF文による条件分岐と、PERFORMによる繰り返し処理を扱う。