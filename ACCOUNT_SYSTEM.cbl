      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. HelloWorld.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT ACCOUNTS ASSIGN TO "ACCOUNTS.DAT"
           ORGANISATION IS LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD ACCOUNTS.
       01 ACCOUNT_DATA.
           02 ACCOUNT_ID  PIC 9(8).
           02 ACCOUNT_SUM PIC 9(8).
       WORKING-STORAGE SECTION.
        01 WS_ACCOUNT_DATA.
           02 WS_ACCOUNT_ID  PIC 9(8).
           02 WS_ACCOUNT_SUM PIC 9(8).
       PROCEDURE DIVISION.
       CREATE-ACCOUNT.
           OPEN EXTEND ACCOUNTS.
               DISPLAY "ACCOUNT_ID".
               ACCEPT  ACCOUNT_ID.
               WRITE   ACCOUNT_DATA.
           CLOSE ACCOUNTS.
       STOP RUN.
       END PROGRAM HelloWorld.
