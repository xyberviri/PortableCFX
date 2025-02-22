@ECHO OFF
if exist "server_files\txData\admins.json" (
echo.
echo.
echo.
echo             Already configured, 
echo      running this again just breaks things.
echo.
echo      use 1.StartDatabase, 2. StartFiveM & 3.Open_txAdmin
echo.
echo         when ready to connect us 4.ConnectToFiveM 
echo       or just launch FiveM and find your LAN Server.
echo.
echo.
PAUSE
exit
) else (
@CALL 9.DownloadHeidiSQL
@CALL 9.DownloadMariaDB
@CALL 9.Download7Zip
@CALL 9.DownloadUpdateServerFiles
@CALL 1.StartDatabase
@CALL 2.StartFiveM
echo.
echo.
echo.
echo         All Done, use the TX Admin Setup wizard to complete your framework install.
echo.
echo         To Shutdown Portable CFX:
echo         Launch TX Admin with "3.Open_txAdmin", then choose shutdown your cfx server
echo         Shutdown your MySQL databse with "5.Shutdown_Database"  
echo.
echo.
echo.
pause
)
