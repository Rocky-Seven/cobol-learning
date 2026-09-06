# 00_03_conditions-and-loops

新人SE向けCOBOL入門 第3回「条件分岐と繰り返し（IF・PERFORM）」で使用するサンプルコードである。

対応記事: my-studies.org「新人SEのためのCOBOL入門 第3回」

## 事前準備

同じCodespaceを再開（Resume）しているだけであれば、GnuCOBOLは第1回でインストール済みのため作業は不要である。
新しくCodespaceを作成した場合、または`.devcontainer`の変更を反映するためにコンテナをリビルドした場合は、コンテナの中身自体が作り直されるため、以下を再実行する。

```bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y gnucobol4
```

## 実行方法

```bash
cd 00_03_conditions-and-loops
cobc -x -free conditions_and_loops.cob
./conditions_and_loops
```

金額を5回入力すると、合計を計算し、あらかじめ決めたしきい値（10000）を超えているかどうかを判定して表示する。

## このプログラムのポイント

| 項目 | 役割 |
|---|---|
| `PERFORM VARYING ... FROM ... BY ... UNTIL ...` | 変数を増やしながら、条件を満たすまで処理を繰り返す |
| `END-PERFORM` | PERFORM文の範囲を明示的に区切る |
| `IF ... ELSE ... END-IF` | 条件によって処理を分岐する |
| `VALUE 0` | 変数の宣言時に初期値を設定する |

## 次回の展望

ここまでの3回で、変数・入出力・分岐・繰り返しという基本要素が揃った。次のステップとして、既存の`01_bank-account-management/`（銀行口座管理の模擬プログラム）を読むと、これらの要素が実務的な処理としてどう組み合わさっているかが見えてくる。
