@ECHO OFF
SETLOCAL EnableExtensions
set EXE=FXServer.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF NOT %%x == %EXE% (
ECHO clearing server cache
FOR /F "tokens=*" %%g IN ('dir server_files\txData\*.base /b') do (
ECHO %%g
rmdir "server_files\txData\%%g\cache\files" /S /Q
mkdir "server_files\txData\%%g\cache\files"
)
pause
exit
)
ECHO DON'T RUN THIS WHILE THE SERVER IS RUNNING!!!
pause
