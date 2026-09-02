# 00_01_hello-cobol

新人SE向けCOBOL入門 第1回「COBOLに触れてみる（環境構築〜Hello, World!）」で使用するサンプルコードです。

対応記事: my-studies.org「新人SEのためのCOBOL入門 第1回」

## 実行方法（GitHub Codespaces）

1. このリポジトリを Codespaces で開く
   - `Code` ボタン → `Codespaces` タブ → `Create codespace on main`
   - `.devcontainer/devcontainer.json` に従って GnuCOBOL が自動インストールされます
2. ターミナルで以下を実行してコンパイル・実行します

```bash
cd 00_01_hello-cobol
cobc -x hello.cob
./hello
```

3. 以下のように表示されれば成功です

```
Hello, COBOL!
新人SEのためのCOBOL入門 第1回
```

## このプログラムのポイント

| DIVISION | 役割 |
|---|---|
| IDENTIFICATION DIVISION | プログラムの名前（PROGRAM-ID）や作者情報を書く場所 |
| PROCEDURE DIVISION | 実際の処理（DISPLAY, STOP RUN など）を書く場所 |

COBOLでは処理を「DIVISION（部）」という大きな単位で分けて書きます。今回はまず、この2つのDIVISIONだけを使い、最小構成でプログラムを動かします。

## 次回予告

第2回では `WORKING-STORAGE SECTION` と `PIC句` を使って、変数にデータを入れたり、キーボードからの入力を受け取ったりします。
