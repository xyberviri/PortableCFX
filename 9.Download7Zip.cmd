@ECHO OFF
set Zip_URL=https://www.7-zip.org/a/7zr.exe
set Zip_FILENAME=7zr.exe

if not exist %Zip_FILENAME% (
    echo Downloading 7zip...
    REM Powershell -command "$wc = New-Object net.webclient;$wc.Downloadfile('%Zip_URL%', '7zr.exe')"
    curl %Zip_URL% --output %Zip_FILENAME%
    echo Done...
)