@ECHO OFF
SETLOCAL EnableExtensions
set EXE=FXServer.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF NOT %%x == %EXE% (
ECHO Shutting down database
"mariadb-11.4.2-winx64\bin\mysqladmin.exe" -u root shutdown
GOTO END
)
ECHO DON'T RUN THIS WHILE THE FIVEM SERVER IS RUNNING!!!
PAUSE
:END
