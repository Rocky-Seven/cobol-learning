      *> ============================================
      *> 00_02_variables-and-io
      *> 変数とデータの型（PIC句・ACCEPT）
      *> ============================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. VARIABLES-AND-IO.
       AUTHOR. Rocky-Seven.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *>     名前を格納する領域（半角20文字まで）
       01 WS-NAME        PIC X(20).
      *>     入力された数値を格納する領域（0〜999）
       01 WS-NUM1        PIC 9(3).
       01 WS-NUM2        PIC 9(3).
      *>     2つの数値の合計を格納する領域（桁あふれを避けるため1桁多くとる）
       01 WS-TOTAL       PIC 9(4).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *>     名前の入力と挨拶の表示
           DISPLAY "名前を入力してください：".
           ACCEPT WS-NAME.
           DISPLAY "こんにちは、" WS-NAME " さん。".

      *>     計算に使う2つの数値を入力してもらう
           DISPLAY "1つ目の数値（3桁まで）を入力してください：".
           ACCEPT WS-NUM1.
           DISPLAY "2つ目の数値（3桁まで）を入力してください：".
           ACCEPT WS-NUM2.

      *>     合計を計算し、結果を表示する
           ADD WS-NUM1 TO WS-NUM2 GIVING WS-TOTAL.
           DISPLAY "合計は " WS-TOTAL " である。".

           STOP RUN.