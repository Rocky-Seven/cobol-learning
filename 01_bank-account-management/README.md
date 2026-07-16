# COBOLでつくる「銀行口座管理の模擬プログラム」

## 概要

顧客の口座番号・氏名・残高を含むCSVファイル（`accounts.csv`）を読み取り、残高が10,000円未満の顧客を抽出して、別ファイル（`low_balance.csv`）に出力する、実務でもよくある基本的なCOBOLプログラムである。

`UNSTRING`でCSVの各フィールドを分割し、`FUNCTION NUMVAL`で残高（文字列）を数値に変換したうえで条件判定を行う、COBOLでのファイル処理の基本パターンを押さえた内容になっている。

## ファイル構成

| ファイル名 | 内容 |
| --- | --- |
| `bank_account.cob` | プログラム本体（PROGRAM-ID: BANK-ACCOUNT-FILTER） |
| `accounts.csv` | サンプル入力データ（口座番号,氏名,残高） |
| `low_balance.csv` | 実行後に生成される出力ファイル（残高10,000円未満の顧客一覧） |

## 実行環境

- [GnuCOBOL](https://sourceforge.net/projects/gnucobol/) 4.0系（自由形式／Free Format）
- 元記事ではReplit上のGnuCOBOL 3.1.2で動作確認されている。

## cobcのインストール

`cobc`はGnuCOBOLに含まれるコンパイラである。OSごとに以下の方法でインストールできる。

### Ubuntu / Debian

```bash
sudo apt update
sudo apt upgrade -y
sudo apt install gnucobol4
```

`gnucobol4`が見つからない場合は、ディストリビューションによっては`gnucobol`パッケージ名の場合がある。

```bash
sudo apt install gnucobol
```

### macOS（Homebrew）

```bash
brew install gnu-cobol
```

### Windows（MSYS2）

Windowsでは、MSYS2経由でのインストールが定番である。詳細な手順は以下の記事を参照。

- [GnuCOBOL + VSCode でCOBOL学習環境を構築しよう！](https://my-studies.org/gnucobol-vscode/)

### インストール確認

```bash
cobc -v
```

バージョン情報が表示されればインストール完了である。

## コンパイルと実行

```bash
cobc -x -free bank_account.cob -o bank_account
./bank_account
```

## 実行結果

```
$ cat low_balance.csv
1002      ,佐藤花子        ,008000
1004      ,田中美咲        ,003000
```

入力データ4件のうち、残高が10,000円未満の2件（佐藤花子・田中美咲）が正しく抽出されている。

## 処理の流れ

| 項目 | 内容 |
| --- | --- |
| UNSTRING | カンマ区切りCSVのフィールドを分割 |
| FUNCTION NUMVAL | 残高（文字列）を数値に変換 |
| IF WS-BALANCE < 10000 | 閾値条件で抽出 |
| STRING … INTO | 出力行の組み立て |

## 計算量

- 入力ファイルの行数を N とすると、全行を1回だけ走査するため時間計算量は O(N) である。
- 追加のメモリ使用量は定数（1レコード分の作業領域）のみであり、空間計算量は O(1) である。

## 検証環境メモ（元記事との差分）

元記事のコードでは`OUTPUT-RECORD`の明示的な初期化を行っていないが、こちらの検証環境（Ubuntu 24.04 + GnuCOBOL 4.0）では、初期化されていない領域に起因する書き込みエラー（file status 71）が発生したため、`WRITE-LINE`パラグラフの先頭に`MOVE SPACES TO OUTPUT-RECORD`を追加している。それ以外のロジック・変数名・ファイル名・仕様・実行結果は元記事と一致する。

## 参考

- 元記事：[COBOLでつくる「銀行口座管理の模擬プログラム」](https://my-studies.org/a-bank-account-management-simulation-program-created-using-cobol/)
