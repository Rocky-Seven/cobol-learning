      *> ============================================
      *> 00_03_conditions-and-loops
      *> 条件分岐と繰り返し（IF・PERFORM）
      *> ============================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITIONS-AND-LOOPS.
       AUTHOR. Rocky-Seven.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *>     繰り返し回数を数えるカウンタ（0で初期化）
       01 WS-COUNT        PIC 9(2)  VALUE 0.
      *>     1回ごとに入力される金額
       01 WS-INPUT        PIC 9(5).
      *>     5回分の合計金額（0で初期化）
       01 WS-TOTAL        PIC 9(6) VALUE 0.
      *>     判定に使うしきい値
       01 WS-THRESHOLD    PIC 9(6) VALUE 10000.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "5回、入力を受け付けて合計を計算する。".

      *>     WS-COUNTを1から5まで1ずつ増やしながら入力・加算を繰り返す
           PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > 5
               DISPLAY WS-COUNT "回目の金額を入力してください："
               ACCEPT WS-INPUT
               ADD WS-INPUT TO WS-TOTAL
           END-PERFORM.

           DISPLAY "合計金額は " WS-TOTAL " である。".

      *>     合計がしきい値を超えているかどうかを判定する
           IF WS-TOTAL > WS-THRESHOLD
               DISPLAY "しきい値（" WS-THRESHOLD "）を超えている。"
           ELSE
               DISPLAY "しきい値（" WS-THRESHOLD "）以内である。"
           END-IF.

           STOP RUN.
