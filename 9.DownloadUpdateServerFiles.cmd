@ECHO OFF




SETLOCAL EnableExtensions
set EXE=FXServer.exe
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq %EXE%"') DO IF NOT %%x == %EXE% (

if not exist server_files mkdir server_files
pushd server_files
if exist server rmdir /s /q server
echo  Downloading FiveM FX Server
Powershell -command "$baseurl = 'https://runtime.fivem.net/artifacts/fivem/build_server_windows/master';$link = (Invoke-WebRequest -Uri $baseurl | Select-Object -ExpandProperty links )[3];$download = $baseurl+($link.href).TrimStart('.');$wc = New-Object net.webclient;$wc.Downloadfile($download, 'server.7z')"
echo  Installing FiveM FX Server
..\7zr.exe x server.7z -oserver
del /s /q server.7z
popd


GOTO END
)
ECHO DON'T RUN THIS WHILE THE FIVEM SERVER IS RUNNING!!!
PAUSE
:END
