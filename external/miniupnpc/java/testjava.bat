@echo off
set JAVA=java
set JAVAC=javac
REM notice the semicolon for Windows.  Write once, run ... oh nevermind
set CP=miniupnpc_win32.jar;.

%JAVAC% -cp "%CP%" JavaBrifoxeTest.java || exit 1
%JAVA% -cp "%CP%" JavaBrifoxeTest 12345 UDP || exit 1
