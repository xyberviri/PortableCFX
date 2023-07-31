@ECHO OFF
FOR /F "tokens=*" %%g IN ('dir server_files\txData\QBCore* /b') do (SET directoryName=%%g)
SETLOCAL EnableExtensions
set EXE=FXServer.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF NOT %%x == %EXE% (
ECHO clearing server cache
rmdir server_files\txData\%directoryName%\cache\files /S /Q
mkdir server_files\txData\%directoryName%\cache\files
pause
exit
)
ECHO DON'T RUN THIS WHILE THE SERVER IS RUNNING!!!
PAUSE





