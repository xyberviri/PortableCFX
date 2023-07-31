@ECHO OFF
set HEIDISQL_URL=https://www.heidisql.com/downloads/releases/HeidiSQL_12.5_64_Portable.zip
set HEIDISQL_FILENAME=HeidiSQL_12.5_64_Portable

if not exist %HEIDISQL_FILENAME% (
    echo Downloading HeidiSql...
    Powershell -command "$wc = New-Object net.webclient;$wc.Downloadfile('%HEIDISQL_URL%', '%HEIDISQL_FILENAME%.zip')"
    REM Powershell -command "$ProgressPreference = 'SilentlyContinue';wget '%HEIDISQL_URL%' -outfile '%HEIDISQL_FILENAME%.zip'"
    echo Installing HeidiSql..
    7za.exe x %HEIDISQL_FILENAME%.zip -o%HEIDISQL_FILENAME%
    del /s /q %HEIDISQL_FILENAME%.zip
)





