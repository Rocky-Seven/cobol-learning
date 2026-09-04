# cobol-learning

COBOL学習の一環として作成した実践的なプログラム集。

my-studies.org のCOBOL関連記事に対応するソースコードを、記事ごとにディレクトリを分けて管理する。

## ディレクトリ構成

```
cobol-learning/
├── 00_01_hello-cobol/            ← 第1回
|    ├── README.md（概要・コンパイル方法など）
|    └── hello.cob
├── 00_02_variables-and-io/       ← 第2回
├── 00_03_conditions-and-loops/   ← 第3回
└── 01_bank-account-management/   ← 既存
    ├── README.md（概要・コンパイル方法など）
    ├── bank_account.cob
    └── accounts.csv（サンプル入力）
```

| ディレクトリ | 内容 | 対応記事 |
| --- | --- | --- |
| `00_01_hello-cobol/` | COBOLに触れてみる（環境構築〜Hello, World!） | [新人SEのためのCOBOL入門 第1回](https://my-studies.org/introduction-to-cobol-for-new-system-engineers-1/) |
| `00_02_variables-and-io/` | 変数とデータの型（PIC句・ACCEPT） | 新人SEのためのCOBOL入門 第2回 |
| `00_03_conditions-and-loops/` | 条件分岐と繰り返し（IF・PERFORM） | 新人SEのためのCOBOL入門 第3回 |
| `01_bank-account-management/` | 銀行口座管理の模擬プログラム（残高抽出処理） | [COBOLでつくる「銀行口座管理の模擬プログラム」](https://my-studies.org/a-bank-account-management-simulation-program-created-using-cobol/) |

## 実行環境

- [GnuCOBOL](https://sourceforge.net/projects/gnucobol/) 4.0系
- GitHub Codespacesで開くと、`.devcontainer/devcontainer.json`によりOSと拡張機能が用意される。GnuCOBOL自体は自動インストールにせず、各ディレクトリのREADME.mdに記載のコマンドで手動インストールする方式にしている。
- 各プログラムの詳細な実行方法は、それぞれのディレクトリ内のREADME.mdを参照。

## 関連リンク

- Blog: [my-studies.org](https://my-studies.org)
- Profile: [Rocky-Seven](https://github.com/Rocky-Seven)
