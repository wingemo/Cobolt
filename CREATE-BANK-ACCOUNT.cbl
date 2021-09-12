      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CREATE-BANK-ACCOUNT.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ACCOUNTS ASSIGN TO "ACCOUNTS.DAT"
           ORGANISATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD ACCOUNTS.
       01 ACCOUNT_DATA.
           02 ACCOUNT_ID  PIC 9(20).
           02 ACCOUNT_PNR PIC 9(20).
           02 ACCOUNT_SUM PIC 9(8).
       WORKING-STORAGE SECTION.
       01 WS_ACCOUNT_DATA.
           02 WS_ACCOUNT_ID  PIC 9(8).
           02 WS_ACCOUNT_SUM PIC 9(8).
       SCREEN SECTION.
       01  DATA-ENTRY-SCREEN.
           02  BLANK SCREEN FOREGROUND-COLOR 3.
           02  VALUE "CREATE-BANK-ACCOUNT"  LINE 02 COL 50.
           02  VALUE "F12 = CANCEL"  LINE 28 COL 2.
           02  VALUE "ENTER ACCOUNT NUMBER:" LINE 12 COL 2.
           02  INPUT-ID LINE 12 COL 25 UNDERLINE TO ACCOUNT_ID.
           02  VALUE "ENTER IDENTITY NUMBER:" LINE 16 COL 2.
           02  INPUT-PNR LINE 16 COL 25 UNDERLINE TO ACCOUNT_PNR.
       PROCEDURE DIVISION.
       CREATE-ACCOUNT.
           DISPLAY DATA-ENTRY-SCREEN.
           ACCEPT DATA-ENTRY-SCREEN.
           OPEN EXTEND ACCOUNTS.
               WRITE   ACCOUNT_DATA.
           CLOSE ACCOUNTS.
       STOP RUN.
       END PROGRAM CREATE-BANK-ACCOUNT.
