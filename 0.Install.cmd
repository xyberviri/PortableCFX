@ECHO OFF
if exist "server_files\txData\admins.json" (
echo.
echo.
echo.
echo             Already configured, 
echo      running this again just breaks shit.
echo.
echo.
PAUSE
exit
) else (
@CALL 9.Download7Zip
@CALL 9.DownloadHeidiSQL
@CALL 9.DownloadMariaDB
@CALL 9.DownloadUpdateServerFiles
echo.
echo.
echo                 ATTENTION, We are ready to start your database, 
echo         On the first run windows may prompt you to add firewall rules
echo.          
echo.
echo.
pause
@CALL 1.StartDatabase
cls
echo.
echo.
echo.
echo      We are waiting for you to accept that prompt before continuing install.
echo        Your database will not start until you accept the firewall rules.
echo             YOUR DATABASE MUST BE STARTED TO INSTALL MOST FRAMEWORKS!!
echo.
echo.
echo.
pause
cls
echo.
echo.
echo.
echo                 ATTENTION, We are ready to start the Server, 
echo         On the first run windows may prompt you to add firewall rules
echo.
echo         Make sure to accept these rules QUICKLY or FiveM will Crash!!!
echo.
echo                         Press Any key to Continue
echo.
echo.
echo.
pause
start "" "server_files/server/FXServer.exe"
cls
echo.
echo.
echo.
echo         Server install complete, use the wizard to complete your framework install.
echo.
echo           
echo.
echo.
echo.
pause
)
