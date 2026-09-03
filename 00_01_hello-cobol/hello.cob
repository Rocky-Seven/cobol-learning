      *> ============================================
      *> 00_01_hello-cobol
      *> はじめてのCOBOLプログラム
      *> ============================================
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-COBOL.
       AUTHOR. Rocky-Seven.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *>     画面に固定の文字列を表示するだけの処理
           DISPLAY "Hello, COBOL!".
           DISPLAY "新人SEのためのCOBOL入門 第1回".
           STOP RUN.
